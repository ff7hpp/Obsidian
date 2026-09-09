# Claude Opus 4.8 Context

Source file: `raw/.agents/claude-opus-4.8.md`

This source is a broad Claude chat/product/system infrastructure snapshot. It includes product information, web-search rules, memory behavior, safety and tone policies, artifacts, tool schemas, connectors, visualizer routing, MCP handling, file creation rules, and web search/fetch behavior.

## Key Takeaways

- Current or changeable facts should be searched before answering.
- Internal connectors should be prioritized for personal or company data when available.
- Memory should be applied selectively and usually without meta-commentary.
- Artifacts and files have different routing rules: conversational answers, file creation, inline visuals, and connected MCP tools are separate modes.
- Tool outputs should be parsed structurally when possible.
- MCP and web search can be combined, but static artifacts should not try to call MCP server URLs directly.

## Useful Patterns For This Brain

- Distinguish durable wiki memory from conversational answers.
- Mark current product claims as needing verification.
- Keep source summaries traceable to raw source files.
- Route questions through `wiki/index.md` first, then page evidence, then external search only if needed.

## Needs Verification

- The source contains product/model claims and dates from June 2026. Treat those as claims from this source, not current truth.
- Some tool names and product capabilities may be environment-specific and not available in Codex.

## Filed Into

- [[concepts/context-engineering]]
- [[concepts/mcp-and-tool-discovery]]
- [[concepts/agent-verification]]
- [[entities/claude]]

## Related

- [[sources/claude-code-opus-4-8-context]]
- [[sources/claude-fable-5-context]]
