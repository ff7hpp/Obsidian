# Agent Verification

Agent verification is the habit of proving that a claim, code change, design, or launch path works before treating it as done.

## Verification Modes

- Tests for logic and behavior.
- Browser/runtime checks for UI and web apps.
- Console, network, screenshot, accessibility, and performance checks.
- Code review across correctness, readability, architecture, security, and performance.
- Security and threat-model review for untrusted input, auth, data, external integrations, and AI features.
- Performance measurement before optimization.
- Launch checks, monitoring, rollback plans, and post-launch verification.
- Fresh-context adversarial review for high-risk claims.

## GeoIssue evidence pattern

For a deployed web app, verify three boundaries separately: static frontend availability, API health with the expected database identity, and a real API data response through the configured CORS origin. Then exercise auth persistence, denied permissions, geolocation error/fallback paths, migrations, and restart persistence. A passing build alone is not launch evidence.

## For This Brain

When a future answer relies on this wiki, use links to the pages used. When a future code or product claim is important, preserve the answer back into the wiki.

## Source Notes

Derived from [[sources/agent-skills-pack]], [[sources/claude-code-opus-4-8-context]], and [[sources/claude-design-context]].

## Related

- [[concepts/product-engineering-lifecycle]]
- [[concepts/source-driven-development]]
- [[concepts/design-to-code-workflow]]
