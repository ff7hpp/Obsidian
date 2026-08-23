# Database Choice For Small Apps

Choose a database from the product's data relationships, security model, and hosting needs. The programming language is a separate choice.

## Practical Options

- Firebase Firestore: useful for fast realtime web/mobile prototypes and document-shaped data. Authorization depends heavily on well-tested security rules.
- Neon: managed PostgreSQL. It is a database service, not a different database type from PostgreSQL.
- Supabase: a broader backend platform built around PostgreSQL, with authentication, storage, realtime features, and row-level security.

## Beginner Default

- Use Firebase when realtime document flows and the existing Firebase ecosystem are the shortest path.
- Use Neon/PostgreSQL when the app has clear tables, relationships, reporting, or a separate backend API.
- Use Supabase when you want PostgreSQL plus integrated auth, storage, and policies in one service.
- Avoid running two primary databases for a small app unless a concrete requirement justifies the complexity.

## Project Patterns

- GeoIssue fits Neon/PostgreSQL because reports have structured fields, ownership, statuses, coordinates, and future moderation relationships.
- Assistive Communication currently fits Firestore because request delivery and relationship updates are realtime; its stable product model can also map to PostgreSQL tables and row-level security.

## Decision Checklist

1. List the main entities and relationships.
2. Decide whether realtime synchronization is essential.
3. Define who may read and write each record.
4. Choose the smallest service that satisfies those requirements.
5. Verify backups, migrations, local development, and cost limits before launch.

## Source Notes

Derived from [[projects/geoissue-full-stack-website]], [[projects/assistive-communication-data-model]], and [[projects/assistive-communication-transformation-paths]].

## Related

- [[concepts/identity-and-authorization]]
- [[concepts/product-transformation-paths]]
- [[concepts/source-driven-development]]

