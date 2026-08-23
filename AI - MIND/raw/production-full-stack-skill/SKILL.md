---
name: production-full-stack
description: Audit, plan, build, or verify a software product as an evidence-backed production full-stack system across frontend, APIs, data, authentication, authorization, security, delivery, reliability, and operations. Use when the user asks for a complete or production-ready full-stack app, MVP readiness, or wants to avoid frontend-only or fake implementations. Adapt layers to the project's scope and risk; do not use for an explicitly isolated UI-only task.
---

# Production Full Stack

Treat "full-stack" as an operational claim, not a folder structure. A frontend, an API file, and a database dependency do not prove a working product. Require observable evidence across every layer the project actually needs.

## Establish the mode

- **Audit/report:** inspect and verify without editing unless the user also asks for changes.
- **Plan/specify:** define actors, permissions, data, interfaces, non-functional requirements, acceptance criteria, and phased delivery.
- **Build/change:** implement the smallest complete vertical slice across all applicable layers, then verify it.
- **Verify/release:** exercise the real UI, API, authentication, authorization, persistence, deployment, and failure paths.

Respect repository instructions and existing technology choices. Do not add paid services, production resources, elevated roles, destructive migrations, or external deployments without authorization.

## Classify before selecting layers

Identify the product type, actors, sensitive data, expected traffic, deployment target, and failure impact. Read [references/layer-checklist.md](references/layer-checklist.md) when performing an audit, planning a new product, or declaring production readiness.

Do not add infrastructure merely to fill a checklist. Caching, a CDN, queues, or load balancing may be unnecessary for a small MVP; record them as **N/A with a reason**. Conversely, multi-user systems cannot mark authorization or privacy as N/A.

## Evidence states

Use exactly these readiness states:

- **VERIFIED:** exercised successfully with current observable evidence.
- **IMPLEMENTED, NOT VERIFIED:** code/config exists but the real path was not exercised.
- **MISSING:** required for the agreed scope but absent.
- **N/A:** not applicable, with a project-specific reason.
- **BLOCKED:** verification cannot continue; name the missing permission, credential, environment, or decision.

Never infer completion from file names, generated UI, a successful build, or provider configuration alone. Separate:

- build success from runtime success;
- authentication from authorization;
- database connection from durable CRUD and migration safety;
- responsive CSS from device usability;
- deployment from monitored, reversible production operation.

## Workflow

1. Define the product outcome, users, roles, core journeys, data ownership, and abuse cases.
2. Select the applicable production layers using the checklist.
3. Create a traceability matrix from requirements to UI, API, database, permission, test, and telemetry evidence.
4. In build mode, deliver small vertical slices that include validation, authorization, persistence, error handling, and tests.
5. Verify happy paths, invalid input, unauthenticated access, forbidden cross-user access, external-service failure, and recovery behavior.
6. Report current evidence, gaps, priorities, and explicit release exit criteria.

## Non-negotiable design rules

- For multi-user products, define a server-enforced role and permission matrix. UI visibility is not authorization.
- For persisted data, use migrations, constraints, indexes based on measured queries, retention rules, and a tested backup/restore path.
- For APIs, define contracts, validate at boundaries, sanitize public responses, use consistent errors, and add pagination where collections can grow.
- For authentication, cover enrollment, sign-in/out, verification or recovery where appropriate, account lifecycle, and session/token handling.
- For admin capabilities, separate operational roles from ordinary users and keep an audit trail of sensitive changes.
- For external services, configure timeouts and bounded retries, expose degraded states, and avoid unbounded in-memory caches.
- For production, separate environments and secrets; require automated quality gates, a reversible deployment, structured telemetry, and an incident path.
- For sensitive or destructive behavior, verify least privilege and require the user's authorization before changing external state.

## Readiness artifact

When the user asks for a reusable file or project standard, copy and customize [assets/FULL_STACK_READINESS_TEMPLATE.md](assets/FULL_STACK_READINESS_TEMPLATE.md) as `FULL_STACK_READINESS.md` in the project root. Preserve the evidence-state vocabulary and remove irrelevant examples.

A useful final report contains:

1. release verdict and scope;
2. actor/permission matrix;
3. layer readiness matrix;
4. functional and non-functional requirements;
5. data and API inventory;
6. executed verification evidence;
7. P0/P1/P2 gaps;
8. measurable exit criteria.

Do not say "production-ready" while a required P0 item is MISSING, BLOCKED, or merely IMPLEMENTED, NOT VERIFIED.
