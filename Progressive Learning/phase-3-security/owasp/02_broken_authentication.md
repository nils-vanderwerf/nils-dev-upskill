# OWASP A07:2021 — Broken Authentication

Status: [ ] studied  [ ] lab completed  [ ] can explain without notes

---

## 1. How does this attack work?

Authentication is broken when an attacker can:
- **Credential stuffing** — try username/password pairs leaked from other breaches (automated)
- **Brute force** — try many passwords against one account (no lockout = no defence)
- **Session hijacking** — steal a session token (via XSS, network sniffing, predictable tokens)
- **Session fixation** — force a victim to use a known session ID before they log in
- **Credential exposure** — plaintext passwords in logs, URLs, or weak hashing (MD5, SHA1 without salt)

The common thread: the app can't reliably tell who it's talking to.

**Credential stuffing flow:**
```
Attacker has 10M email:password combos from a previous breach
→ Runs automated tool (Hydra, Burp Intruder) against your login endpoint
→ 2–3% reuse rate = thousands of valid accounts compromised
→ No rate limiting = undetected
```

---

## 2. Where could this appear in a Rails/SaaS app?

| Vulnerability | Location in Rails app |
|--------------|----------------------|
| No rate limiting on login | `SessionsController#create` |
| Weak password hashing | User model, `has_secure_password` misconfiguration or rolling your own |
| Session token in URL | `config.session_store` misconfiguration, redirect with token in params |
| No session rotation on login | Missing `reset_session` before setting user_id |
| "Remember me" token stored plaintext | User model, persistent token columns |
| Password reset token not expiring | PasswordResetsController — token valid indefinitely |
| Insufficient logout | Session not invalidated server-side on logout |

---

## 3. How does Rails protect against this by default?

**`has_secure_password`** — uses bcrypt with automatic salting:
```ruby
class User < ApplicationRecord
  has_secure_password  # stores password_digest, gives .authenticate method
end
# bcrypt is slow by design — makes brute force expensive
```

**Secure session cookies** — Rails sets `HttpOnly` and `Secure` flags by default in production:
```ruby
# config/initializers/session_store.rb
Rails.application.config.session_store :cookie_store, key: '_app_session',
  httponly: true,    # JS can't read the cookie
  secure: true,      # HTTPS only (production)
  same_site: :lax    # CSRF protection
```

**`reset_session`** — should be called on login to prevent session fixation:
```ruby
def create
  user = User.find_by(email: params[:email])
  if user&.authenticate(params[:password])
    reset_session          # Rails method — regenerates session ID
    session[:user_id] = user.id
    redirect_to dashboard_path
  end
end
```

---

## 4. Where does that protection break down?

```ruby
# Missing reset_session on login — session fixation possible
session[:user_id] = user.id  # without reset_session above

# No rate limiting — credential stuffing is trivial
# Rails has no built-in rate limiting. Need rack-attack gem:
# Rack::Attack.throttle("login/ip", limit: 5, period: 60) { |req| ... }

# Weak bcrypt cost factor (default is 12, acceptable — don't lower it)
BCrypt::Engine.cost = 1  # NEVER do this

# Password reset tokens with no expiry
token = SecureRandom.hex  # stored but never checked for expiry

# Storing user ID in an unencrypted cookie instead of the session
cookies[:user_id] = user.id  # trivially forgeable

# Session not invalidated on logout
def destroy
  session[:user_id] = nil  # better: reset_session
end
```

**Devise** handles most of this correctly out of the box, but custom auth or custom Devise overrides are common sources of regressions.

---

## Key terms

- **Credential stuffing** — automated login attempts using leaked credentials from other breaches
- **Session fixation** — attacker sets a session ID before the user logs in; after login, attacker knows the valid session ID
- **Session hijacking** — stealing a valid session token (vs fixation which is pre-login)
- **bcrypt** — adaptive hashing algorithm; cost factor makes it slow, defeating brute force
- **HttpOnly** — cookie flag preventing JavaScript access (defeats XSS-based session theft)
- **rack-attack** — Rails middleware gem for rate limiting and blocking

---

## Hands-on lab

- PortSwigger Authentication labs: https://portswigger.net/web-security/authentication
  - "Username enumeration via different responses"
  - "Password brute-force via password change"

---

## Test yourself

1. What does `reset_session` do and why must it be called on login?
2. You're building a "remember me" feature. What should the persistent token look like, and how should it be stored?
3. Why is bcrypt better than SHA256 for password hashing?
4. What gem would you add to Rails to prevent credential stuffing, and where does it live in the stack?
