# Codex Wiki Agent Schema

This Obsidian vault is a living second brain for product work, code, app building, websites, skills, links, files, and GitHub repositories. Everything must stay as plain Markdown. Codex owns the `wiki/` layer and treats `raw/` as immutable source material.

## Purpose

Use this vault to preserve product ideas, technical decisions, implementation knowledge, source summaries, reusable concepts, app and website patterns, repo notes, and links between related work. The wiki should reduce repeated explanation across Codex conversations.

## Folder Rules

- `raw/`: Original sources only, such as articles, notes, transcripts, copied docs, repo notes, skill files, pasted links, and research. Read from this folder. Never edit files in this folder.
- `wiki/`: Codex-written pages. Codex may create and update these files.
- `wiki/entities/`: People, companies, tools, frameworks, libraries, products, APIs, platforms, plugins, and services.
- `wiki/concepts/`: Reusable ideas, engineering patterns, product principles, design principles, architecture concepts, and workflows.
- `wiki/sources/`: One source-summary page per ingested raw file, link collection, or repo review.
- `wiki/projects/`: Apps, websites, product ideas, builds, experiments, and shipped projects.
- `wiki/index.md`: Catalog of every wiki page with a one-line summary, grouped by category. Update on every ingest or wiki edit. Read first for every query.
- `wiki/log.md`: Append-only history of ingests, queries worth keeping, lint runs, major wiki edits, and unresolved contradictions.

Only add new folders when the existing folders are not enough.

## Page Conventions

- Use short, descriptive filenames in kebab-case.
- Start each page with a level-one heading matching the title.
- Prefer Obsidian links like `[[concepts/component-architecture]]` and `[[projects/app-name]]`.
- Keep claims traceable to source pages when possible.
- Add a `Related` section when a page connects to other pages.
- Add a `Source Notes` or `Evidence` section when a claim depends on a specific source.
- Flag uncertainty directly with `Open question:` or `Needs verification:`.
- Do not invent facts beyond provided sources unless the user asked for a web search or repo inspection.

## Codex Operating Rules

- Always read `wiki/index.md` before answering a wiki question or ingesting a source.
- Never modify files in `raw/`.
- Prefer updating an existing wiki page over creating duplicates.
- Add cross-links while writing, not as a later cleanup.
- Update `wiki/index.md` whenever a wiki page is created, renamed, or materially changed.
- Append to `wiki/log.md`; do not rewrite old log entries.
- Surface contradictions instead of silently resolving them.
- For current external facts, search or inspect the source directly before treating them as current.
- For code repositories, inspect actual files before summarizing architecture or implementation details.

## Operation 1: Ingest

When the user drops a file into `raw/` and asks to ingest it:

1. Read `wiki/index.md` first to understand existing pages.
2. Read the raw source file from `raw/`. Do not edit it.
3. Identify key takeaways, product/code/app implications, entities, concepts, projects, decisions, contradictions, and unanswered questions.
4. Tell the user the key takeaways and ask what to emphasize before writing the wiki update.
5. After the user answers, write or update relevant pages in `wiki/`.
6. Create or update one page in `wiki/sources/` that summarizes the raw file and links to every affected page.
7. Add cross-links between related wiki pages.
8. Update `wiki/index.md` so every wiki page has a one-line summary under the correct category.
9. Append an entry to `wiki/log.md` using this format:

   `## [YYYY-MM-DD] ingest | Title`

   Include source file, changed pages, key takeaways, contradictions, and follow-ups.

10. Report what changed and list any contradictions or open questions.

## Operation 2: Query

When the user asks a question:

1. Read `wiki/index.md` first.
2. Open the relevant wiki pages.
3. Answer from the wiki, linking to the pages used.
4. Clearly say when the wiki does not contain enough information.
5. If the answer is worth preserving, create or update a relevant page in `wiki/`, update `wiki/index.md`, and append a query entry to `wiki/log.md`:

   `## [YYYY-MM-DD] query | Question or Topic`

6. If outside information is needed, ask before doing a web search unless the user explicitly requested current external research.

## Operation 3: Lint

