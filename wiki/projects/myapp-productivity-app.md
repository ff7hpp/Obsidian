# MyApp Productivity App

Path: `C:\Users\aa77m\Downloads\PROJECTS\myapp`

Expo/React Native productivity app with multiple planning and execution screens. The repo has limited high-level documentation, so the current summary is based mainly on `package.json` and the `src/` layout.

## Visible Product Shape

Main screens suggest a planning/productivity workflow:

- Dashboard
- Plan
- Calendar Planner
- Strategic Wizard
- Focus Mode
- Trends
- Brief
- Profile Settings

## Stack

- Expo 51
- React Native 0.74
- React Navigation bottom tabs
- SQLite
- Zustand
- NativeWind
- Victory charts
- Jest Expo / testing-library
- Lucide React Native

## Useful Patterns

- Good example of a mobile productivity stack centered on local persistence and screen-driven flows.
- The combination of SQLite, Zustand, navigation, and analytics/trends screens is worth remembering for future mobile app ideas.
- There is at least one tested service path: `midnightAutomation`.

## Caveat

The repo has less durable documentation than `assistive-communication` or `Goal-Tracker`, so it is a weaker source of operating rules. Use it more as a stack and screen-pattern reference than as a process reference.

## Source Notes

Derived from [[sources/projects-workspace-audit-2026-07-29]], `package.json`, and the `src/` structure.

## Related

- [[concepts/design-to-code-workflow]]
- [[concepts/product-engineering-lifecycle]]
- [[concepts/source-driven-development]]
