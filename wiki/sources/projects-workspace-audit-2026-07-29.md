# Projects Workspace Audit 2026-07-29

Source scope: `C:\Users\aa77m\Downloads\PROJECTS`

This source page records a first-pass audit of the top-level projects workspace to extract durable knowledge for the second brain. The goal was not to ingest every file, but to identify the projects that contain reusable product, code, architecture, workflow, or tooling knowledge.

## Top-Level Inventory

- `.agents`
- `ankageo-bootcamp`
- `Goal-Tracker`
- `My - Web`
- `myapp`
- `obsidian`
- `staj`
- `web_app`

## High-Value Projects

- `web_app/assistive-communication`
  - Most mature documented web product in the workspace.
  - Strong operational value: Next.js, Firebase Auth, Firestore, OneSignal, tests, verification scripts, deployment docs, security docs.
- `Goal-Tracker`
  - Strong Android/Kotlin product with brief, architecture notes, workflow rules, and project-specific agent instructions.
  - Good source for safe incremental Android work, Compose patterns, Room, navigation, and validation priorities.
- `myapp`
  - Useful mobile product source despite weak docs.
  - Expo/React Native stack, SQLite, Zustand, bottom tabs, testing setup, multiple productivity-oriented screens.
- `ankageo-bootcamp`
  - Potentially useful as a curriculum/source map for frontend and fullstack learning progression.

## Medium-Value / Mixed-Signal Projects

- `My - Web`
  - Mixed folder containing a static web project, a `WEB` subproject, and a Python `web-scaner` project.
  - Has some architectural signal, but also includes scanning payload files and generated data. Use cautiously and inspect per task rather than treating it as a default reusable pattern source.

## Low-Signal / Pending

- `staj`
  - Appears to be binary documents and presentations only. Likely useful as personal history or internship record, but not yet ingested because the first pass prioritized active codebases and reusable engineering context.
- `obsidian`
  - Current second-brain workspace itself, not a source project to ingest.

## Extraction Decision

In this pass, the brain should keep:

- project summaries
- stack and architecture notes
- setup and verification commands
- workflow constraints
- deployment/auth/integration patterns
- design-to-code or implementation planning context

It should not keep:

- dependency folders
- generated build artifacts
- environment secrets
- binary blobs without clear immediate value
- offensive payload content from scanning projects

## Filed Into

- [[projects/assistive-communication]]
- [[projects/pathpilot-goal-tracker]]
- [[projects/myapp-productivity-app]]
- [[projects/ankageo-bootcamp]]
- [[projects/my-web-and-web-scaner]]

## Related

- [[concepts/context-engineering]]
- [[concepts/source-driven-development]]
- [[entities/codex]]
