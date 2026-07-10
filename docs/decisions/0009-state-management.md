ADR 0009: State Management

Status

Accepted

Date

2026-07-09

Context

The BODALINK frontend manages both server-side data and client-side application state.

Server data includes users, rides, vehicles, notifications, wallet information, and other resources retrieved from the backend.

Client state includes authentication status, application preferences, UI state, form state, and temporary user interactions.

Using a single solution for both concerns introduces unnecessary complexity.

Decision

The frontend will separate server state from client state.

TanStack Query will manage asynchronous server state, including caching, background synchronization, request retries, and data invalidation.

Zustand will manage lightweight client-side application state.

React Context will only be used for global application concerns where appropriate.

Consequences

Positive

- Clear separation of responsibilities.
- Efficient server-side caching.
- Reduced unnecessary network requests.
- Simple client-side state management.
- Excellent TypeScript support.
- Improved maintainability as the application grows.

Trade-offs

- Contributors must understand multiple state management approaches.
- Additional project dependencies.
- Team members must distinguish between client and server state.

These trade-offs are acceptable because they produce a cleaner architecture.

Alternatives Considered

Redux Toolkit

Redux Toolkit provides excellent tooling and predictability but introduces additional boilerplate for the current project requirements.

React Context Only

React Context is suitable for limited global state but is not intended to replace dedicated server-state management.

MobX

MobX offers a reactive programming model but was not selected because the chosen combination better aligns with the project's architectural goals.

References

- Technology Stack
- Architecture
- Development
- Engineering Handbook