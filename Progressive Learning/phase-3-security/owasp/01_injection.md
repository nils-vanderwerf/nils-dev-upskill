# OWASP A03:2021 — Injection (SQL, Command, LDAP)

Status: [ ] studied  [ ] lab completed  [ ] can explain without notes

---

## 1. How does this attack work?

Injection happens when untrusted data is sent to an interpreter as part of a command or query. The attacker's data changes the *intent* of the query — not just the input.

**SQL injection example:**
```
# Intended query:
SELECT * FROM users WHERE email = 'user@example.com'

# Attacker inputs: ' OR '1'='1
SELECT * FROM users WHERE email = '' OR '1'='1'
# Returns ALL users. Attacker is now authenticated as the first user in the table.
```

**Command injection example:**
```ruby
# Dangerous: user input passed directly to shell
system("ping #{params[:host]}")

# Attacker inputs: google.com; cat /etc/passwd
system("ping google.com; cat /etc/passwd")
# Shell executes both commands
```

The core problem: the interpreter can't distinguish between code and data when they're mixed together.

---

## 2. Where could this appear in a Rails/SaaS app?

| Location | Example |
|----------|---------|
| Search fields | `User.where("name LIKE '%#{params[:q]}%'")` |
| Login forms | `User.where("email = '#{params[:email]}'")` |
| URL parameters | `/reports?year=2023` → raw SQL interpolation |
| Admin filters | Dynamic column sorting via user-supplied column names |
| File upload paths | `system("convert #{uploaded_file_path}")` |
| Mailer templates | Dynamic template file selection from user input |
| Webhooks / API inputs | Unvalidated external payloads used in queries |

---

## 3. How does Rails protect against this by default?

**ActiveRecord parameterised queries** — the main defence:
```ruby
# Safe — ActiveRecord uses prepared statements / placeholders
User.where(email: params[:email])
User.where("email = ?", params[:email])
User.where("email = :email", email: params[:email])
```

Rails passes the value as a *separate parameter* to the database driver. The SQL structure is set before the value is inserted, so the database never interprets user input as SQL.

**Strong Parameters** (`permit`) limit which params reach the model at all.

---

## 4. Where does that protection break down?

```ruby
# String interpolation — bypasses parameterisation entirely
User.where("name LIKE '%#{params[:q]}%'")        # VULNERABLE
User.order("#{params[:column]} #{params[:dir]}")  # VULNERABLE — column names can't be parameterised

# order() and group() don't sanitise column/direction names
# Attacker can inject: params[:column] = "id); DROP TABLE users;--"

# Raw SQL without sanitisation
ActiveRecord::Base.connection.execute("SELECT * FROM users WHERE id = #{params[:id]}")

# System calls with user input
system("ffmpeg -i #{params[:filename]}")           # Command injection
`convert #{params[:path]}`                          # Backtick shell execution

# YAML.load (before Ruby 3.1 Psych 4 change)
YAML.load(user_supplied_string)                     # Can deserialise arbitrary objects
```

**Safe patterns for dynamic column sorting:**
```ruby
ALLOWED_COLUMNS = %w[name email created_at].freeze
column = ALLOWED_COLUMNS.include?(params[:col]) ? params[:col] : "name"
User.order(column)
```

---

## Key terms

- **Prepared statement** — SQL query compiled before values are bound; values can't alter structure
- **Parameterised query** — synonym for prepared statement in most contexts
- **Tainted input** — any data originating outside the application (user, API, file, env var)
- **Allowlist** — explicitly permit known-good values (stronger than denylisting bad ones)

---

## Hands-on lab

- PortSwigger SQL Injection labs: https://portswigger.net/web-security/sql-injection
  - Start with: "SQL injection vulnerability in WHERE clause allowing retrieval of hidden data"
- Burp Suite: intercept a login request, try `' OR '1'='1` in email field

---

## Test yourself

1. What's the difference between `User.where("email = '#{params[:email]}'")` and `User.where(email: params[:email])`?
2. Why can't you use parameterised queries for column names in `order()`?
3. A Rails app lets users sort a table by column. How do you do this safely?
4. Name two places in a Rails app (beyond ActiveRecord) where injection can occur.
