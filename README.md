# AI Mind

![AI Mind graph view](assets/ai-mind-graph.png)

AI Mind is a plain-Markdown second brain for product work, software engineering, app building, websites, skills, links, and GitHub repositories.

It keeps original material separate from distilled knowledge so future Codex sessions can recover the important context without copying entire projects into the knowledge base.

## What Is Inside

```text
AI - MIND/
|-- raw/       Original sources. Read-only.
|-- wiki/      Distilled knowledge maintained by Codex.
|   |-- projects/
|   |-- concepts/
|   |-- entities/
|   |-- sources/
|   |-- index.md
|   `-- log.md
`-- CODEX.md   Operating rules and workflows.
```

The sibling project folders are kept as independent repositories. AI Mind stores their reusable essence: product decisions, architecture, data models, API patterns, security rules, verification methods, limitations, and lessons learned.

## Core Workflows

### Add a source

Place a file in `AI - MIND/raw/` and ask Codex to `add` it. Codex gives the key takeaways first, asks what to emphasize, then creates or updates linked wiki pages, the index, and the log.

### Update from projects

Ask Codex to `update`. It inspects the current project files, compares them with existing wiki knowledge, and stores only durable, reusable lessons. Secrets, dependencies, caches, generated files, and build output are excluded.

### Check the brain

Ask Codex to `check`. It looks for contradictions, stale claims, broken links, orphan pages, repeated concepts without pages, missing raw sources, and useful research gaps. Small housekeeping fixes are applied and recorded in `wiki/log.md`.

## Design Principles

- Plain Markdown and portable files.
- Source material is preserved and never edited by the wiki agent.
- Knowledge is organized as small linked pages instead of one large document.
- Current facts are verified before being treated as current.
- Project repositories stay separate from the knowledge layer.
- Every important change ends with explicit verification evidence.

## Repository Status

This repository is the personal AI Mind workspace. It is currently organized around product engineering, full-stack web work, Android and iOS transformation paths, API-backed applications, and reusable Codex workflows.

## License

No license has been selected yet. Until one is added, the repository should be treated as all-rights-reserved by default.

