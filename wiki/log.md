# Wiki Log

## [2026-07-29] setup | Product engineering second brain

Created the initial vault structure for a second brain focused on product work, code, apps, and websites.

Created:

- `raw/`
- `wiki/`
- `wiki/entities/`
- `wiki/concepts/`
- `wiki/sources/`
- `wiki/projects/`
- `wiki/index.md`
- `wiki/log.md`
- `CLAUDE.md`

Initial rules:

- `raw/` is immutable source storage.
- `wiki/` is the maintained knowledge layer.
- `wiki/index.md` must be read first for queries and updated on every ingest.
- `wiki/log.md` is append-only.

## [2026-07-29] setup | Rename schema for Codex

Renamed the root schema from `CLAUDE.md` to `CODEX.md` and updated it for Codex-specific use.

Added usage instructions for:

- Files
- Links
- GitHub repositories
- Skills
- Questions
- Brain checks

## [2026-07-29] ingest | Agent skills, Claude contexts, and GitHub resource links

Ingested the raw `.agents` bundle and `raw/links.md` with equal emphasis across reusable Codex workflows, app/website building process, agent/skill architecture, Claude-vs-Codex infrastructure comparison, and GitHub resource mapping.

Source files:

- `raw/.agents/all-24-skills/*.md`
- `raw/.agents/skills-lock.json`
- `raw/.agents/caveman.md`
- `raw/.agents/claude-code-opus-4.8.md`
- `raw/.agents/claude-opus-4.8.md`
- `raw/.agents/claude-fable-5.md`
- `raw/.agents/claude-design.md`
- `raw/links.md`

Created source pages:

- [[sources/agent-skills-pack]]
- [[sources/caveman-skill]]
- [[sources/claude-code-opus-4-8-context]]
- [[sources/claude-opus-4-8-context]]
- [[sources/claude-fable-5-context]]
- [[sources/claude-design-context]]
- [[sources/github-resource-links]]

Created concept pages:

- [[concepts/agent-skill-systems]]
- [[concepts/product-engineering-lifecycle]]
- [[concepts/context-engineering]]
- [[concepts/source-driven-development]]
- [[concepts/agent-verification]]
- [[concepts/design-to-code-workflow]]
- [[concepts/mcp-and-tool-discovery]]

Created entity pages:

- [[entities/codex]]
- [[entities/claude]]
- [[entities/claude-code]]
- [[entities/claude-design]]
- [[entities/github-resource-repos]]

Key takeaways:

- The 24-skill pack gives a full product-engineering lifecycle from intent clarification through migration.
- Claude Code, Claude chat, Claude Fable 5, and Claude Design sources are useful infrastructure references but should not override `CODEX.md`.
- GitHub links are a resource map for skills, APIs, n8n workflows, open design, system-prompt study, build-from-scratch learning, and token compression.
- Future Codex work should use the wiki as durable context whenever the user asks for product, code, app, website, skill, link, or repo help.

Contradictions and caveats:

- The Claude sources conflict on which model is newest or most advanced.
- Product/model claims are dated May/June 2026 and need verification before use as current facts.
- Claude-specific tool names are environment-specific and should be adapted, not copied blindly into Codex behavior.

## [2026-07-29] ingest | Projects workspace audit

Audited `C:\Users\aa77m\Downloads\PROJECTS` to extract durable, reusable knowledge for the second brain rather than ingesting every file blindly.

Created source page:

- [[sources/projects-workspace-audit-2026-07-29]]

Created project pages:

- [[projects/assistive-communication]]
- [[projects/pathpilot-goal-tracker]]
- [[projects/myapp-productivity-app]]
- [[projects/ankageo-bootcamp]]
- [[projects/my-web-and-web-scaner]]

Key takeaways:

- `assistive-communication` is the strongest web-app reference in the workspace: auth, rules, notifications, tests, security, deployment, and verification.
- `Goal-Tracker` is the strongest Android reference: Kotlin, Compose, Room, manual DI, architecture notes, and explicit safe-change workflow rules.
- `myapp` is useful as a mobile productivity app stack reference even though its durable docs are weaker.
- `ankageo-bootcamp` is better treated as a learning/curriculum map than as a production reference.
- `My - Web` contains mixed-signal material and should be inspected selectively.

