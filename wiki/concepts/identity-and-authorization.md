# Identity And Authorization

Authentication proves who a user is. Authorization decides what that user may read or change. A login screen is not a security boundary by itself.

## Default Model

- Use one explicit identity model for sign-in and session identity; do not accidentally run Firebase and local JWT as competing sources of truth.
- Enforce ownership and role checks on the server, in database policies, or both.
- Treat client-side route guards as navigation help, not access control.
- Re-read trusted records before sensitive actions such as notifications or role changes.
- Test denied operations as deliberately as successful ones.

## Project Patterns

- GeoIssue uses PostgreSQL email/password accounts and signed JWTs. Express verifies the JWT, reloads the user from PostgreSQL, rejects inactive/suspended accounts, and enforces ownership/role rules.
- During the migration, `firebase_uid` was renamed to neutral `auth_uid` without deleting users or reports. Existing Firebase-only accounts need an explicit password migration; never let a new password claim an old email without a trusted recovery path.
- Assistive Communication uses Firebase Auth, Firestore rules, pairing relationships, and trusted server routes as separate enforcement layers.
- A Firebase-to-Supabase migration changes the enforcement mechanism from Firestore rules to PostgreSQL row-level security, but the product roles and ownership rules should remain stable.

## Beginner Rule

For a small app, choose one authentication provider and keep the authorization model simple: user, owner, and admin only when admin behavior is actually required. Write the permissions before adding screens.

## Source Notes

Derived from [[projects/geoissue-full-stack-website]], [[projects/assistive-communication-architecture]], and [[projects/assistive-communication-data-model]].

## Related

- [[concepts/database-choice-for-small-apps]]
- [[concepts/agent-verification]]
- [[concepts/product-transformation-paths]]
