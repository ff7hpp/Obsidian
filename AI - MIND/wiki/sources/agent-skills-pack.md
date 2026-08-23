# Agent Skills Pack

Source files:

- `raw/.agents/all-24-skills/1-using-agent-skills.md`
- `raw/.agents/all-24-skills/2-interview-me.md`
- `raw/.agents/all-24-skills/3-idea-refine.md`
- `raw/.agents/all-24-skills/4-spec-driven-development.md`
- `raw/.agents/all-24-skills/5-planning-and-task-breakdow.md`
- `raw/.agents/all-24-skills/6-context-engineering.md`
- `raw/.agents/all-24-skills/7-source-driven-development.md`
- `raw/.agents/all-24-skills/8-incremental-implementation.md`
- `raw/.agents/all-24-skills/9-test-driven-development.md`
- `raw/.agents/all-24-skills/10-doubt-driven-development.md`
- `raw/.agents/all-24-skills/11-api-and-interface-design.md`
- `raw/.agents/all-24-skills/12-frontend-ui-engineering.md`
- `raw/.agents/all-24-skills/13-browser-testing-with-devtools.md`
- `raw/.agents/all-24-skills/14-debugging-and-error-recovery.md`
- `raw/.agents/all-24-skills/15-git-workflow-and-versioning.md`
- `raw/.agents/all-24-skills/16-code-review-and-quality.md`
- `raw/.agents/all-24-skills/17-code-simplification.md`
- `raw/.agents/all-24-skills/18-security-and-hardening.md`
- `raw/.agents/all-24-skills/19-performance-optimization.md`
- `raw/.agents/all-24-skills/20-ci-cd-and-automation.md`
- `raw/.agents/all-24-skills/21-observability-and-instrumentation.md`
- `raw/.agents/all-24-skills/22-shipping-and-launch.md`
- `raw/.agents/all-24-skills/23-documentation-and-adrs.md`
- `raw/.agents/all-24-skills/24-deprecation-and-migration.md`
- `raw/.agents/skills-lock.json`

This source bundle is a product-engineering skill system from `addyosmani/agent-skills`. It gives a complete lifecycle for app, website, and code work: clarify intent, refine ideas, write specs, plan, prepare context, use sources, implement incrementally, test, review, simplify, secure, optimize, automate, observe, launch, document, and migrate.

## Key Takeaways

- Treat skills as explicit operating modes with trigger conditions, scope boundaries, failure modes, and verification steps.
- Start unclear product work with interviewing and idea refinement before planning or coding.
- Use specs and task breakdowns to prevent vague app requests from becoming uncontrolled implementation.
- Ground framework and API choices in current official sources.
- Implement in small vertical slices that keep the app buildable and rollback-friendly.
- Verify behavior with tests, browser/runtime checks, code review, security review, performance measurement, and observability.
- Preserve decisions with documentation and ADRs so future agents can continue without re-learning context.

## Skill Catalog

- `using-agent-skills`: Discover and invoke the right skill before acting.
- `interview-me`: Ask one focused question at a time until intent is clear.
- `idea-refine`: Expand, evaluate, and sharpen raw ideas into actionable concepts.
- `spec-driven-development`: Write a living spec before a substantial build.
- `planning-and-task-breakdown`: Convert specs into ordered, implementable tasks.
- `context-engineering`: Package rules, specs, source files, errors, and summaries for better agent performance.
- `source-driven-development`: Fetch and cite official documentation before relying on memory.
- `incremental-implementation`: Land changes in small safe increments.
- `test-driven-development`: Use red/green/refactor and bug repro tests.
- `doubt-driven-development`: Send non-trivial claims through fresh-context adversarial review.
- `api-and-interface-design`: Design stable contracts, errors, pagination, filtering, PATCH, and TypeScript interfaces.
- `frontend-ui-engineering`: Build accessible, responsive, production-quality UI.
- `browser-testing-with-devtools`: Verify browser behavior with DOM, console, network, screenshots, performance, and accessibility checks.
- `debugging-and-error-recovery`: Reproduce, localize, reduce, fix root cause, guard, and verify.
- `git-workflow-and-versioning`: Keep commits atomic, branches clean, and releases versioned.
- `code-review-and-quality`: Review correctness, readability, architecture, security, performance, and verification.
- `code-simplification`: Preserve behavior while reducing unnecessary complexity.
- `security-and-hardening`: Threat model, validate boundaries, protect auth/data/integrations, and review AI features.
- `performance-optimization`: Measure first, identify bottlenecks, apply budgets, and improve frontend/backend/database performance.
- `ci-cd-and-automation`: Automate quality gates and deployments.
- `observability-and-instrumentation`: Add logs, metrics, traces, alerts, and telemetry verification.
- `shipping-and-launch`: Prepare staged rollout, monitoring, rollback, and post-launch verification.
- `documentation-and-adrs`: Record decisions, README structure, API docs, changelogs, and agent docs.
- `deprecation-and-migration`: Replace old systems with migration plans, adapters, feature flags, and expand/contract database migrations.

## Filed Into

- [[concepts/agent-skill-systems]]
- [[concepts/product-engineering-lifecycle]]
- [[concepts/context-engineering]]
- [[concepts/source-driven-development]]
- [[concepts/agent-verification]]
- [[concepts/design-to-code-workflow]]
- [[entities/github-resource-repos]]

## Open Questions

- Which of these skills should be converted into local Codex skills rather than only documented in the wiki?
- Which skills should become the default workflow for app and website builds?

## Related

- [[sources/github-resource-links]]
- [[entities/codex]]
- [[entities/claude-code]]
