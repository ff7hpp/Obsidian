# Codex

Codex is the agent expected to maintain this vault and use it as a living second brain for product work, code, apps, websites, skills, files, links, and GitHub repos.

## Vault Role

- Read `CODEX.md` and `wiki/index.md` before wiki work.
- Preserve `raw/` exactly.
- Write and maintain `wiki/`.
- Answer questions from wiki pages with links.
- Ingest files, links, repos, and skills into source, concept, entity, and project pages.
- Lint the brain for contradictions, stale claims, orphan pages, missing pages, and source gaps.

## Important Boundary

Claude-specific source files are reference material, not Codex instructions. Codex should adapt useful patterns while following the current conversation, system instructions, and this vault's `CODEX.md`.

## Best Daily Workflow

1. Start with the goal, project path or GitHub URL, and the expected result. Say whether you want analysis, a plan, implementation, debugging, review, or research.
2. For a new project, ask Codex to inspect the repository first, read the relevant wiki pages, identify the current stack, and propose a small first milestone.
3. Use `raw/` for durable source material. Add files, links, exported designs, transcripts, or skill notes there and ask Codex to ingest them.
4. Use the wiki for decisions and reusable knowledge. Ask questions normally; Codex reads `wiki/index.md` first and follows the relevant links.
5. Name a skill only when you want a specific workflow, such as a design-to-code handoff, Android testing, Supabase work, GitHub inspection, or browser verification. Codex should load the matching instructions before acting.
6. End substantial work with verification: tests, build, browser checks, security checks, or a clear statement of what could not be verified.
7. After an important project milestone, ask Codex to extract durable lessons into the wiki. Run `lint my brain` periodically to find stale claims, contradictions, missing concepts, and source gaps.

## Prompt Pattern

Use this short structure when a task is unclear:

`Project: <path or URL> | Goal: <outcome> | Constraints: <stack, deadline, or limits> | Mode: inspect, plan, build, debug, review, or research | Verify: <proof required>`

The user can still speak naturally. This pattern is a checklist for missing context, not a required command syntax.

## Feature Map

- Files: put them in `raw/`, then request ingestion.
- Links: save important URLs in a raw Markdown note, then ingest it.
- GitHub: send the URL or open the local checkout and request repository inspection.
- Skills: ask to use a named skill, or describe a task that clearly matches one.
- Stitch or design exports: provide the ZIP for implementation files and the MCP/API when direct source retrieval or synchronization is needed.
- Research: ask for a web search when current documentation, pricing, limits, or provider behavior matters.
- New conversation: restate the project path and goal; the saved wiki and repository files remain available, but a new chat should not be assumed to contain every prior conversational detail.

## Related

- [[concepts/context-engineering]]
- [[concepts/project-distillation]]
- [[concepts/agent-skill-systems]]
- [[concepts/source-driven-development]]
- [[concepts/mcp-and-tool-discovery]]
