# Nils — Dev Upskill Plan

## Who I am

- Software engineer, 4 years experience total
- 2 years: Ruby on Rails, RSpec — feature development on JobReady (enterprise SaaS, ReadyTech)
- 2 years: Java, HTML-to-PDF legacy framework — student management system templates
- Recently made redundant. Actively job searching.
- Goal: Land a role in **AppSec / DevSecOps / Security Engineering** within 6 months
- Secondary goal: Broaden stack with **React + TypeScript** to open more SaaS engineering roles
- Financial runway: ~6 months
- Study time available: 8–12 hrs/week
- Location: Sydney, Australia

## How I learn best

- Plain English explanations with real-world analogies BEFORE technical definitions
- Interactive quizzing over passive reading — give me one problem at a time and wait for my answer
- Honest assessments over reassurance — if my answer is wrong, tell me clearly and explain why
- Deliberate practice under simulated pressure (interview conditions)

## Known weak spots

- Freezing under technical interview pressure — solution process breaks down without a structured framework
- Pure Ruby methods vs Rails/ActiveRecord methods — easy to mix up
- Jumping straight to code without planning — use PEDAC always
- Frontend framework experience: some exposure to React and TypeScript — built projects with both

## How to work with me in this repo

- When I ask you to quiz me: one question at a time, wait for my answer before proceeding
- When reviewing my code: check for correctness first, then style, then security implications
- When I'm stuck: don't give me the answer immediately — ask a Socratic question first
- Call out when I'm using Rails methods in pure Ruby context (a recurring mistake)
- Remind me to use PEDAC when I jump straight to code without a plan

---

## Timeline: 12–14 weeks to competitive

| Weeks | Focus |
|-------|-------|
| 1–2   | Ruby drilling only — fix the interview process problem fast |
| 3+    | Three parallel tracks: Security, React/TS, Ruby mock interviews |
| 6–8   | AWS Cloud Practitioner exam (target) |
| 3+    | Applying for jobs — don't wait until "done" |
| 8–12  | Portfolio projects |
| 12–14 | Genuinely competitive for AppSec/DevSecOps roles |

---

## Weeks 1–2 — Ruby interview drilling

**Goal:** Drill PEDAC until it's automatic. Fix the process breakdown before anything else.

### Daily (30 min)
- Exercism.org Ruby track: https://exercism.org/tracks/ruby
- Exercises in `phase-1-ruby/` — one per session, always PEDAC first
- Focus: strings → arrays → hashes → OOP

### PEDAC framework — use this every time
```
P — Problem:     Restate the problem in your own words
E — Examples:    Write 2–3 input/output examples
D — Data:        What data structure will you use?
A — Algorithm:   Write plain-English steps before coding
C — Code:        Only now write Ruby
```

### Weekly mock interview (ongoing from week 1)
*"Run a 25-minute Ruby coding interview with me. One problem, timed, give honest feedback at the end."*

### Key Ruby methods to drill (pure Ruby only — no Rails)
```ruby
# Arrays
.map / .collect
.select / .filter
.reject
.reduce / .inject
.each_with_object
.flat_map
.uniq
.sort / .sort_by
.min / .max / .min_by / .max_by
.count / .tally
.zip
.each_slice / .each_cons
.first / .last

# Hashes
.each / .map
.select / .reject
.any? / .all? / .none?
.merge / .merge!
.transform_values / .transform_keys
.fetch
.group_by (returns hash)
[]= assignment

# Strings
.chars / .split
.gsub / .sub
.upcase / .downcase / .capitalize
.start_with? / .end_with?
.include?
.strip / .chomp / .chop
.reverse
.scan
```

### Rails-only methods — DO NOT use these in pure Ruby problems
```ruby
# These are ActiveRecord / Rails — will cause NoMethodError in plain Ruby
.where / .find / .find_by
.present? / .blank?
.pluck
.to_s(:currency) — Rails only formatting
```

### RSpec fluency checklist
- [ ] describe / context / it block structure
- [ ] expect().to eq / be / include / raise_error
- [ ] let and let! — understand lazy vs eager evaluation
- [ ] before(:each) / before(:all)
- [ ] subject
- [ ] doubles and stubs: allow(obj).to receive(:method).and_return(value)
- [ ] instance_double vs double

---

## Week 3 onwards — Three parallel tracks

### Track 1: Security (3x per week)

**Goal:** Build genuine AppSec knowledge. Rails background is an asset — you know the attack surfaces from the inside.

#### OWASP Top 10 — study order
1. Injection (SQLi, command injection)
2. Broken Authentication
3. Sensitive Data Exposure
4. XML External Entities (XXE)
5. Broken Access Control
6. Security Misconfiguration
7. XSS (Cross-Site Scripting)
8. Insecure Deserialization
9. Using Components with Known Vulnerabilities
10. Insufficient Logging & Monitoring

Official docs (free): https://owasp.org/www-project-top-ten/

#### Hands-on labs (all free)
- PortSwigger Web Security Academy: https://portswigger.net/web-security
  - Order: SQL injection → XSS → Authentication → Access control
- TryHackMe Jr Penetration Tester path: https://tryhackme.com/path/outline/jrpenetrationtester
- Burp Suite Community (free): https://portswigger.net/burp/communitydownload
- OverTheWire Bandit: https://overthewire.org/wargames/bandit/ — Linux CLI, security-flavoured

#### For every OWASP vulnerability, answer these four questions
1. How does this attack work?
2. Where could this appear in a Rails/SaaS app?
3. How does Rails protect against it by default?
4. Where does that protection break down?

Save answers in `phase-3-security/owasp/`.

