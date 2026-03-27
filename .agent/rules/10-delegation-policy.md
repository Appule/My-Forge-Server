---
trigger: always_on
---

# Implementation & Delegation Policy

## Agent Roles
- **Gemini (Manager/Planning Mode)**: Handles requirements definition, architecture design, and verification.
- **Codex (Implementation/Fast Mode)**: Handles specific coding tasks, boilerplate generation, and complex algorithms.

## Codex Delegation Criteria
Delegate tasks to **Fast Mode** agents or specialized coding skills in the following scenarios:
1. **Complex Logic & Algorithms**: Implementation requiring high performance or intricate logic.
2. **Boilerplate Generation**: Generating large amounts of repetitive code or test cases.
3. **Self-Correction**: Seeking a "second opinion" if the initial implementation fails tests more than once.

## Quality & Verification Standards
- **Verification Responsibility**: Gemini is responsible for running tests and verifying the final output.
- **Feedback Loop**: If errors occur, Gemini must provide logs to the implementation agent for refinement.
- **Coding Standards**: Follow the latest best practices for clean, maintainable, and secure code.