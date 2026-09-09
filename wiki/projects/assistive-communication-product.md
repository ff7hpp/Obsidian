# Assistive Communication Product

Base project: [[projects/assistive-communication]]

This page captures the product model of `assistive-communication` independent of the current web implementation, so it can be rebuilt later as another web app, Android app, or iOS app.

## Product Purpose

Arabic-first assistive communication product for a non-speaking user and trusted family caregivers. The patient can send one-tap requests, and caregivers receive and manage them in real time.

## Roles

- patient
- caregiver

## Core Product Flows

- patient setup
- caregiver registration and login
- patient request submission
- real-time caregiver request inbox
- caregiver acknowledgement and completion
- patient-caregiver pairing through a short-lived code
- account switching
- notification opt-in for caregivers

## Canonical Patient Requests

- water
- food
- bathroom
- pain
- help
- come to me

## Current Product Boundary

The current release includes:

- Firebase authentication
- Firestore profiles
- pairing and active relationship listing
- real-time Firestore request delivery
- OneSignal push as an additional alert channel

The current release does not include:

- offline request queue
- history sharing to caregivers linked after request creation
- advanced backend workflows beyond notification verification and rate limiting

## Key Product Rules

- one patient may link to multiple caregivers
- one caregiver may link to multiple patients
- a patient generates a single-use six-digit code valid for ten minutes
- each request creates one shared request document
- `caregiverUids` is an immutable snapshot at request creation time
- push failure never changes the source Firestore request

## Routes As Product Surfaces

Patient surfaces:

- request home
- pairing code
- linked caregivers
- settings
- install guide

Caregiver surfaces:

- notifications
- dashboard
- pair-code entry
- linked patients
- requests inbox
- request details
- settings
- install guide

## Value To This Brain

This page is the domain anchor. If the stack changes later, this page should stay mostly stable while the architecture page changes.

## Source Notes

Derived from [[projects/assistive-communication]], `docs/PROJECT_SCOPE.md`, and `docs/route-map.md`.

## Related

- [[projects/assistive-communication-data-model]]
- [[projects/assistive-communication-architecture]]
- [[projects/assistive-communication-transformation-paths]]
- [[concepts/product-transformation-paths]]