#### Study prompt for Claude
*"Explain [vulnerability] to me as a Rails developer. Show me the attack, then show me how Rails handles it — and where the protection might fail."*

---

### Track 2: React + TypeScript (2x per week)

**Goal:** Enough fluency to contribute to a frontend in a full-stack or security-tooling role.

#### Learning path (all free)
1. TypeScript basics: https://www.typescriptlang.org/docs/handbook/intro.html
2. React official docs: https://react.dev/learn
3. Build a React frontend for the Rails security audit project (portfolio)

#### Concepts in order
```
Weeks 3–4: TypeScript fundamentals
  - Types vs interfaces
  - Union types, optional chaining
  - Generics basics
  - Type inference

Weeks 5–6: React fundamentals
  - JSX, components, props
  - useState, useEffect
  - Event handling
  - Conditional rendering, lists

Weeks 7–8: React intermediate
  - useContext, useReducer
  - Custom hooks
  - Fetching data (fetch / axios)
  - React Router basics

Week 9+: Connect to Rails API
  - Build React frontend for security dashboard portfolio project
  - CORS configuration in Rails
  - JWT authentication flow
```

#### TypeScript + security lens
TypeScript prevents runtime errors that become security vulnerabilities — type coercion bugs, null reference errors, undefined access. Frame TS learning through this lens.

---

### Track 3: Ruby mock interviews (1x per week, ongoing)

One timed 25-minute session per week. Every week, no exceptions.

*"Run a 25-minute Ruby coding interview with me. One problem, timed, give honest feedback at the end."*

---

## AWS Cloud Practitioner — target weeks 6–8

14 hours of video + practice questions. Three weeks if you push it.

- Andrew Brown full course (14hrs): https://www.youtube.com/watch?v=NhDYbskXRgc
- Pace: ~1hr/day, finish in 3 weeks
- The exam (~$150 AUD) is the only money worth spending in this plan

### Core concepts
- EC2 vs Lambda vs ECS — compute options
- S3 — object storage
- RDS — managed databases
- VPC — virtual private cloud, networking isolation
- IAM — Identity and Access Management (critical for security roles)
- CloudWatch — monitoring and logging
- Route 53 — DNS
- CloudFront — CDN

---

## Applying for jobs — from week 3

You don't need to be finished to apply. You need to be credible and honest about where you are.

### What "credible from week 3" looks like
- Can talk fluently about OWASP vulnerabilities in a Rails context
- Has a GitHub repo with visible work (this repo)
- Clear narrative: "4 years Rails SaaS dev, transitioning to AppSec, here's what I've built"
- Applying to Rails SaaS engineering roles while the security profile builds

### Job search targets
| Role | Where | Your angle |
|------|-------|------------|
| AppSec Engineer | Seek, LinkedIn | Rails dev who knows attack surfaces from the inside |
| DevSecOps Engineer | Seek, LinkedIn | Dev background + AWS cert (in progress) + CI/CD |
| Security Engineer (SaaS) | LinkedIn, SecurityJobs.com.au | SaaS product experience, Rails, real threat surfaces |
| Software Engineer (Rails) | Seek, rubyonremote.com | Keep applying — income while upskilling |

### Interview prep — security flavour
- Explain a vulnerability you found and fixed in your own code
- Walk through your security audit project
- OWASP: "How would you test for XSS in a Rails app?"
- System design: "Design a secure authentication system"

*"Run a mock AppSec engineer interview with me. Focus on web application vulnerabilities."*

---

## Portfolio projects — weeks 8–12

### Project 1 — Rails security audit
Take the matter-tracker Rails app and self-audit:
1. Run Brakeman: `gem install brakeman && brakeman`
2. Document every finding
3. Fix each vulnerability
4. Write up as a GitHub README
5. Optional: publish on dev.to

### Project 2 — Security dashboard
- Rails API backend exposing Brakeman results as JSON
- React + TypeScript frontend
- Vulnerability list with severity and file location
- Covers React + TypeScript + Rails API + Security in one project

### Blogging (from week 8)
Platform: dev.to — good SEO, developer audience

- "OWASP Top 10 for Rails developers"
- "What I learned doing a security audit of my own Rails app"
- "TypeScript for Ruby developers — what's familiar, what's new"

---

## Weekly check-in prompt

```
It's week [N] of my study plan.
Last week I worked on: [topic]
I got stuck on: [issue]
This week I want to focus on: [topic]
Help me plan this week's sessions and start with a quiz on [topic].
```

---

## Resources index

| Resource | URL | Cost |
|----------|-----|------|
| Exercism Ruby | https://exercism.org/tracks/ruby | Free |
| RSpec docs | https://rspec.info/documentation/ | Free |
| Andrew Brown AWS course | https://www.youtube.com/watch?v=NhDYbskXRgc | Free |
| AWS Cert exam | https://aws.amazon.com/certification/ | ~$150 AUD |
| Play with Docker | https://labs.play-with-docker.com | Free |
| OverTheWire Bandit | https://overthewire.org/wargames/bandit/ | Free |
| OWASP Top 10 | https://owasp.org/www-project-top-ten/ | Free |
| PortSwigger Academy | https://portswigger.net/web-security | Free |
| TryHackMe | https://tryhackme.com | Free tier |
| Burp Suite Community | https://portswigger.net/burp/communitydownload | Free |
| TypeScript Handbook | https://www.typescriptlang.org/docs/handbook/intro.html | Free |
| React Docs | https://react.dev/learn | Free |
| dev.to (blogging) | https://dev.to | Free |
| rubyonremote.com | https://rubyonremote.com | Free |
