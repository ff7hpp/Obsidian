# GeoIssue Full-Stack Documents

Source summary for the two GeoIssue documents moved into `raw/geoissue/`.

The reusable `production-full-stack` Codex skill and its checklist/template are also preserved as source material in `raw/production-full-stack-skill/`.

## Sources

- `raw/geoissue/FULL_STACK_READINESS.md` — evidence-oriented readiness report for the current repository.
- `raw/geoissue/WEBSITE_FULL_STACK_SPEC.md` — comprehensive target blueprint for a production-grade website.

## Key Takeaways

- The current app is an MVP, not a complete production product.
- Arabic UI exists, but real i18n/language switching is still a requirement.
- Settings, Admin/User views, RBAC, auditability, durable database policy, CI/CD, and observability are explicit gaps.
- Maps must distinguish visual map center from an actual user-selected/GPS coordinate.
- The full-stack checklist spans product, UX, frontend, backend, data, auth, security, QA, deployment, operations, and evidence.

## Affected Pages

- [[projects/geoissue-full-stack-website]]
- [[concepts/product-engineering-lifecycle]]
- [[concepts/agent-verification]]
- [[concepts/production-full-stack-method]]

## Open Questions

- Which production map provider and commercial plan will be selected?
- Should moderation be a separate role or an Admin permission set?
- Which deployment host, error tracker, and notification channel will be approved?
