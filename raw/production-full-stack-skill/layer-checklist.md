# Adaptive production layer checklist

Use this reference to decide what a real full-stack claim means for the current product. Select only applicable layers, but give every omitted layer an explicit N/A reason.

## 1. Product and requirements

- Actors, roles, goals, ownership, lifecycle, acceptance criteria, edge cases, and abuse cases are defined.
- Functional requirements map to UI, API, data, permissions, tests, and telemetry.
- Non-functional targets are measurable rather than words such as "fast" or "secure".

Verify with an agreed scope, permission matrix, lifecycle diagram or table, and release exit criteria.

## 2. Frontend and user experience

- Real data and errors come from the backend; no production journey depends on hardcoded success.
- Loading, empty, validation, error, offline/degraded, and permission-denied states exist.
- Responsive use, keyboard navigation, focus, labels, contrast, and localization are checked.
- Client-side route guards improve UX but never replace server authorization.

Verify key journeys in a real browser at representative desktop and mobile sizes.

## 3. APIs and backend logic

- Contracts, validation, authorization, idempotency where needed, consistent errors, and bounded payloads exist.
- Collection endpoints have pagination/filtering/sorting when growth is plausible.
- Public and privileged response shapes are separated.
- External calls have timeouts, bounded retries, and safe failure behavior.

Verify success, invalid input, unauthenticated, forbidden, missing-resource, conflict, oversized-input, and dependency-failure paths.

## 4. Database and storage

- Schema ownership, migrations, constraints, indexes, transactions, timestamps, and deletion/retention semantics are explicit.
- Files use object storage rather than database blobs unless justified.
- Development fallback storage must fail closed in production.
- Backup, restore, and migration rollback or recovery are documented and tested.

Verify persistence across restart, concurrent or conflicting updates when relevant, data isolation, and restore evidence.

## 5. Authentication and authorization

- Enrollment, sign-in/out, recovery, verification, account disable/delete, and session/token behavior match product risk.
- Every protected server operation checks role, ownership, state, and tenant/organization where applicable.
- Admin privileges come from a trusted server-side source.
- Permission changes and sensitive actions are auditable.

For multi-user systems, cross-user and privilege-escalation tests are mandatory.

## 6. Security and abuse resistance

- Threat boundaries and sensitive assets are named.
- Input validation, parameterized queries, output encoding, restricted CORS, security headers, secret handling, dependency review, and safe errors are present.
- Rate limits and abuse controls protect public, authentication, search, upload, and costly endpoints as appropriate.
- Public responses minimize personal data.

Verify headers, origin behavior, oversized/invalid payloads, dependency findings, secret exclusion, and common authorization attacks.

## 7. Testing and quality

- Static checks, unit tests, API/integration tests, and critical E2E journeys exist.
- Authorization, migrations, failure paths, and regressions are automated.
- Test data is isolated and cleaned up.
- Quality gates run reproducibly from a clean checkout.

Coverage percentage is secondary to meaningful critical-path and invariant coverage.

## 8. Hosting, deployment, and cloud compute

- Development, staging, and production are separated.
- Runtime, domain, HTTPS, environment variables, secret storage, migrations, and health checks are defined.
- Deployment is repeatable and reversible.
- Cost limits and provider dependencies are understood.

Cloud compute is required only when the product needs a hosted runtime. Name the provider and runtime rather than saying "cloud" generically.

## 9. Version control and CI/CD

- The repository has reproducible dependency installation and reviewed lockfiles.
- CI runs lint/type checks/tests/build/security checks on relevant changes.
- Protected release branches, preview or staging verification, and rollback procedures exist.
- Production credentials are not used in ordinary CI tests.

## 10. Performance, caching, CDN, and load balancing

- Measure before adding infrastructure.
- Set budgets for user-visible performance and API latency.
- Add bounded caching only for measured read patterns; define invalidation and memory limits.
- Use a CDN for static/global delivery when it materially helps.
- Use load balancing only when multiple runtime instances or availability requirements justify it.

For a small MVP, CDN or load balancing can be N/A, but unbounded list queries and caches are still defects.

## 11. Reliability and availability

- Define expected availability, recovery objectives, dependency behavior, timeouts, retries, and graceful degradation.
- Health/readiness checks reflect real dependencies.
- Backups and restore are tested.
- Background work is idempotent and observable when present.

## 12. Observability and error tracking

- Structured logs use stable event names and request/correlation IDs without secrets or raw personal data.
- Error rate, request rate, latency percentiles, and external dependency health are visible.
- Production errors reach a tracking system.
- Alerts are actionable, symptom-based, and linked to a runbook.

## 13. Privacy, compliance, and operations

- Privacy notice, terms where applicable, retention, export, correction, and deletion behavior are defined.
- Runbooks cover deployment, rollback, migration, restore, key rotation, and incidents.
- Ownership and support paths are explicit.

## Project-risk adaptation

- **Static public site:** backend, database, and auth can be N/A; deployment, accessibility, security headers, performance, and monitoring still matter.
- **Single-user local tool:** cloud, CDN, and multi-user RBAC may be N/A; local data integrity, backups, and packaging still matter.
- **Authenticated CRUD MVP:** frontend, API, database, auth, authorization, security, tests, deployment, backups, and observability are required.
- **Payments, health, government, children, or other sensitive data:** require stronger threat modeling, auditability, privacy, recovery, access control, and human approval gates.
