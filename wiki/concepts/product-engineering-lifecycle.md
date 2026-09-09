# Product Engineering Lifecycle

This brain's default product-engineering lifecycle is: clarify, refine, specify, plan, prepare context, source facts, implement incrementally, test, review, harden, optimize, automate, observe, launch, document, and migrate.

## Default Flow

1. Clarify intent with a focused interview when the ask is vague.
2. Refine the idea into problem, audience, assumptions, MVP, and non-goals.
3. Write a spec for significant apps, websites, features, or repo changes.
4. Break the spec into ordered tasks and checkpoints.
5. Gather project context, rules, relevant files, errors, and docs.
6. Check official sources for framework/library/API behavior.
7. Implement in small vertical slices.
8. Write tests or repros before changing important behavior.
9. Debug from reproduction to root cause, not guesses.
10. Review correctness, simplicity, architecture, security, performance, and verification.
11. Prepare launch with CI/CD, monitoring, rollback, and documentation.
12. Preserve decisions with ADRs and source-linked wiki pages.

## When To Use

Use this lifecycle for apps, websites, product ideas, repos, prototypes, automations, API-backed products, and major code changes.

## Source Notes

Derived from [[sources/agent-skills-pack]].

## Related

- [[concepts/agent-skill-systems]]
- [[concepts/context-engineering]]
- [[concepts/source-driven-development]]
- [[concepts/design-to-code-workflow]]
- [[concepts/agent-verification]]
