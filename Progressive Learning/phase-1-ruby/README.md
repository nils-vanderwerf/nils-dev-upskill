# Ruby Interview Fundamentals — intensive weeks 1–2, then 1x/week ongoing

Fix interview performance under pressure before anything else.

## Structure

```
week-1/   Strings       — reversal, palindrome, char count, FizzBuzz
week-2/   Arrays        — duplicates, flatten/sum, rotate, group by length
week-3/   Hashes/Mixed  — word count, two sum, most common element, anagram
week-4/   OOP           — BankAccount, Caesar cipher, Stack
spec/     RSpec tests   — one file per week
```

## How to work through each exercise

1. Read the problem statement in the file
2. Fill in the PEDAC sections (P, E, D, A) as comments before writing any code
3. Write your solution in the `def` stub
4. Run the specs to check your work

## Running tests

```bash
bundle install          # first time only
bundle exec rspec phase-1-ruby/spec/week1_spec.rb
bundle exec rspec phase-1-ruby/spec/   # all weeks
```

## Asking Claude for a mock interview

```
Run a 25-minute Ruby coding interview with me. One problem, timed, give honest feedback at the end.
```
