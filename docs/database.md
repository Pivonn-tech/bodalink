Database

Purpose

This document describes the database architecture of the BODALINK platform.

It defines the core entities, relationships, naming conventions, and design principles used throughout the system.

Implementation-specific details such as migrations and ORM configuration are documented separately.

---

Scope

This document covers:

- Database architecture
- Core entities
- Relationships
- Naming conventions
- Data integrity principles

Database implementation details are maintained in the Prisma schema and migration history.

---

Database Engine

The BODALINK platform uses PostgreSQL as its primary relational database.

Database access is managed through Prisma ORM.

---

Design Principles

The database is designed according to the following principles:

- Normalize data where appropriate.
- Preserve referential integrity.
- Avoid duplicated information.
- Prefer explicit relationships.
- Support future expansion without structural redesign.
- Store timestamps for auditable records.
- Use UUIDs as primary identifiers.

---

Core Domains

The initial version of the platform is organized around the following domains.

Identity

Responsible for users and authentication.

Entities include:

- User
- Role
- Session

---

Rider Management

Responsible for rider information.

Entities include:

- Rider
- RiderDocument
- Vehicle
- VehicleType

---

Passenger Services

Responsible for passenger accounts and preferences.

Entities include:

- Passenger
- SavedLocation

---

Ride Management

Responsible for transportation services.

Entities include:

- RideRequest
- Ride
- RideStatus
- Route
- TripHistory

---

Wallet

Responsible for digital payments.

Entities include:

- Wallet
- WalletTransaction
- Payment
- Withdrawal

---

Reviews

Responsible for ratings and feedback.

Entities include:

- Review
- Rating

---

Notifications

Responsible for communication.

Entities include:

- Notification
- NotificationPreference

---

Administration

Responsible for platform administration.

Entities include:

- AuditLog
- SupportTicket
- PlatformSetting

---

Entity Relationships

At a high level, the platform follows these relationships.

User
├── Passenger
├── Rider
└── Admin

Passenger
└── RideRequest

RideRequest
└── Ride

Ride
├── Vehicle
├── WalletTransaction
└── Review

Rider
└── Vehicle

Detailed relationships will be documented alongside the Prisma schema.

---

Naming Conventions

Tables use singular nouns.

Examples:

- User
- Rider
- Vehicle
- Ride

Columns use camelCase.

Examples:

- firstName
- phoneNumber
- createdAt

Primary keys use:

id

Foreign keys use:

- userId
- riderId
- rideId

---

Standard Columns

Most entities should contain:

- id
- createdAt
- updatedAt

Additional fields may be introduced where required.

---

Data Integrity

The database should enforce:

- Foreign key constraints
- Unique constraints where appropriate
- Required fields
- Cascading behavior only when explicitly intended

Validation should exist both within the application and the database.

---

Future Expansion

The database is designed to support future services including:

- Car transport
- Parcel delivery
- Fleet operators
- Business accounts
- Promotions
- Subscription services

The introduction of new services should extend the existing model rather than replace it.

---

Related Documentation

- "Documentation Index" (README.md)
- "Architecture" (architecture.md)
- "API" (api.md)
- "Technology Stack" (tech-stack.md)