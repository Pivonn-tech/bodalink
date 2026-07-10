Deployment

Purpose

This document describes how BODALINK applications are deployed.

Frontend

- Framework: React
- Build Tool: Vite
- Hosting: Vercel

Backend

- Runtime: Node.js
- Framework: Express
- Hosting: Railway

Database

- PostgreSQL
- Prisma ORM
- Managed cloud database

Source Control

GitHub is the source of truth for all repositories.

Continuous Integration

GitHub Actions will perform:

- Dependency installation
- Code quality checks
- Testing
- Production deployment

Environments

- Development
- Staging
- Production

Each environment maintains its own configuration and secrets.

Deployment Goals

- Zero-downtime deployments where practical
- Automated builds
- Repeatable deployments
- Secure secret management
- Rollback capability

Related Documentation

- Engineering Handbook
- ADR 0010 – Deployment Strategy