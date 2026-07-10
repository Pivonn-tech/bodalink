Architecture

Purpose

This document describes the overall architecture of the BODALINK platform. It defines the project's structure, core components, design principles, and the relationships between different parts of the system.

It serves as the primary architectural reference for contributors and should be reviewed before implementing new features or making structural changes.

---

Scope

This document covers:

- Overall system architecture
- Repository organization
- Application boundaries
- Core technologies
- Communication between components
- Design principles

Implementation details such as database schema and API specifications are documented separately.

---

System Overview

BODALINK is a full-stack ride-hailing platform designed with a modular architecture. The platform consists of independent applications that communicate through a shared backend and common domain models.

The initial release focuses on motorcycle transport while providing an architecture that can support additional transport and delivery services in future versions.

---

Architecture Overview

                           BODALINK Platform

                    +---------------------------+
                    |       Client Apps         |
                    +---------------------------+
                    | Web Application           |
                    | Mobile Application        |
                    | Administrative Dashboard  |
                    +-------------+-------------+
                                  |
                           HTTPS / REST API
                                  |
                    +-------------+-------------+
                    |      Backend Server       |
                    +---------------------------+
                    | Authentication            |
                    | Business Logic            |
                    | Notifications             |
                    | Real-time Services        |
                    | File Management           |
                    +-------------+-------------+
                                  |
                          Database Layer
                                  |
                    +-------------+-------------+
                    | PostgreSQL + Prisma ORM   |
                    +---------------------------+

---

Repository Structure

bodalink/
├── apps/
│   ├── web/
│   ├── mobile/
│   └── admin/
│
├── server/
│
├── packages/
│   ├── shared/
│   ├── types/
│   └── ui/
│
├── database/
│
├── docs/
│
└── README.md

Each top-level directory has a single responsibility and should remain independent whenever possible.

---

Applications

Web Application

The primary client application for passengers and riders using a web browser.

Responsibilities include:

- User authentication
- Ride booking
- Ride tracking
- Wallet management
- Profile management

---

Mobile Application

The Flutter application intended for Android and iOS devices.

The mobile application shares the same backend services as the web application.

---

Administrative Dashboard

A dedicated application for administrators responsible for monitoring and managing the platform.

Responsibilities include:

- User management
- Rider verification
- Fleet management
- Reports
- Platform configuration

---

Backend

The backend exposes a REST API consumed by all client applications.

Primary responsibilities include:

- Authentication and authorization
- Business logic
- Data validation
- Database access
- Payment integration
- Notification delivery
- Real-time communication

The backend remains independent of any specific client application.

---

Database

The database stores all persistent application data.

Its responsibilities include:

- User information
- Ride records
- Vehicle information
- Payments
- Wallet balances
- Notifications
- Platform configuration

Detailed database documentation is available in "Database" (database.md).

---

Shared Packages

Shared packages provide reusable resources across applications.

These include:

- Shared TypeScript types
- Validation schemas
- Constants
- Utility functions
- Shared UI components

Shared packages reduce duplication and promote consistency across the platform.

---

Communication

Applications communicate with the backend through REST APIs.

Real-time features such as ride status updates and location tracking use WebSockets where appropriate.

All persistent data is managed through the backend.

Client applications never communicate directly with the database.

---

Design Principles

The architecture follows these principles:

Modularity

Applications and services are separated by responsibility.

Scalability

The architecture should support future expansion without significant restructuring.

Maintainability

Code should be organized into small, understandable modules.

Consistency

Shared conventions should be followed across the entire project.

Security

Authentication, authorization, validation, and secure communication are required throughout the platform.

Documentation

Major architectural decisions should be documented before implementation.

---

Future Expansion

The architecture is designed to accommodate future services, including:

- Car ride-hailing
- Parcel delivery
- Marketplace delivery
- Fleet management
- Business accounts
- Third-party integrations

These services should integrate into the existing architecture without requiring major structural changes.

---

Related Documentation

- "Documentation Index" (README.md)
- "Database" (database.md)
- "API" (api.md)
- "Development" (development.md)
- "Deployment" (deployment.md)
- "Roadmap" (roadmap.md)
- "Architecture Decisions" (decisions/README.md)