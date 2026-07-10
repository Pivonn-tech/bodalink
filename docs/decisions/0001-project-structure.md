ADR 0001: Project Structure

Status

Accepted

Date

2026-07-09

Context

BODALINK is intended to evolve beyond a single application into a transportation platform supporting multiple clients, shared libraries, backend services, documentation, and deployment infrastructure.

The repository structure should accommodate this growth while remaining understandable for individual contributors and future collaborators.

The project also needs to support local development using limited hardware resources without introducing unnecessary complexity.

Decision

The project will use a monorepo.

The repository will be organized by responsibility rather than by programming language.

Applications, shared packages, backend services, documentation, and infrastructure will be maintained within a single repository.

Documentation will remain alongside the source code and will be versioned together with implementation changes.

Consequences

Positive

- A single source of truth for the platform.
- Shared code can be reused across applications.
- Documentation and implementation remain synchronized.
- Consistent tooling and development workflows.
- Easier dependency management.

Trade-offs

- Repository size will increase over time.
- CI/CD pipelines may become more complex.
- Contributors must understand the repository layout.

These trade-offs are acceptable because the benefits outweigh the additional maintenance.

Alternatives Considered

Multiple repositories

Separate repositories for the frontend, backend, and documentation.

This approach provides stronger isolation but increases maintenance overhead, duplicates configuration, and makes coordinated changes more difficult.

Hybrid repository structure

Maintain multiple repositories while sharing common packages.

This approach introduces additional tooling and operational complexity without providing significant advantages for the current stage of the project.

References

- Engineering Handbook
- Architecture
- Development