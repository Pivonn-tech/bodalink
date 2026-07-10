ADR 0005: PostgreSQL and Prisma

Status

Accepted

Date

2026-07-09

Context

BODALINK manages structured business data including users, riders, passengers, vehicles, rides, wallets, payments, ratings, and platform administration.

The platform requires strong transactional consistency, referential integrity, and reliable querying as data volume grows.

An Object-Relational Mapper (ORM) is required to improve developer productivity while maintaining type safety.

Decision

PostgreSQL will be the primary relational database.

Prisma ORM will be used for database access, schema management, and migrations.

Database schema changes will be version-controlled through Prisma migrations.

Consequences

Positive

- ACID-compliant transactions.
- Strong relational modeling.
- Excellent scalability.
- Type-safe database access.
- Reliable migration system.
- Broad community and hosting support.

Trade-offs

- Requires understanding relational database concepts.
- Schema changes require migration management.
- More structured than document databases.

These trade-offs support the long-term requirements of the platform.

Alternatives Considered

MongoDB

Offers flexible document storage but is less suited to highly relational business data.

MySQL

A mature relational database with similar capabilities.

PostgreSQL was selected because of its advanced feature set, extensibility, and strong ecosystem.

TypeORM / Sequelize

Both provide ORM functionality.

Prisma was selected for its type safety, developer experience, migration workflow, and documentation.

References

- Database
- Technology Stack
- Architecture
- Engineering Handbook