---
trigger: always_on
---

# Critical Protocols (ABSOLUTE PRIORITY)

These rules must be observed with the highest priority under all circumstances.

## 1. Safety & Git Operations
- **Branch Enforcement**: Before modifying any code, ALWAYS check `git branch` and create a working branch. Working directly on `main`, `master`, or `develop` is strictly prohibited.
- **Removal of Unnecessary Files**: Delete any files or branches created for testing/temporary purposes immediately after they are no longer needed.
- **Rollback on Interruption**: If a task is terminated due to errors, restore the environment to a clean state prior to the start of work unless explicitly instructed otherwise.
- **No Persistent Processes (Strictly Observed)**: It is strictly prohibited for the Agent to leave development servers (such as `npm run dev` or `python -m http.server`) or persistent processes that do not terminate running.
- **Server Handoff**: If manual screen checks are required, the Agent should not leave the server running and wait. The Agent should either terminate any processes it has started, or avoid starting them in the first place. Instead, it should prompt the user to "run the following command to check that it is working: `[Execution Command]`" to complete the task.

## 2. Communication & Reporting
- **Continuous Execution**: There is no need to stop mid-process to report progress. Unless a fatal error occurs, the task should continue autonomously until completion.
- **Japanese Output Requirement**: All artifacts (plans, tasks, checklists) must be written in **Japanese**.
- **Language Rules**: 
  - Reasoning process: **English** (for logic precision).
  - User Output/Artifacts/Commits: **Japanese**.
- **Limits of Automation**: Do not persist with repeated failed attempts. Report permission/environment issues immediately.

## 3. Quality Assurance
- **QA Enforcement**: Upon completing modifications, ALWAYS run linting and tests. Confirm all tests pass before reporting completion.
- **Protection of Existing Tests**: Do not modify test code to pass failed checks unless confirmed as an "intended specification update" by the user.
- **Documentation Sync**: Update README, API specs, and comments whenever features are modified.

## 4. Security & Privacy
- **Confidentiality**: NEVER output passwords, API keys, or tokens in logs or chats. Handle `.env` files with extreme care.

## 5. Workflow Adherence
- Unless otherwise instructed by the user, once requirements are established, move automatically to the implementation phase without waiting for approval.
- ALWAYS follow workflows defined in `.agent/rules/` and `.agent/workflows/`.

## 6. Environment & Command Execution Restrictions
- **Statement Separator Enforcement**: When executing or concatenating multiple commands in a terminal, never use `&&` as a separator. In this environment, always use `;` (semicolon).
- ❌ Prohibited Example: `cd src && npm run test`
- ⭕ Required Example: `cd src ; npm run test`