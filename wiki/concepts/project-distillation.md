# Project Distillation

Project distillation is the practice of converting a working repository into a small, durable knowledge layer.

## Keep

- product purpose, users, and important workflows
- architecture boundaries and technology choices
- data relationships, API contracts, and authorization rules
- reusable UI and design decisions
- setup, testing, verification, deployment, and recovery lessons
- known gaps, trade-offs, and decisions that future projects may repeat

## Exclude

- complete source-code copies
- dependencies and generated output
- caches, binaries, temporary files, and screenshots without durable context
- `.env` files, service-account files, private keys, tokens, and credentials
- claims that were not verified from the repository or an authoritative source

## Workflow

1. Inspect the repository and its instructions.
2. Separate current facts, target plans, and missing evidence.
3. Summarize the product and the reusable engineering patterns.
4. Link the summary to related concepts, entities, and sources.
5. Ask what the user wants emphasized before a new ingestion.
6. Write only durable knowledge to the wiki, update the index, and append the log.
7. Use the distilled pages as context for future projects, then verify against the new repository before applying them.

## Related

- [[concepts/context-engineering]]
- [[concepts/source-driven-development]]
- [[concepts/product-engineering-lifecycle]]
- [[entities/codex]]
