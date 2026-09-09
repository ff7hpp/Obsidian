# AI-MIND

### A living knowledge system for building better products with Codex.

AI-MIND is the shared second brain for product ideas, engineering decisions,
reusable patterns, source notes, and lessons learned across projects.

![AI-MIND knowledge graph](assets/ai-mind-network.png)

> Turn scattered context into connected, reusable knowledge.

## What lives here

| Area | Purpose |
| --- | --- |
| `raw/` | Original sources and imports — preserved as reference material |
| `wiki/` | Distilled knowledge written for future work |
| `wiki/projects/` | Product context, architecture, decisions, and lessons |
| `wiki/concepts/` | Reusable engineering and product patterns |
| `wiki/entities/` | Tools, platforms, libraries, and services |
| `wiki/sources/` | Traceable summaries of ingested sources |
| `CODEX.md` | Operating rules and workflows for maintaining the system |

## How it works

```text
Source or project
        ↓
   inspect + verify
        ↓
  distill what lasts
        ↓
 linked wiki knowledge
        ↓
 stronger work next time
```

Use `add` to ingest a source, `update` to refresh knowledge from a project,
and `check` to find contradictions, stale claims, broken links, orphan pages,
and missing sources. The full workflow is documented in [`CODEX.md`](CODEX.md).

## Guiding principles

- Keep knowledge concise, useful, and traceable.
- Link related ideas as they are written.
- Preserve `raw/` exactly; it is the source layer.
- Keep actual application code in its own project repository.
- Treat unverified or outdated claims as questions, not facts.
