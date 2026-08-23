# Identity And Authorization

Authentication proves who a user is. Authorization decides what that user may read or change. A login screen is not a security boundary by itself.

## Default Model

- Use an identity provider such as Firebase Auth or Supabase Auth for sign-in and session identity.
- Enforce ownership and role checks on the server, in database policies, or both.
- Treat client-side route guards as navigation help, not access control.
- Re-read trusted records before sensitive actions such as notifications or role changes.
- Test denied operations as deliberately as successful ones.

## Project Patterns

- GeoIssue uses Firebase Auth for identity while the Express API decides issue ownership and future admin roles.
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