Skipped or deferred:

- dependency folders such as `node_modules`
- generated artifacts such as `.next`, coverage, reports, and build output
- environment secret files
- binary-only `staj` documents for now
- offensive payload details from the scanning project

## [2026-07-29] ingest | Assistive communication as primary reference project

Promoted `assistive-communication` to the strongest current reference project in the brain and expanded it from a general project page into reusable transformation knowledge.

Created:

- [[projects/assistive-communication-product]]
- [[projects/assistive-communication-data-model]]
- [[projects/assistive-communication-architecture]]
- [[projects/assistive-communication-transformation-paths]]
- [[concepts/product-transformation-paths]]

Key takeaways:

- This project is strong enough to serve as the main reference for how one product can be preserved across different stacks and delivery shapes.
- The stable core is the product model, role system, request flow, and data invariants.
- The web implementation details are separate from the product itself and can later be adapted to Android, iOS, or another backend.
- Firebase and OneSignal are implementation choices, not the product definition.

Most reusable future use:

- converting a web app to Android or iOS
- converting Firebase-backed products to Supabase-backed products
- preserving roles, relationships, and request lifecycle while changing delivery stack
## [2026-08-21] ingest | GeoIssue full-stack website documents

Moved the original documents into the immutable source area:

- `raw/geoissue/FULL_STACK_READINESS.md`
- `raw/geoissue/WEBSITE_FULL_STACK_SPEC.md`

Created and indexed:

- [[projects/geoissue-full-stack-website]]
- [[sources/geoissue-full-stack-documents]]

Key takeaways:

- GeoIssue is currently an MVP with Arabic UI, Firebase Auth, Express API, Neon persistence when configured, and map-based report CRUD.
- i18n, settings, Admin/User separation, RBAC, audit logs, production operations, and complete release evidence remain future work.
- The full-stack blueprint is reusable for future website projects and follows the product-engineering lifecycle and verification principles.

Open questions:

- Production map provider, moderation model, hosting, observability, and notification choices remain to be decided.

Also preserved the reusable `production-full-stack` skill, layer checklist, and readiness template under `raw/production-full-stack-skill/`, with [[concepts/production-full-stack-method]] added as the durable concept page.

## [2026-08-21] lint | Brain check

Checked all indexed wiki pages, Obsidian links, raw-source coverage, dated claims, repeated concepts, and source traceability.

Small fixes:

- replaced a stale vault-date comparison in [[sources/claude-fable-5-context]] with a durable verification warning
- dated the repository snapshots in [[projects/assistive-communication-architecture]] and [[projects/geoissue-full-stack-website]] so they are not mistaken for live production claims
- removed resolved open questions from [[index]] and added the current API-integration gap
- added [[concepts/identity-and-authorization]] and [[concepts/database-choice-for-small-apps]] for two heavily repeated topics
- added backlinks from the relevant project and transformation pages

Findings:

- no broken wiki links or true orphan pages were found
- all obvious raw source groups have source coverage, including `.agents`, GeoIssue documents, the production full-stack skill, and `links.md`
- Claude Opus 4.8 and Fable 5 model-position claims remain contradictory historical source claims and require official verification before current use
- the older workspace project pages have limited incoming links, but each has source traceability and relevant outgoing links

Suggested next research:

- current official Firebase, Neon, and Supabase limits and pricing before selecting a production backend
- a complete API integration example covering provider selection, registration, secret storage, error handling, testing, and cost controls
- current deployment and observability choices for GeoIssue

## [2026-08-21] query | Best use of all AI Mind features

Updated [[entities/codex]] with a practical operating workflow for projects, files, links, GitHub repositories, skills, Stitch exports, research, verification, and new conversations.

Key guidance: choose the operation that matches the need instead of forcing every feature into every task; use a project/goal/constraints/mode/verification prompt pattern when context is unclear; keep durable source material in `raw/` and reusable decisions in `wiki/`.

## [2026-08-23] update | Workspace commands and project-learning workflow

Updated `CODEX.md` to formalize `update`/`تحديث`, `فحص`/lint, and workspace-review behavior.

The workflow now distinguishes:

- `AI - MIND` as the durable knowledge layer
- project folders as source repositories to inspect, not copy wholesale
- current source files from generated output, caches, and secrets
- verified facts from recommendations and missing evidence

