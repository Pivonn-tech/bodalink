Development

Purpose

This document defines the development workflow, coding standards, project conventions, and recommended practices for contributors working on the BODALINK platform.

The objective is to maintain a consistent development experience and ensure code quality across the project.

---

Development Philosophy

Development follows a documentation-first approach.

Major architectural changes should be documented before implementation.

Every contribution should improve or preserve the overall quality of the project.

---

Development Workflow

The recommended workflow is:

1. Create or update documentation.
2. Design the feature.
3. Create a feature branch.
4. Implement the feature.
5. Test the implementation.
6. Review the changes.
7. Merge into the integration branch.

---

Branch Strategy

The project uses the following branch structure:

- "main" — Stable releases.
- "web-platform" — Active development.
- "feature/*" — Individual feature branches.
- "fix/*" — Bug fixes.
- "docs/*" — Documentation updates.

---

Coding Standards

General principles:

- Use TypeScript.
- Keep functions focused on a single responsibility.
- Prefer readability over cleverness.
- Avoid duplicated logic.
- Keep files reasonably small.
- Write meaningful names.

---

Folder Organization

New code should follow the existing project structure.

Features should remain independent whenever possible.

Shared functionality belongs in shared packages rather than duplicated across applications.

---

Git Commits

Commits should describe a single logical change.

Preferred commit prefixes include:

- feat
- fix
- docs
- refactor
- test
- chore

Examples:

- feat: implement authentication API
- docs: update database architecture
- fix: validate phone number format

---

Code Reviews

Before merging changes, verify that:

- The code builds successfully.
- Existing functionality remains unaffected.
- Documentation has been updated where necessary.
- New code follows project conventions.

---

Dependencies

New dependencies should only be introduced after evaluating:

- Maintenance activity
- Community adoption
- Compatibility
- Security
- Long-term support

---

Documentation

Documentation is considered part of the source code.

Changes affecting architecture, APIs, or workflows should include corresponding documentation updates.

---

Related Documentation

- "Documentation Index" (README.md)
- "Architecture" (architecture.md)
- "Technology Stack" (tech-stack.md)
- "Contributing" (contributing.md)
- "Architecture Decisions" (decisions/README.md)