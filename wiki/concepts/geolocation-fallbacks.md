# Geolocation Fallbacks

Browser geolocation is a best-effort sensor, not a promise of exact GPS. A trustworthy location flow makes uncertainty visible and preserves a user-controlled fallback.

## Reusable pattern

- Request location only from HTTPS or localhost and explain the browser permission.
- Use high-accuracy mode when appropriate, but set a timeout and handle permission, unavailable-position, and timeout errors separately.
- Store latitude, longitude, and reported accuracy; never invent coordinates or silently use the map center.
- Draw an accuracy radius or equivalent explanation so users understand uncertainty.
- Keep a manual map pin/search flow available when GPS fails, is denied, or is too inaccurate.
- Validate ranges and ownership on the server; treat browser coordinates as untrusted input.
- Test both successful coordinates and explicit error/fallback branches.

## GeoIssue lesson

Browser tests verified coordinate selection, accuracy display, GPS error messages, and manual pin selection. They do not prove a physical phone's accuracy; that requires HTTPS and a real-device test.

## Related

- [[projects/geoissue-full-stack-website]]
- [[concepts/agent-verification]]