The current local project folders should not be treated as fully ingested until their readable source files are present or their GitHub repositories are supplied.

## [2026-08-23] update | Project distillation rule

Added [[concepts/project-distillation]] and formalized the rule in `CODEX.md`: project repositories remain separate, while `AI - MIND` stores only durable product, architecture, data, API, security, verification, and decision knowledge.

Future project updates must consult the distilled pages first, verify them against the new repository, and add only reusable knowledge to `wiki/projects/`, `wiki/concepts/`, `wiki/entities/`, or `wiki/sources/`.

## [2026-08-23] update | Short commands for update, check, and add

Updated `CODEX.md` with the user's shorthand commands:

- `update` or `تحديث` runs the project-update workflow
- `check` runs the Prompt 3 brain health check
- `add` runs the raw-file ingestion workflow and pauses after key takeaways for emphasis

All three commands preserve the distillation rule and keep `raw/` immutable.

## [2026-08-23] check | Brain health check

Checked the current index, 38 wiki pages, Obsidian links, incoming links, raw-source inventory, command aliases, and stale-claim markers.

Results:

- fixed one orphan page by linking [[concepts/project-distillation]] from [[entities/codex]]
- broken wiki links: none
- missing index entries: none
- the Claude model conflict remains explicitly marked for verification
- `raw/.agents` is absent while older source pages still reference its historical contents; no deletion or rewrite was performed

Next additions or research:

- restore or re-add the original `.agents` source bundle if those skill references should remain reproducible
- choose one API integration to document end to end
- research current official provider limits, pricing, and deployment options when a project decision requires them
## [2026-08-23] query | ANKAGEO project selection

Compared the internship roadmap and project options with the existing GeoIssue foundation.

Decision preserved:

- Evolve GeoIssue into an operations-oriented GIS platform combining SaaS GIS Cloud with map-based issue/event workflows.
- Keep routing, spatial analytics, and GeoJSON as differentiators.
- Defer computer vision, vehicle/person counting, and license-plate recognition to later integrations because they require separate data, model, privacy, and runtime constraints.

Created:

- [[projects/ankageo-geoissue-project-direction]]
- [[sources/ankageo-internship-materials]]

Open questions:

- Which ANKAGEO internal workflow or dataset can provide the first real pilot scenario?
- Which map and routing providers are approved for a demonstrable deployment?

## [2026-09-10] update | GeoIssue final AI-MIND handoff

Updated:

- [[projects/geoissue-full-stack-website]] with the final product, stack, architecture, decisions, migration lessons, deployment evidence, limitations, and reusable patterns.
- [[projects/GeoIssue]] as a compatibility pointer to the canonical page, avoiding duplicate project knowledge.
- [[projects/ankageo-geoissue-project-direction]] to replace the stale Firebase technology direction with PostgreSQL/JWT.
- [[concepts/identity-and-authorization]] with the single-source JWT model and existing-account migration rule.
- [[concepts/database-choice-for-small-apps]] with PostgreSQL durability and isolated migration/backup practice.
- [[concepts/agent-verification]] with the deployed frontend/API/database evidence chain.
- [[concepts/production-full-stack-method]] with the cloud cost-approval gate.
- [[concepts/geolocation-fallbacks]] and [[concepts/persistent-seed-data]] as reusable engineering concepts.
- [[entities/google-cloud-run]] and [[entities/vercel]] with platform-boundary lessons.
- [[index]] with all new and materially updated page summaries.

Key takeaways:

- One API-backed JWT session model is easier to reason about and test than hybrid identity providers.
- Relational report ownership/status/geography justified PostgreSQL as the durable source of truth.
- GPS must expose uncertainty and preserve manual selection; browser tests do not prove physical-device accuracy.
- A Vercel page is not deployment evidence until the configured API, CORS, PostgreSQL health, and real data response are checked.
- Stable IDs, conflict-safe seed updates, backups, and migration counts protect persistent test data.
- Cloud billing and infrastructure creation require an explicit cost gate and shutdown plan.

Source limitation:

- The GeoIssue repository folder was not mounted in the current AI-MIND-only workspace. This handoff uses the verified repository work, tests, deployment checks, and decisions recorded in the preceding Codex conversation; no secrets or `.env` values were copied.
