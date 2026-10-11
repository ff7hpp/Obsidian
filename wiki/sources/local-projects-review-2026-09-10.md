# Local Projects Review — 2026-09-10

Scope: local snapshots under `projects/` inside AI-MIND. These folders are excluded from the AI-MIND Git repository. This review does not establish remote synchronization or live deployment health.

## Evidence

- BUNDLE: `README.md`, `ARCHITECTURE.md`, and selected `BUNDLE.ps1` sections. Packaging, optional redaction, and analysis are source observations; no execution or independent test-suite pass is claimed.
- GeoIssue: README, architecture, package scripts, and recorded checks during the preceding update: 48 server tests passed; server syntax check and client build passed with a chunk-size warning. Live deployment and browser tests were not rerun.
- Wesal: `AGENTS.md`, README, package scripts, test inventory. Four verification commands were attempted in the preceding update; unavailable local executables blocked them.
- MedLinka: architecture documentation conflicts with Express imports in `Backend/routes/auth.js` and `Backend/routes/admin.js` and Mongoose/bcrypt usage in `Backend/models/User.js`. No runnable-system verification is claimed.

## Related

- [[projects/bundle]]
- [[projects/medlinka]]
- [[projects/geoissue-full-stack-website]]
- [[projects/assistive-communication]]
- [[concepts/source-driven-development]]
