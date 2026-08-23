# PathPilot Goal Tracker

Path: `C:\Users\aa77m\Downloads\PROJECTS\Goal-Tracker`

Android goal-planning and progress-tracking app built with Kotlin, Jetpack Compose, Material 3, Navigation Compose, Room, and manual dependency injection.

## Product Shape

The app focuses on:

- goals
- sections and daily tasks
- dashboard summaries
- analytics
- profile and preferences

The current repo guidance says the app already has a functional structure and should be improved in small patches rather than rewritten.

## Architecture Highlights

- Single Android app module
- Compose + Material 3 UI
- Centralized navigation in `core/navigation/PathPilotApp.kt`
- Room database `pathpilot.db`, version 3
- Manual DI through `PathPilotApplication` and `DefaultAppContainer`
- ViewModels usually receive repositories directly
- User preferences persist localization, theme, onboarding, reminder defaults, and profile data

## Project Rules Worth Reusing

- Do not rewrite the app.
- Inspect only relevant files first.
- Find the smallest safe change.
- Run validation before claiming success.
- Prefer guided controls over manual text fields.
- Keep changes small: one form, one bug, one screen, one polish task.

## Known Gaps

- Manual date text fields still exist in editing flows.
- Dashboard notification icon has no behavior.
- Dashboard is home but not a true bottom-navigation item.
- Use cases exist but are inconsistently used.
- No automated tests are present.
- Room schema export is disabled.

## Value To This Brain

This project is a strong local example of disciplined Android incremental improvement. It is especially useful for future Kotlin/Compose work, safe patching strategy, project-scoped agent rules, and architecture inspection habits.

## Source Notes

Derived from [[sources/projects-workspace-audit-2026-07-29]], `PROJECT_BRIEF.md`, `AGENTS.md`, and `docs/ARCHITECTURE.md`.

## Related

- [[concepts/product-engineering-lifecycle]]
- [[concepts/agent-verification]]
- [[concepts/context-engineering]]
