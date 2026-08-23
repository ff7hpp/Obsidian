# Product Transformation Paths

Product transformation paths describe how the same product moves between delivery shapes without losing its core product model.

## Stable Across Transformations

- user roles
- core entities and relationships
- request lifecycle
- permissions and trust boundaries
- product language and mental model
- validation rules

## Usually Changes Across Transformations

- navigation model
- layout and interaction density
- notification surfaces
- offline strategy
- device permissions
- local persistence details
- deployment and release flow

## Typical Transformations

- concept -> full-stack web app
- full-stack web app -> web app with cleaner product boundaries
- web app -> Android app
- web app -> iOS app
- Firebase backend -> Supabase backend
- responsive web dashboard -> native caregiver mobile experience

## For This Brain

When a project is important enough to be reused across stacks, keep four durable views:

- product
- data model
- architecture
- transformation paths

This lets Codex rebuild the same product in another stack without rediscovering the domain from scratch.

## Related

- [[concepts/design-to-code-workflow]]
- [[concepts/context-engineering]]
- [[projects/assistive-communication]]
