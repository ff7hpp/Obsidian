# GeoIssue Full-Stack Website

GeoIssue is a React/Vite + Express website for geographically anchored issue reporting. Its durable product and engineering reference is split into a current-state evidence report and a target full-stack specification.

Snapshot status: inspected on 2026-08-21 against the GitHub `main` branch at a commit dated 2026-08-19. Production behavior still requires deployment evidence.

## Product Core

- Authenticated users create and manage location-based reports.
- A report requires explicit coordinates; a map center is never treated as a report location.
- Neon/PostgreSQL is the durable store when configured; the in-memory fallback is local-development behavior only.
- Firebase Auth provides identity; server-side authorization must decide ownership and roles.

## Current Boundary

The MVP has Arabic RTL UI, Firebase email/password auth, CRUD, Leaflet/OpenStreetMap mapping, Nominatim search, Express validation/security middleware, and local health/build verification. It does not yet provide complete i18n, settings, Admin/User separation, RBAC, audit logs, production CI/CD, or full observability.

## Full-Stack Target

The target blueprint covers product scope, functional and non-functional requirements, roles, information architecture, design system, localization, API contracts, database model, geolocation provider abstraction, security, testing, deployment, operations, and release gates.

## Reusable Engineering Pattern

Use the lifecycle: clarify, refine, specify, plan, gather facts, implement vertical slices, test, review, harden, optimize, automate, observe, launch, document, and migrate. Every important claim needs test, browser/runtime, security, performance, or launch evidence.

## Related

- [[projects/assistive-communication-architecture]]
- [[projects/assistive-communication-data-model]]
- [[concepts/product-engineering-lifecycle]]
- [[concepts/agent-verification]]
- [[concepts/identity-and-authorization]]
- [[concepts/database-choice-for-small-apps]]
- [[sources/geoissue-full-stack-documents]]

## Source Notes

- [[sources/geoissue-full-stack-documents]]
- `C:/Users/aa77m/Downloads/PROJECTS/obsidian/ai_mind/raw/geoissue/FULL_STACK_READINESS.md`
- `C:/Users/aa77m/Downloads/PROJECTS/obsidian/ai_mind/raw/geoissue/WEBSITE_FULL_STACK_SPEC.md`
