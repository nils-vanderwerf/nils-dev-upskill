# Nils — Dev Upskill Plan

## Who I am

- Software engineer, 4 years experience total
- 2 years: Ruby on Rails, RSpec — feature development on JobReady (enterprise SaaS, ReadyTech)
- 2 years: Java, HTML-to-PDF legacy framework — student management system templates
- Recently made redundant. Actively job searching.
- Goal: Land a role in **AppSec / DevSecOps / Security Engineering** within 6 months
- Secondary goal: Broaden stack with **React + TypeScript** to open more SaaS engineering roles
- Study time available: 8–12 hrs/week
- Location: Sydney, Australia

## How I learn best

- Plain English explanations with real-world analogies BEFORE technical definitions
- Interactive quizzing over passive reading — give me one problem at a time and wait for my answer
- Honest assessments over reassurance — if my answer is wrong, tell me clearly and explain why
- Deliberate practice under simulated pressure (interview conditions)


## How to work with me in this repo

- When I ask you to quiz me: one question at a time, wait for my answer before proceeding
- When reviewing my code: check for correctness first, then style, then security implications
- When I'm stuck: don't give me the answer immediately — ask a Socratic question first
- Call out when I'm using Rails methods in pure Ruby context (a recurring mistake)
- Remind me to use PEDAC when I jump straight to code without a plan

---

## Study Plan Overview

| Phase | Focus | Weeks | Cost |
|-------|-------|-------|------|
| 1 | Ruby interview fundamentals + PEDAC | 1–4 | Free |
| 2 | Cloud (AWS) + DevOps basics | 5–10 | ~$150 (exam only) |
| 3 | Security foundations (AppSec + OWASP) | 11–17 | Free |
| 4 | React + TypeScript fundamentals | 12–18 (parallel) | Free |
| 5 | Portfolio projects + job applications | 18–24 | Free |

---

## Phase 1 — Ruby interview fundamentals (Weeks 1–4)

**Goal:** Fix interview performance under pressure before anything else.

### Daily habit (30 min/day)
- Exercism.org Ruby track: https://exercism.org/tracks/ruby
- Focus areas: strings, arrays, hashes, enumerables, OOP basics
- Always use PEDAC before writing a single line of code

### PEDAC framework — use this every time
```
P — Problem:     Restate the problem in your own words
E — Examples:    Write 2–3 input/output examples
D — Data:        What data structure will you use?
A — Algorithm:   Write plain-English steps before coding
C — Code:        Only now write Ruby
```

### Weekly mock interview (25 min, timed)
Ask Claude: *"Run a 25-minute Ruby coding interview with me. One problem, timed, give honest feedback at the end."*

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
.each_with_index (available in Ruby but often confused with Rails patterns)
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

## Phase 2 — Cloud & DevOps foundations (Weeks 5–10)

**Goal:** AWS Cloud Practitioner certification. Opens DevSecOps and AppSec applications.

### AWS Cloud Practitioner — free study
- Andrew Brown full course (14hrs): https://www.youtube.com/watch?v=NhDYbskXRgc
- Pace: ~1hr/day, 3 weeks to complete
- The exam (~$150 AUD) is the only money worth spending in this plan

### Core concepts to understand
- EC2 vs Lambda vs ECS — compute options
- S3 — object storage
- RDS — managed databases (think: managed PostgreSQL)
- VPC — virtual private cloud, networking isolation
- IAM — Identity and Access Management (critical for security roles)
- CloudWatch — monitoring and logging
- Route 53 — DNS
- CloudFront — CDN

### DevOps basics (free, hands-on)
- Docker: https://labs.play-with-docker.com — browser-based, no install
- GitHub Actions: set up a CI pipeline on this repo
- Linux CLI: https://overthewire.org/wargames/bandit/ — security-flavoured wargame

### Practice prompt for Claude Code
Ask: *"Help me write a GitHub Actions workflow that runs RSpec tests on every push."*

---

## Phase 3 — Security foundations (Weeks 11–17)

**Goal:** Build genuine AppSec knowledge. Rails background is an asset — you know the attack surfaces from the inside.

### OWASP Top 10 — study order
1. Injection (SQLi, command injection) — you know Rails protections, now learn the attacks
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

### Hands-on labs (all free)
- PortSwigger Web Security Academy: https://portswigger.net/web-security
  - Start: SQL injection → XSS → Authentication → Access control
- TryHackMe Jr Penetration Tester path: https://tryhackme.com/path/outline/jrpenetrationtester
- Burp Suite Community (free): https://portswigger.net/burp/communitydownload

### Security + Rails connection
For every OWASP vulnerability, answer:
1. How does this attack work?
2. Where could this appear in a Rails/SaaS app?
3. How does Rails protect against it by default?
4. Where does that protection break down?

### Study prompt for Claude
*"Explain [vulnerability] to me as a Rails developer. Show me the attack, then show me how Rails handles it — and where the protection might fail."*

---

