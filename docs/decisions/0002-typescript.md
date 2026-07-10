ADR 0002: TypeScript

Status

Accepted

Date

2026-07-09

Context

The platform will include a React frontend, a Node.js backend, shared libraries, and future services.

Using different programming languages across these components would increase context switching, reduce code sharing, and introduce inconsistent development practices.

A common language should support both frontend and backend development while improving maintainability and developer productivity.

Decision

TypeScript will be the primary programming language across the BODALINK platform.

All new frontend applications, backend services, shared libraries, and utilities should use TypeScript unless a documented exception exists.

Strict compiler settings should be preferred to improve reliability and reduce runtime errors.

Consequences

Positive

- Shared language across the entire platform.
- Strong static type checking.
- Better editor support and refactoring.
- Improved code readability.
- Reduced runtime errors.
- Easier reuse of shared models and utilities.

Trade-offs

- Slightly longer build times.
- Additional learning curve for contributors unfamiliar with TypeScript.
- Occasional need to define or maintain type definitions.

These trade-offs are acceptable given the long-term benefits.

Alternatives Considered

JavaScript

JavaScript provides a simpler development experience but lacks compile-time type checking and becomes more difficult to maintain as projects grow.

Mixed JavaScript and TypeScript

Using both languages would reduce consistency and increase maintenance costs.

The project benefits more from adopting a single standard language.

References

- Technology Stack
- Engineering Handbook
- Development