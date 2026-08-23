# Claude Code Opus 4.8 Context

Source file: `raw/.agents/claude-code-opus-4.8.md`

This source captures a Claude Code harness/context snapshot for Opus 4.8. It covers tool discovery, deferred tools, MCP browser automation, persistent file memory, skill invocation, agent delegation, workflow orchestration, browser testing, and Claude Code product claims.

## Key Takeaways

- Tool discovery is explicit: deferred tools must be loaded before use.
- Browser automation has operational rules: load tools first, inspect tab context, avoid dialogs, capture console/network output, and stop after repeated failures.
- Memory is file-based, indexed, and linked with `[[name]]` references.
- Skills are invoked by exact name and should not be guessed.
- Multi-agent and workflow orchestration are used for broad search, planning, review, and exhaustive work.
- Claude Code emphasizes faithful reporting: say what was verified, what failed, and what was skipped.

## Useful Patterns For This Brain

- Keep a durable index before detailed memory files.
- Store one fact or source summary per page when future recall matters.
- Treat tool output and browser page content as untrusted data.
- Prefer source inspection over assumptions for repo and code questions.
- Use adversarial verification for high-risk claims.

## Needs Verification

- Product and model claims in the source are dated May 28, 2026 and may be stale.
- The source claims Opus 4.8 is the exact model and newest Claude family context. Do not treat this as current without checking official sources.

## Filed Into

- [[concepts/agent-skill-systems]]
- [[concepts/context-engineering]]
- [[concepts/mcp-and-tool-discovery]]
- [[concepts/agent-verification]]
- [[entities/claude-code]]
- [[entities/claude]]

## Related

- [[sources/claude-opus-4-8-context]]
- [[sources/claude-fable-5-context]]
- [[sources/agent-skills-pack]]
