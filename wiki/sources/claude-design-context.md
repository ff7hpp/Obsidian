# Claude Design Context

Source file: `raw/.agents/claude-design.md`

This source is a large design-agent workflow for creating design artifacts with HTML and Design Components. It covers workflow, source exploration, design components, decks, docs, prototypes, PDFs, standalone HTML, Canva handoff, GitHub import, verification, screenshots, comments, and design-to-code handoff.

## Key Takeaways

- Design work starts by understanding user needs, available design systems, fidelity, constraints, and output format.
- Deliverables are built as Design Components with strict authoring rules, streaming behavior, inline styles, logic classes, props, and verification.
- The design agent treats decks, docs, prototypes, wireframes, frontend screens, PDFs, PPTX exports, and standalone HTML as separate output modes.
- GitHub and codebase context can feed design work through repo trees and file imports.
- Handoff to code should include feature overview, screens, interactions, state, design tokens, assets, and implementation notes.
- Verification is built into the workflow through preview, console checks, screenshots, and background verification.

## Useful Patterns For This Brain

- For apps and websites, store design-to-code handoff notes as first-class wiki pages.
- Preserve UI decisions, design tokens, screen lists, interaction states, and implementation mapping.
- When a source is a design system or prototype, summarize both visual language and engineering handoff.
- Treat generated design files as sources when they inform future app implementation.

## Caveat

This is Claude Design specific. Codex should adapt the principles, not follow tool names or Design Component requirements unless working in that exact environment.

## Filed Into

- [[concepts/design-to-code-workflow]]
- [[concepts/agent-verification]]
- [[concepts/mcp-and-tool-discovery]]
- [[entities/claude-design]]
- [[entities/claude]]

## Related

- [[sources/github-resource-links]]
- [[entities/github-resource-repos]]
