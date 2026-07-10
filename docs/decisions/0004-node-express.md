ADR 0004: Node.js and Express

Status

Accepted

Date

2026-07-09

Context

The BODALINK platform requires a backend capable of serving REST APIs, authenticating users, managing business logic, integrating with databases, and supporting future real-time communication.

The backend should remain lightweight while allowing gradual expansion as the platform grows.

The technology should also align with the project's decision to standardize on TypeScript.

Decision

The backend will use Node.js with Express.

Express will serve as the HTTP framework for REST APIs.

The application will follow a layered architecture separating routes, controllers, services, repositories, and data models.

Business logic must remain independent of HTTP-specific concerns wherever practical.

Consequences

Positive

- Lightweight and flexible architecture.
- Mature ecosystem with extensive community support.
- Excellent compatibility with TypeScript.
- Large collection of middleware and libraries.
- Straightforward migration path as the platform grows.

Trade-offs

- Express is intentionally minimal and requires additional libraries for common features.
- Architectural discipline must be maintained by the development team.
- Some functionality available by default in larger frameworks must be implemented manually.

These trade-offs are acceptable because they provide greater flexibility during the early stages of development.

Alternatives Considered

NestJS

Provides a comprehensive framework with dependency injection and strong architectural conventions.

The additional abstraction is not required at the current stage of the project.

Fastify

Offers excellent performance and a modern plugin system.

Performance differences are not expected to be significant for the initial release.

Hono

Provides a lightweight and modern developer experience.

The ecosystem and community adoption are currently smaller than Express.

References

- Technology Stack
- Architecture
- Development
- Engineering Handbook