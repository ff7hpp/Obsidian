# Assistive Communication Transformation Paths

Base project: [[projects/assistive-communication]]

This page explains how the same product can be transformed into another delivery shape without losing its core model.

## Web App -> Android App

What should stay the same:

- patient/caregiver roles
- pairing model
- request model
- request status lifecycle
- security invariants
- canonical six requests

What should change:

- navigation should become mobile-first native flows
- notification permissions should use Android-native patterns
- install/onboarding screens should become app onboarding flows
- local persistence and reconnect strategy should become stronger
- push integration should move from web push assumptions to Android push assumptions

Good candidate stack:

- Expo React Native + Supabase or Firebase
- or Kotlin Android if a native Android-first strategy is required

## Web App -> iOS App

Same product model as Android transformation, but:

- iOS notification permissions and delivery behavior differ
- account switching, background behavior, and install guidance become iOS-specific

Good candidate stack:

- Expo React Native for shared mobile code
- Swift only if native iOS is a deliberate product decision

## Firebase -> Supabase

What should stay the same:

- user roles
- profile split
- pairing rules
- request workflow
- caregiver authorization model

What should change:

- Firestore collections become relational tables
- Firestore rules become Postgres RLS policies
- Firebase Auth becomes Supabase Auth
- server timestamp semantics become database defaults/triggers
- cloud-function style trusted routes become server actions or API routes backed by Supabase/server code

Likely relational tables:

- users
- patients
- caregivers
- pairing_codes
- patient_caregiver_links
- requests

## Best Reuse Strategy

When rebuilding this product in another stack, reuse in this order:

1. [[projects/assistive-communication-product]]
2. [[projects/assistive-communication-data-model]]
3. [[projects/assistive-communication-architecture]]
4. then adapt implementation details

## Value To This Brain

This is the page that makes later “convert this from web to Android” requests tractable instead of vague.

## Source Notes

Derived from [[projects/assistive-communication-product]], [[projects/assistive-communication-data-model]], and [[projects/assistive-communication-architecture]].

## Related

- [[concepts/product-transformation-paths]]
- [[concepts/design-to-code-workflow]]
- [[concepts/context-engineering]]
- [[concepts/identity-and-authorization]]
- [[concepts/database-choice-for-small-apps]]
