---
description: Standard development cycle ensuring requirements approval and quality verification.
---

# Development Workflow Cycle

This workflow enforces the "Requirements first, Code later" protocol.

## Phase 1: Requirements Definition (Lead: Gemini)

1. **Analyze User Intent**: 
   - Understand the goal. If ambiguous, ask the user for clarification.
2. **Draft Artifacts**: 
   - Create or update the `Implementation Plan` and `Task List` in Japanese.
   - Present multiple options with Pros/Cons if applicable.
3. **Auto-Transition**:
   - Once the plan is complete, move immediately to Phase 2 (implementation) without waiting for user approval.

## Phase 2: Implementation & Verification (Lead: Gemini + Codex)

1. **High-Level Design**: 
   - Gemini outlines the architecture based on the approved artifacts.
2. **Execution**: 
   - Delegate specific coding tasks according to the `Delegation Policy`.
   - Ensure a working branch is active.
3. **Verification**: 
   - Run tests and linting.
   - If you need to start a local server temporarily for automated testing, etc., be sure to kill the process after the test is complete to return the environment to a clean state.
   - Verify that no existing tests are broken.
4. **Final Report**:
   - Report the result in Japanese with a summary of changes and verification evidence (screenshots/logs).
   - **Action Required**: If you have implemented something that requires manual verification of the UI or operation, please include a startup command (e.g., `npm run dev`) at the end of your final report, and encourage users to start the server and verify it themselves.