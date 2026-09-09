# Persistent Seed Data

Seed data is useful only when it behaves like real database data and can be safely repeated.

## Reusable pattern

- Use stable deterministic IDs for fixture records.
- Insert with conflict handling and update only the intended fixture fields.
- Keep fixture authors separate from real accounts and never use seed data as a hidden frontend array.
- Verify exact counts, relationships, geographic ranges, statuses, and API visibility after seeding.
- Run migrations and seed checks against an isolated database or a disposable backup during verification.
- Preserve existing records; never make a destructive reset the default developer command.

## GeoIssue lesson

The development seed maintains 30 mapped reports/issues and remains available through the API after refresh, logout/login, server restart, and migration reruns. Public totals can be lower than the fixture count because status and permission rules intentionally hide some records.

## Related

- [[projects/geoissue-full-stack-website]]
- [[concepts/database-choice-for-small-apps]]
- [[concepts/agent-verification]]
