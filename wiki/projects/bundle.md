# BUNDLE

BUNDLE is a dependency-free PowerShell project packager for creating AI-ready snapshots and review reports from codebases.

## Current architecture

- Single `BUNDLE.ps1` entry point with language profiles and configurable file discovery.
- Excludes dependencies, build output, binaries, lock files, environments, caches, and common private files.
- Produces Markdown, text, JSON, or HTML output.
- Includes lightweight imports/exports, complexity, duplication, dependency-graph, cache, parallel-processing, and risk analysis features.

## Security

Secret-pattern scanning and optional `-Redact` are built into the workflow. This reduces accidental disclosure risk but does not replace human review of generated bundles.

## Tests and maturity

No independent automated test suite or CI evidence was found in the inspected project files. The documented verification path is `-DryRun`, controlled sample runs, and review of generated output. Treat BUNDLE as a useful developer tool with a strong safety direction, but not as independently production-verified.

## Related

- [[sources/local-projects-review-2026-09-10]]

- [[concepts/agent-verification]]
- [[concepts/project-distillation]]