## Phase 4 — React + TypeScript (Weeks 12–18, parallel with Phase 3)

**Goal:** Build enough React/TS fluency to contribute to frontend in a full-stack or security-tooling role.

### Why this matters for the job search
- Dramatically widens available SaaS engineering roles
- Security dashboards, tooling UIs, and internal tools are often React
- TypeScript's type safety is directly relevant to secure coding practices
- Shows you're not a one-trick Rails developer

### Learning path (all free)
1. TypeScript basics: https://www.typescriptlang.org/docs/handbook/intro.html
2. React official docs (new): https://react.dev/learn
3. Full-stack practice: build a React frontend for your Rails API projects

### Core React/TS concepts to learn in order
```
Week 12–13: TypeScript fundamentals
  - Types vs interfaces
  - Union types, optional chaining
  - Generics basics
  - Type inference

Week 14–15: React fundamentals
  - JSX, components, props
  - useState, useEffect
  - Event handling
  - Conditional rendering, lists

Week 16–17: React intermediate
  - useContext, useReducer
  - Custom hooks
  - Fetching data (fetch / axios)
  - React Router basics

Week 18: Connect to Rails API
  - Build a simple React frontend for your matter-tracker Rails app
  - CORS configuration in Rails
  - JWT authentication flow
```

### TypeScript + security connection
TypeScript prevents a class of runtime errors that can become security vulnerabilities — undefined is not a function, type coercion bugs, null reference errors. Frame your TS learning through this lens.

---

## Phase 5 — Portfolio + job applications (Weeks 18–24)

**Goal:** Visible proof of skills. Apply for DevSecOps, AppSec Engineer, and Security Engineer roles.

### Project 1 — Rails security audit (Weeks 18–20)
Take the existing matter-tracker Rails app and do a self-audit:
1. Run Brakeman (Rails static analysis security tool): `gem install brakeman && brakeman`
2. Document every finding
3. Fix each vulnerability
4. Write it up as a GitHub README
5. Optional: write a blog post on dev.to

### Project 2 — Security dashboard (Weeks 20–23)
Build a small React/TypeScript frontend that displays security scan results:
- Rails API backend exposing Brakeman results as JSON
- React frontend with TypeScript
- Shows vulnerability list, severity, file location
- This hits React + TypeScript + Rails API + security in one project

### Blogging (ongoing from Week 18)
Platform: dev.to (free, good SEO, developer audience)
Post ideas:
- "OWASP Top 10 for Rails developers"
- "What I learned doing a security audit of my own Rails app"
- "TypeScript for Ruby developers — what's familiar, what's new"

### Job search targets
| Role | Where to look | Your angle |
|------|--------------|------------|
| AppSec Engineer | Seek, LinkedIn | Rails dev who understands attack surfaces from inside |
| DevSecOps Engineer | Seek, LinkedIn | Dev background + AWS cert + CI/CD experience |
| Security Engineer (SaaS) | LinkedIn, SecurityJobs.com.au | SaaS product experience, Rails, understands real threat surfaces |
| Software Engineer (Rails) | Seek, rubyonremote.com | Keep applying while upskilling |

### Interview prep — security flavour
- Explain a vulnerability you found and fixed in your own code
- Walk through your security audit project
- OWASP question: "How would you test for XSS in a Rails app?"
- System design with security lens: "Design a secure authentication system"

Ask Claude: *"Run a mock AppSec engineer interview with me. Focus on web application vulnerabilities."*

---

## Weekly check-in prompt

Use this at the start of each week in Claude Code:

```
It's week [N] of my study plan. 
Last week I worked on: [topic]
I got stuck on: [issue]
This week I want to focus on: [topic]
Help me plan this week's sessions and start with a quiz on [topic].
```

---

## Resources index

| Resource | URL | Cost | Phase |
|----------|-----|------|-------|
| Exercism Ruby | https://exercism.org/tracks/ruby | Free | 1 |
| RSpec docs | https://rspec.info/documentation/ | Free | 1 |
| Andrew Brown AWS course | https://www.youtube.com/watch?v=NhDYbskXRgc | Free | 2 |
| AWS Cert exam | https://aws.amazon.com/certification/ | ~$150 | 2 |
| Play with Docker | https://labs.play-with-docker.com | Free | 2 |
| OverTheWire Bandit | https://overthewire.org/wargames/bandit/ | Free | 2–3 |
| OWASP Top 10 | https://owasp.org/www-project-top-ten/ | Free | 3 |
| PortSwigger Academy | https://portswigger.net/web-security | Free | 3 |
| TryHackMe | https://tryhackme.com | Free tier | 3 |
| Burp Suite Community | https://portswigger.net/burp/communitydownload | Free | 3 |
| TypeScript Handbook | https://www.typescriptlang.org/docs/handbook/intro.html | Free | 4 |
| React Docs | https://react.dev/learn | Free | 4 |
| dev.to (blogging) | https://dev.to | Free | 5 |
| rubyonremote.com | https://rubyonremote.com | Free | 5 |
