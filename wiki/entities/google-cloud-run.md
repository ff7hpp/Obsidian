# Google Cloud Run

Cloud Run is the managed container runtime used by GeoIssue for the Express API.

## Reusable knowledge

- Build a deterministic container and validate its production environment before deployment.
- Keep the service stateless; store durable data in PostgreSQL and secrets in a secret manager, not the image.
- Configure exact frontend CORS origin, health endpoint, minimum/maximum instances, and database TLS settings.
- Verify the public service directly: health status, database identity, real data response, and authentication/CORS behavior.
- Treat enabling APIs, billing, registries, and secrets as explicit infrastructure changes with a cost gate.

## Related

- [[projects/geoissue-full-stack-website]]
- [[concepts/production-full-stack-method]]
- [[concepts/agent-verification]]
