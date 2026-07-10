Technology Stack

Purpose

This document defines the technologies used throughout the BODALINK platform and explains the reasoning behind each selection.

The objective is to maintain a consistent, modern, and maintainable technology stack. Any proposed additions or replacements should be evaluated against the project's architecture, long-term goals, and compatibility with the existing ecosystem.

---

Selection Principles

Technologies adopted by BODALINK should satisfy the following criteria:

- Stable and actively maintained.
- Well documented.
- Widely adopted in production environments.
- Strong community support.
- Suitable for long-term maintenance.
- Compatible with the project's architecture.
- Appropriate for a TypeScript-first development workflow.

---

Core Technologies

Category| Technology
Programming Language| TypeScript
Frontend Framework| React
Build Tool| Vite
Styling| Tailwind CSS
UI Components| shadcn/ui
Icons| Lucide React
Routing| React Router
Server State| TanStack Query
Client State| Zustand
Forms| React Hook Form
Validation| Zod
Runtime| Node.js
Backend Framework| Express
ORM| Prisma
Database| PostgreSQL
Authentication| JSON Web Tokens (JWT) with Refresh Tokens
Real-Time Communication| Socket.IO
File Storage| Cloudinary
API Architecture| REST
Unit Testing| Vitest
End-to-End Testing| Playwright
Linting| ESLint
Code Formatting| Prettier
Version Control| Git
Repository Hosting| GitHub
Frontend Deployment| Vercel
Backend Deployment| Railway
Database Hosting| Railway PostgreSQL

---

TypeScript

TypeScript is used throughout the frontend and backend to provide strong typing, improve maintainability, and reduce runtime errors.

Using a single language across the platform simplifies development and encourages code sharing.

---

Frontend

The frontend is built using React and Vite.

React provides a mature component model, while Vite offers fast development, efficient builds, and a modern tooling experience.

The user interface is styled with Tailwind CSS and built using reusable components based on shadcn/ui.

---

Backend

The backend is developed using Node.js and Express.

Express provides a lightweight foundation for building REST APIs while allowing flexibility as the application grows.

Business logic, routing, middleware, and services remain separated to improve maintainability.

---

Database

PostgreSQL is the primary database for the platform.

A relational database is well suited to BODALINK because the platform manages structured relationships between users, riders, vehicles, rides, payments, wallets, and other operational data.

Database access is handled through Prisma ORM.

---

Authentication

Authentication is based on JSON Web Tokens (JWT) with refresh tokens.

Authorization is implemented using role-based access control to support different user types and administrative permissions.

---

Real-Time Communication

Socket.IO is used for features requiring real-time communication, including ride status updates, driver location updates, and live notifications.

---

Code Quality

Code quality is maintained using:

- ESLint
- Prettier
- TypeScript compiler checks

These tools help enforce consistent coding standards across the project.

---

Testing Strategy

The project includes automated testing at multiple levels.

- Unit testing using Vitest.
- End-to-end testing using Playwright.

Additional testing approaches may be introduced as the platform evolves.

---

Future Evaluation

New technologies should only be introduced when they provide a clear benefit and align with the project's architectural principles.

Technology changes should be documented through an Architecture Decision Record before implementation.

---

Related Documentation

- "Documentation Index" (README.md)
- "Architecture" (architecture.md)
- "Database" (database.md)
- "API" (api.md)
- "Development" (development.md)
- "Architecture Decisions" (decisions/README.md)