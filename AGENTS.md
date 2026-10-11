# AI-MIND Repository Instructions

Use this file as the compact entry point. Read `CODEX.md` for the full vault schema and operation-specific workflows; follow stricter rules there when relevant. This repository stores distilled knowledge, not application source code.

## Repository Map

- `raw/`: Original source material; immutable. Never edit or replace it.
- `wiki/`: Curated, linked knowledge maintained under the workflows in `CODEX.md`.
- `wiki/index.md`: Wiki catalog; read before wiki questions or edits and update when pages change.
- `wiki/log.md`: Append-only record of durable changes, checks, and unresolved contradictions.
- `tools/`: PowerShell helpers for creating project folders and preparing AI-MIND handoffs.
- `README.md`: User-facing overview. `CODEX.md`: Detailed operating procedures.
- No application package manifest or repository-level build, lint, or test command is currently defined.

## Working Rules

- Inspect relevant files and current Git changes before editing. Preserve unrelated user changes.
- Use available shell, search, and file tools to complete authorized work directly; do not ask the user to run commands that can be run here. Tool access depends on the current Codex runtime.
- Keep changes scoped. Do not copy full application code, generated output, credentials, or `.env` values into this vault.
- Read `wiki/index.md` first for wiki questions and changes. Follow the relevant `CODEX.md` workflow, including its user-confirmation step before writing wiki updates after ingestion or project inspection.
- Search for existing pages before creating new ones. Add Obsidian links, update the index, and append to the log as required by `CODEX.md`.
- Verify current external facts at their source. Ask before web research unless the user requested it. When a GitHub repository is mentioned, add its canonical URL to `wiki/entities/github-resource-repos.md` after checking for duplicates; this records a reference and does not authorize full review or ingestion.
- For `check` or lint requests, read the index, inspect for the issue categories in `CODEX.md`, do not web-search without a request, fix only clear issues, and append the required dated log entry.
- Do not use shell commands that delete, overwrite, or move user data unless that action is explicitly requested.
- Batch related file edits into a small number of coherent writes. Inspect the resulting diff before reporting completion.
- Run relevant validation when available. For Markdown-only changes, use `git diff --check`; do not claim application tests ran when this repository defines none.

## Failure Notes

Record only verified, reusable failures here. Include the command or approach, the observed error, and the proven correction. Do not record guesses or machine-specific transient outages as permanent facts.

- No verified repository-wide build, lint, or test failures recorded.
