# Assistive Communication Architecture

Base project: [[projects/assistive-communication]]

This page captures the repository architecture observed on 2026-08-21. The latest inspected commit was dated 2026-07-28; deployment and notification-delivery status require separate live verification.

## Current Stack

- Next.js App Router
- React 19
- TypeScript
- Tailwind CSS 4
- Firebase Auth
- Firestore
- Firebase Admin for trusted notification routes
- OneSignal Web Push
- Zod
- Vitest
- Playwright

## Application Structure

- `src/app`
  - route groups for public, patient, caregiver, and API routes
- `src/components`
  - caregiver, patient, shared, and UI components
- `src/features`
  - auth, notifications, offline, pairing, requests
- `src/lib`
  - env, firebase, notifications, pairing, requests, validation, server
- `src/tests`
  - rules, production-safety, and config tests

## Enforcement Boundaries

- client route guards improve navigation safety only
- Firestore rules are the main data authorization boundary
- Firebase Admin routes re-read trusted data before push delivery
- OneSignal is an additional channel, not the source of truth

## Current Delivery Model

- patient creates one Firestore request document
- linked caregivers receive the same request by live listener
- authenticated server route sends a push notification separately
- notification idempotency and rate limiting are server-enforced

## Operational Strengths

- strong project docs
- strong environment separation
- tests for auth, components, request flow, and Firestore rules
- explicit security model
- clear route map

## Current Limits

- no offline request queue
- OneSignal web identity verification support is limited
- some future hardening remains, such as App Check and CSP rollout
- current product behavior assumes the web implementation first

## Source Notes

Derived from [[projects/assistive-communication]], `README.md`, `docs/firebase-auth.md`, `docs/security.md`, `docs/route-map.md`, and the `src/` structure.

## Related

- [[projects/assistive-communication-product]]
- [[projects/assistive-communication-data-model]]
- [[projects/assistive-communication-transformation-paths]]
- [[concepts/product-transformation-paths]]
- [[concepts/identity-and-authorization]]
- [[concepts/database-choice-for-small-apps]]
