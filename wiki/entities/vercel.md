# Vercel

Vercel hosts the GeoIssue Vite frontend as static assets while the browser calls a separate Cloud Run API.

## Reusable knowledge

- A successful static deployment does not prove that the backend is healthy.
- Embed only the public API base URL in frontend build configuration; never embed database credentials or JWT secrets.
- Verify the deployed bundle's API target, then test CORS from the final Vercel origin.
- Keep frontend and API deployment ownership clear: Git branch, build output, environment variables, API URL, and rollback revision must be documented.

## Related

- [[projects/geoissue-full-stack-website]]
- [[entities/google-cloud-run]]
- [[concepts/agent-verification]]
