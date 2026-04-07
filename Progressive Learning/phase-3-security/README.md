# Security Track — starts week 3, 3x per week

**Goal:** Build genuine AppSec knowledge. Rails background is an asset — you know the attack surfaces from the inside.

## OWASP Top 10 progress

| # | Vulnerability | Status |
|---|--------------|--------|
| 1 | Injection (SQLi, command injection) | [ ] |
| 2 | Broken Authentication | [ ] |
| 3 | Sensitive Data Exposure | [ ] |
| 4 | XML External Entities (XXE) | [ ] |
| 5 | Broken Access Control | [ ] |
| 6 | Security Misconfiguration | [ ] |
| 7 | XSS (Cross-Site Scripting) | [ ] |
| 8 | Insecure Deserialization | [ ] |
| 9 | Using Components with Known Vulnerabilities | [ ] |
| 10 | Insufficient Logging & Monitoring | [ ] |

## For each OWASP item, answer these four questions

1. How does this attack work?
2. Where could this appear in a Rails/SaaS app?
3. How does Rails protect against it by default?
4. Where does that protection break down?

Add a file per topic: `owasp/01_injection.md`, `owasp/02_broken_auth.md`, etc.

## Hands-on labs

- [ ] PortSwigger: SQL injection labs
- [ ] PortSwigger: XSS labs
- [ ] PortSwigger: Authentication labs
- [ ] PortSwigger: Access control labs
- [ ] TryHackMe Jr Penetration Tester path (started)
- [ ] Burp Suite Community installed and configured

## Prompt to use with Claude

```
Explain [vulnerability] to me as a Rails developer.
Show me the attack, then show me how Rails handles it — and where the protection might fail.
```
