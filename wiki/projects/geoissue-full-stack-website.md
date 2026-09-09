# GeoIssue Full-Stack Website

GeoIssue is a civic issue-reporting platform: a person selects a real location, submits a problem report, and the system groups, displays, tracks, and moderates geographic issues on a map.

## Verified final state

- Frontend is deployed at `https://geo-issue.vercel.app/`.
- Backend API is deployed on Google Cloud Run at `https://geoissue-api-sx3roy7mbq-ew.a.run.app` and reports `healthy` with `database: postgresql`.
- The Vercel frontend retrieves public issue data from the Cloud Run API.
- Public filtering returned 18 visible issues during the final check; visibility is governed by status and permission rules, so this is not the total report count.
- GitHub branch `A` contains the final work; `main` and `B` were intentionally left unchanged.
- Final GitHub branch: `https://github.com/ff7hpp/GeoIssue/tree/A`.
- The project is a tested demonstration/staging deployment, not a claim of unlimited production scale.

## Product and users

- Visitors explore public issues and the map.
- Users register, sign in, submit reports, view their own reports, and track status.
- Reviewers/admins manage moderation and protected operations through server-enforced roles.

## Stack

- React + Vite + JavaScript
- Node.js + Express REST API
- PostgreSQL (local Docker and cloud PostgreSQL)
- JWT email/password authentication
- Scrypt password hashing with legacy PBKDF2 verification and rehashing
- Leaflet + OpenStreetMap and backend geocoding
- Docker/Docker Compose
- Vercel frontend + Google Cloud Run API
- Vitest, Playwright, GitHub

## Architecture

The browser calls an Express API. The API validates input, authenticates a JWT, reloads the user from PostgreSQL, applies ownership/role checks, and uses repositories for reports, issues, comments, categories, and users. PostgreSQL is the durable source of truth. Leaflet displays public issues; browser geolocation supplies a device coordinate and accuracy radius, while manual map selection remains the fallback.

## Important decisions

1. **PostgreSQL instead of Firebase Auth:** reports have relational ownership, categories, statuses, moderation, and geographic fields. One database plus one server authorization boundary reduced hybrid-auth confusion.
2. **JWT verified on the backend:** client route guards are navigation help only; every protected API request revalidates the token and reloads the current user/status.
3. **Explicit coordinates:** the map center is never silently treated as the report location. GPS can fail or be approximate, so the UI exposes accuracy and supports a manual pin.
4. **Idempotent seed fixtures:** stable IDs and conflict updates preserve existing records while making repeatable development data possible. The verified fixture set contains 30 reports and 30 mapped issues.
5. **Cost gate before cloud provisioning:** billing, secrets, registries, and services were treated as reviewable infrastructure decisions rather than harmless setup.

## Problems and solutions

- Hybrid Firebase/JWT sessions caused inconsistent login, refresh, and identity behavior. The client now uses one API-based session flow and the server accepts only its JWT.
- Existing Firebase-era `firebase_uid` data was renamed to neutral `auth_uid` without deleting users or reports. Existing accounts without a password can be migrated with a one-time password migration command while preserving role and report ownership.
- Legacy PBKDF2 hashes remain verifiable, then are upgraded to Scrypt after a successful login.
- A rate limiter that counted successful registrations made repeated browser tests look like auth failures. Successful requests are skipped; failed attempts remain limited.
- A stale E2E fixture title made a correct seed look broken. The filter test now derives its search title from the resolved record instead of hard-coding a mutable fixture name.

## Verification evidence

- 48/48 backend tests passed.
- 16/16 Playwright browser tests passed, including auth persistence, RBAC, GPS accuracy/errors, manual pin fallback, and mobile RTL.
- Database migration preserved counts before/after; the 30 stable seed reports/issues remained present.
- Production Docker API, frontend, and Cloud Run images built successfully.
- Public Cloud Run health and PostgreSQL connectivity were verified.
- Client and server dependency audits reported no vulnerabilities at the final check.

## Deployment lessons and limitations

- A green Vercel page alone proves only that static assets load; verify the actual API health endpoint, CORS, database identity, and a real data response.
- Do not put database passwords, JWT secrets, service accounts, or `.env` values in Git, screenshots, prompts, or build logs.
- A local PostgreSQL volume is not the cloud database. Back up and restore into an isolated target before migration; never reset or reseed the only copy.
- Physical GPS accuracy still depends on the device, permission state, HTTPS/localhost, and environment. Browser tests prove handling, not a guaranteed meter-level location.
- The frontend bundle remains larger than the preferred 500 KB warning threshold; code splitting is future optimization, not a correctness fix.
- Generated diagram exports may lag behind updated editable sources when Graphviz is unavailable; mark that evidence boundary instead of presenting stale images as current.

## Reusable patterns

- Treat `product → API → database → auth → security → tests → deployment → operations` as one verification chain.
- Preserve stable IDs and ownership during schema/provider migrations.
- Test denied authorization paths as deliberately as successful paths.
- Keep secrets and mutable infrastructure outside the repository; document the shape, not the values.
- Use a cost/approval gate before enabling cloud billing or creating resources.

## Related

- [[projects/ankageo-geoissue-project-direction]]
- [[concepts/identity-and-authorization]]
- [[concepts/database-choice-for-small-apps]]
- [[concepts/geolocation-fallbacks]]
- [[concepts/persistent-seed-data]]
- [[concepts/agent-verification]]
- [[concepts/production-full-stack-method]]
- [[sources/geoissue-full-stack-documents]]

## Evidence note

This update is distilled from the verified GeoIssue repository work and live checks recorded in the preceding Codex conversation. The repository folder was not mounted in the current AI-MIND-only workspace, so no new source inspection was claimed during this handoff.
