# Claude Code

Claude Code appears in the raw sources as an agentic coding environment with tool discovery, shell/file tools, skills, browser automation, memory, workflows, and agent delegation.

## Useful Patterns

- Use explicit skill invocation and avoid guessing unavailable skills.
- Load deferred tool schemas before calling tools.
- Prefer source inspection and faithful reporting for code work.
- Use browser automation carefully: inspect context, avoid dialogs, capture console/network data, and stop after repeated failures.
- Use multi-agent or workflow orchestration for broad search, planning, and deep review.

## Caveat

Claude Code tool names and behaviors are environment-specific. Codex should reuse the patterns only when matching Codex tools exist.

## Source Notes

Derived from [[sources/claude-code-opus-4-8-context]].

## Related

- [[entities/claude]]
- [[entities/codex]]
- [[concepts/agent-skill-systems]]
- [[concepts/mcp-and-tool-discovery]]
