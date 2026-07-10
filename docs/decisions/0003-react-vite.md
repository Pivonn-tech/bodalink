ADR 0003: React and Vite

Status

Accepted

Date

2026-07-09

Context

BODALINK requires a modern web application that is responsive, maintainable, and capable of growing into a feature-rich transportation platform.

The frontend should support component-based development, client-side routing, state management, API integration, and future Progressive Web App (PWA) capabilities.

The development environment should also perform well on modest hardware to reduce barriers for contributors.

Decision

The web application will be built with React.

Vite will be used as the build tool and development server.

TypeScript will be used throughout the application.

The frontend will be organized using a feature-based architecture with reusable shared components.

Consequences

Positive

- Fast development server and build performance.
- Large and mature ecosystem.
- Excellent TypeScript support.
- Strong community adoption.
- Easy integration with modern tooling.
- Suitable foundation for Progressive Web Applications.

Trade-offs

- Developers must understand React concepts such as components, hooks, and state management.
- Additional libraries are required for routing, data fetching, and forms.
- Long-term maintenance requires keeping dependencies up to date.

These trade-offs are acceptable because they provide flexibility and scalability.

Alternatives Considered

Next.js

Provides server-side rendering and additional framework features.

The current project does not require server-side rendering, making Next.js unnecessarily complex for the initial phase.

Angular

Provides a comprehensive framework but introduces a steeper learning curve and additional complexity.

Vue

A capable alternative with excellent developer experience.

React was selected because of its ecosystem, community adoption, and compatibility with the planned architecture.

References

- Technology Stack
- Architecture
- Engineering Handbook
- Development