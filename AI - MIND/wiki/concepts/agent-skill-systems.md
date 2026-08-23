# Agent Skill Systems

Agent skill systems package reusable agent behavior into named workflows with trigger conditions, instructions, constraints, and verification rules.

## Why It Matters

For this product/code/app brain, skills make future work faster because Codex can choose a known operating mode instead of rediscovering process every session. A good skill says when to use it, how to proceed, what to avoid, and how to verify the result.

## Useful Skill Pattern

- `name`: short kebab-case identifier.
- `description`: trigger-oriented summary.
- `when to use`: situations where the skill applies.
- `process`: ordered steps.
- `boundaries`: what the skill must not do.
- `verification`: how to prove the result.
- `related skills`: what to combine it with.

## Skill Lifecycle For App Work

Use [[concepts/product-engineering-lifecycle]] as the main map:

- Clarify intent with interviewing and idea refinement.
- Specify and plan before large implementation.
- Prepare context and sources.
- Implement incrementally.
- Verify with tests, browser checks, review, security, performance, and launch checks.
- Record decisions and migrations.

## Source Notes

Derived from [[sources/agent-skills-pack]] and [[sources/caveman-skill]].

## Related

- [[concepts/context-engineering]]
- [[concepts/source-driven-development]]
- [[concepts/agent-verification]]
- [[entities/codex]]
- [[entities/claude-code]]
