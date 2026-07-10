ADR 0010: Deployment Strategy

Status

Accepted

Date

2026-07-09

Context

BODALINK requires a deployment strategy that supports rapid development, continuous delivery, scalability, and future infrastructure growth.

The platform should minimize operational complexity during the initial stages while remaining flexible enough to migrate as requirements evolve.

The deployment process should support independent deployment of frontend and backend services.

Decision

The web frontend will be deployed on Vercel.

The backend services will initially be deployed on Railway.

PostgreSQL will be hosted using a managed cloud database service compatible with Railway.

GitHub will serve as the source of truth for version control.

GitHub Actions will automate testing, code quality checks, and deployment workflows where appropriate.

Infrastructure decisions will be reviewed periodically as the platform grows.

Consequences

Positive

- Simple deployment workflow.
- Continuous deployment from GitHub.
- Minimal infrastructure maintenance.
- Independent frontend and backend deployments.
- Managed hosting reduces operational overhead.
- Suitable foundation for future scaling.

Trade-offs

- Platform limits may require future migration.
- Vendor-specific features should be avoided where possible.
- Hosting costs may increase as platform usage grows.

These trade-offs are acceptable during the early stages of development.

Alternatives Considered

Self-managed Virtual Private Server (VPS)

Provides greater infrastructure control but increases operational responsibilities, including monitoring, security updates, backups, and scaling.

Docker-based Infrastructure

Containerized deployments remain a future option once operational requirements justify the additional complexity.

Cloud Platform Services

Cloud providers such as AWS, Azure, and Google Cloud offer extensive capabilities but introduce unnecessary operational complexity for the project's initial phase.

References

- Architecture
- Development
- Technology Stack
- Engineering Handbook
- Infrastructure Documentation