# MedLinka

MedLinka is an academic healthcare platform concept combining AI symptom triage, doctor consultation booking, pharmacy ordering, medication reminders, and a static administrator dashboard.

## Observed implementation and documentation conflict

Checked 2026-09-10: `Backend/routes/auth.js` and `Backend/routes/admin.js` use Express routers. `Backend/models/User.js` uses Mongoose schemas and bcrypt password hashing. This is evidence of a Node.js/Express implementation with MongoDB models; no running database was verified.

The previous update relied too heavily on architecture documentation. The following are documentation claims, not verified implementation facts:

- Documented as a modular FastAPI/Uvicorn REST backend with separated routers for auth, AI, appointments, pharmacy, reminders, and admin operations.
- SQLite is the documented data store and Gemini is wrapped as an external AI provider.
- The admin interface is static HTML served alongside the backend; a patient-facing client and payments are explicitly deferred.
- Docker is described as the intended deployment shape.

## Security

The architecture claims JWT authentication, HTTPS, PII protection, and admin role checks. Health data, AI output, and credentials require strict validation, auditability, rate limits, and secret handling before any production claim.

## Tests and maturity

The inspected material is primarily README and architecture documentation. A runnable root manifest, current test command, and passing test evidence were not found in the inspected project snapshot. Record this as an academic prototype/documented design, not verified production software.

## Open questions

- Where are the current backend entry point, dependency manifest, migrations, and tests?
- Needs verification: reconcile the FastAPI/SQLite document with the Express/Mongoose implementation and the existing `Frontend/app`, `Frontend/doctor`, and `Frontend/pharmacy` interfaces.
- How are medical safety, consent, retention, audit logs, and human escalation handled?

## Related

- [[sources/local-projects-review-2026-09-10]]

- [[concepts/identity-and-authorization]]
- [[concepts/agent-verification]]
