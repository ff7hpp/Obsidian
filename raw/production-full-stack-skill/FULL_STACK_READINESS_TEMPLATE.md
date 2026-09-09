# Full-Stack Readiness

## Scope

- Project:
- Product type:
- Target users:
- Environment reviewed:
- Review mode: audit / plan / build / release
- Review date:
- Release verdict: READY / NOT READY / READY WITH ACCEPTED RISKS

## Evidence legend

- VERIFIED
- IMPLEMENTED, NOT VERIFIED
- MISSING
- N/A — reason required
- BLOCKED — blocker required

## Product and roles

### Core journeys

| Journey | Actor | Expected outcome | Acceptance evidence |
|---|---|---|---|
|  |  |  |  |

### Permission matrix

| Action/resource | Visitor | User | Operator/Admin | Super Admin |
|---|---:|---:|---:|---:|
|  |  |  |  |  |

## Architecture

| Layer | Technology/provider | Responsibility | Data/trust boundary |
|---|---|---|---|
| Frontend |  |  |  |
| API/backend |  |  |  |
| Database/storage |  |  |  |
| Authentication |  |  |  |
| Hosting/compute |  |  |  |

## Layer readiness

| Layer | Required? | State | Current evidence | Gap or N/A reason | Owner/next action |
|---|---:|---|---|---|---|
| Product requirements |  |  |  |  |  |
| Frontend/UX/accessibility |  |  |  |  |  |
| APIs/backend logic |  |  |  |  |  |
| Database/storage |  |  |  |  |  |
| Authentication/authorization |  |  |  |  |  |
| Security/abuse controls |  |  |  |  |  |
| Tests/quality gates |  |  |  |  |  |
| Hosting/deployment/cloud |  |  |  |  |  |
| Version control/CI/CD |  |  |  |  |  |
| Performance/cache/CDN/load balancing |  |  |  |  |  |
| Reliability/backups/recovery |  |  |  |  |  |
| Observability/error tracking |  |  |  |  |  |
| Privacy/operations/documentation |  |  |  |  |  |

## Functional requirements

| ID | Requirement | Priority | UI | API | Data | Permission | Test | State |
|---|---|---|---|---|---|---|---|---|
| FR-001 |  | P0 |  |  |  |  |  |  |

## Non-functional requirements

| ID | Requirement | Measurable target | Verification | State |
|---|---|---|---|---|
| NFR-001 | Availability |  |  |  |
| NFR-002 | Performance |  |  |  |
| NFR-003 | Security |  |  |  |
| NFR-004 | Accessibility |  |  |  |
| NFR-005 | Recovery |  |  |  |

## Data model and lifecycle

- System of record:
- Personal/sensitive data:
- Main entities:
- Ownership rules:
- State transitions:
- Retention/deletion:
- Migration strategy:
- Backup/restore evidence:

## API inventory

| Method/path | Public/protected | Permission | Validation | Pagination/idempotency | Test evidence |
|---|---|---|---|---|---|
|  |  |  |  |  |  |

## Verification evidence

| Date | Environment | Journey/check | Result | Evidence or blocker |
|---|---|---|---|---|
|  |  |  |  |  |

## Release gaps

### P0 — blocks release

- [ ]

### P1 — required soon

- [ ]

### P2 — later improvement

- [ ]

## Release exit criteria

- [ ] Every applicable layer is VERIFIED or has an explicitly accepted risk.
- [ ] No P0 item remains open.
- [ ] Critical user journeys and permission boundaries pass in the target environment.
- [ ] Deployment, migration, backup/restore, monitoring, and rollback evidence exists.
- [ ] Temporary test data and credentials are removed.