When the user asks to check the brain:

1. Read `wiki/index.md`.
2. Scan wiki pages for contradictions, stale claims, orphan pages with no incoming or outgoing links, repeated concepts without pages, missing summaries, and weak source traceability.
3. Compare the wiki against the filenames and obvious topics in `raw/` to find uningested sources.
4. Identify gaps that could be filled by web search, but do not search unless the user asks.
5. Report findings grouped as:
   - Contradictions
   - Stale or unverifiable claims
   - Orphan pages
   - Missing pages for repeated concepts
   - Uningested raw sources
   - Suggested next sources or searches
6. Append a lint entry to `wiki/log.md`:

   `## [YYYY-MM-DD] lint | Brain check`

## How To Use This Vault With Codex

### Files

Use files when you have notes, specs, transcripts, PDFs converted to Markdown or text, copied docs, or meeting notes.

1. Put the file in `raw/`.
2. Tell Codex: `ingest raw/<filename>`.
3. Codex reads the file, summarizes the takeaways, and asks what to emphasize.
4. You answer with the emphasis.
5. Codex writes or updates pages in `wiki/`, updates `wiki/index.md`, and appends to `wiki/log.md`.

Example:

`ingest raw/pricing-model-notes.md`

### Links

Use links when the source is an article, documentation page, video page, product page, or external reference.

Preferred durable method:

1. Create a Markdown file in `raw/`, such as `raw/link-nextjs-cache-components.md`.
2. Paste the URL at the top.
3. Add any context about why it matters.
4. Tell Codex: `ingest raw/link-nextjs-cache-components.md`.

If you only send a URL directly, Codex may browse it, summarize it, and create a source page, but the durable raw source should still be saved in `raw/` when the link matters long term.

### GitHub Repositories

Use GitHub repo ingestion when you want architecture notes, implementation memory, reusable patterns, or product decisions preserved.

For a local repo:

1. Open Codex in the repository workspace.
2. Tell Codex: `ingest this repo into the wiki`.
3. Codex reads `wiki/index.md`, inspects the repo files, identifies architecture, key modules, setup commands, risks, and product context.
4. Codex writes project, concept, entity, and source pages as needed.
5. Codex updates `wiki/index.md` and appends to `wiki/log.md`.

For a remote GitHub URL:

1. Send the GitHub repo URL.
2. Tell Codex what you want preserved, such as architecture, install steps, reusable UI patterns, API design, or product strategy.
3. Codex inspects the repo if access is available.
4. Codex writes wiki pages and records the repo as a source.

Example:

`ingest https://github.com/owner/repo and focus on architecture, setup, and reusable app patterns`

### Skills

Use skills when you have Codex skills, prompts, workflows, or reusable agent instructions.

For a skill file:

1. Put the skill file or folder notes in `raw/`.
2. Tell Codex: `ingest raw/<skill-file> as a skill source`.
3. Codex extracts purpose, trigger conditions, steps, constraints, tools, reusable patterns, and related concepts.
4. Codex creates or updates pages under `wiki/concepts/`, `wiki/entities/`, and `wiki/sources/`.

For a skill folder that should be installed or edited, say that explicitly. Otherwise, Codex only documents it in the wiki.

Example:

`ingest raw/design-review-skill.md as a skill source and preserve the exact workflow constraints`

### Questions

Ask normal questions when you want Codex to answer from the wiki.

Example:

`What app ideas have we discussed for developer tools?`

Codex will read `wiki/index.md`, open relevant pages, answer with links, and optionally preserve the answer if it becomes useful knowledge.

### Brain Checks

Ask for a lint when you want maintenance.

Example:

`lint my brain`

Codex will look for contradictions, stale claims, orphan pages, missing concept pages, uningested raw sources, and useful next sources.

## Maintenance Rules

- Preserve `raw/` exactly.
- Keep `wiki/index.md` current.
- Keep `wiki/log.md` append-only.
- Prefer updating an existing page over creating duplicates.
- Link related pages immediately.
- Keep pages useful for future product and engineering decisions, not just summaries.
- Surface contradictions instead of silently resolving them.
