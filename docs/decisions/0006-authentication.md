ADR 0006: Authentication Strategy

Status

Accepted

Date

2026-07-09

Context

The platform supports multiple user roles, including passengers, riders, administrators, and future operational staff.

Authentication must be secure, scalable, and suitable for web applications while supporting future mobile clients.

Authorization requirements differ between user roles and protected resources.

Decision

Authentication will use JSON Web Tokens (JWT) with short-lived access tokens and refresh tokens.

Passwords will be securely hashed before storage.

Role-based access control (RBAC) will determine authorization throughout the platform.

Authentication logic will remain isolated from business logic.

Consequences

Positive

- Stateless authentication.
- Suitable for web and mobile clients.
- Scalable architecture.
- Clear separation of authentication and authorization.
- Flexible support for additional user roles.

Trade-offs

- Refresh token management introduces additional complexity.
- Token revocation requires supporting infrastructure.
- Secure storage of tokens is essential.

These trade-offs are acceptable because they improve scalability and interoperability.

Alternatives Considered

Session-based authentication

Provides a familiar server-managed approach but introduces additional state management requirements and is less suitable for distributed services.

OAuth-only authentication

External identity providers may be supported in the future, but local authentication remains the primary requirement for the initial platform.

References

- Architecture
- API
- Database
- Engineering Handbook