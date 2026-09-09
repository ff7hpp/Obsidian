# Assistive Communication

Path: `C:\Users\aa77m\Downloads\PROJECTS\web_app\assistive-communication`

Arabic-first assistive communication web app for a non-speaking user and trusted family caregivers. The product uses Firebase Auth, Firestore, caregiver pairing, direct requests, and OneSignal notifications.

## Stack

- Next.js App Router
- React 19
- TypeScript
- Tailwind CSS 4
- Firebase client SDK
- Firebase Admin
- Firestore rules and indexes
- Playwright
- Vitest
- OneSignal
- Zod

## Useful Patterns

- Clear separation between client Firebase config and server notification credentials.
- Strong environment verification workflow with `verify:system`.
- Good supporting docs: Firebase auth, security boundaries, route map, deployment, manual testing, OneSignal Android testing.
- Explicit rule that public env vars must not contain server secrets.
- Product-specific operational docs make this a strong source for future app builds.

## Commands

```powershell
npm install
npm run dev
npm run lint
npm run typecheck
npm test
npm run test:rules
npm run test:e2e
npm run build
npm run verify:system
```

## Value To This Brain

This is one of the strongest local examples of a serious web app with auth, data rules, notifications, documentation, verification, and deployment context. Use it as a reference for future app architecture, Firebase integration, environment setup discipline, and production-readiness checks.

## Deep Pages

- [[projects/assistive-communication-product]]
- [[projects/assistive-communication-data-model]]
- [[projects/assistive-communication-architecture]]
- [[projects/assistive-communication-transformation-paths]]

## Source Notes

Derived from [[sources/projects-workspace-audit-2026-07-29]] and direct repository files including `README.md`, `package.json`, and the `docs/` folder.

## Related

- [[concepts/product-engineering-lifecycle]]
- [[concepts/source-driven-development]]
- [[concepts/agent-verification]]
- [[concepts/product-transformation-paths]]
- [[entities/github-resource-repos]]
