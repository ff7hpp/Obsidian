# Assistive Communication Data Model

Base project: [[projects/assistive-communication]]

This page captures the durable data and relationship model of the project so the same product can be rebuilt on another backend or another client platform.

## Main Collections

- `users/{uid}`
- `patients/{uid}`
- `caregivers/{uid}`
- `pairingCodes/{code}`
- `patientCaregiverLinks/{patientUid}_{caregiverUid}`
- `requests/{requestId}`

## Entities

### User

- uid
- role
- display name
- email for caregivers only
- createdAt
- updatedAt

### Patient

- auth uid
- display name
- active flag
- timestamps

### Caregiver

- auth uid
- display name
- email
- timestamps

### Pairing Code

- patient uid
- createdAt
- expiresAt
- used flag
- usedBy
- usedAt

### Patient-Caregiver Link

- patient uid
- caregiver uid
- caregiver display name
- pairing code
- active flag
- timestamps

### Request

- patient uid
- patient display name
- caregiver uid snapshot
- button id
- label
- request text
- status
- idempotency key
- createdAt
- updatedAt
- acknowledgement/completion actor fields

## Relationship Rules

- patient-to-caregiver is many-to-many
- pairing code is short-lived and single-use
- relationship document id is deterministic
- request access is based on immutable `caregiverUids`
- newly linked caregivers get future requests, not old ones

## Security-Relevant Invariants

- role documents must match `users/{uid}`
- identity fields are immutable
- timestamps come from server-side timestamp semantics
- request lifecycle is `new -> acknowledged -> completed`
- unauthorized listing and cross-role access are denied

## Portability Notes

If this project moves from Firebase to another backend, these entities and invariants should remain. Only the storage engine, auth provider, and rule implementation style should change.

## Source Notes

Derived from [[projects/assistive-communication]], `docs/firebase-auth.md`, and `docs/security.md`.

## Related

- [[projects/assistive-communication-product]]
- [[projects/assistive-communication-architecture]]
- [[projects/assistive-communication-transformation-paths]]
