API

Purpose

This document defines the API standards used by the BODALINK platform.

The backend exposes RESTful APIs that serve the web application and future mobile clients.

Design Principles

- REST-first architecture
- JSON request and response bodies
- Predictable resource-oriented URLs
- Versioned endpoints
- Stateless communication
- Consistent error handling

Base URL

Development

/api/v1

Production

https://api.bodalink.com/api/v1

Resource Naming

Resources use plural nouns.

Examples:

- /users
- /riders
- /passengers
- /rides
- /wallets
- /payments

HTTP Methods

- GET — Retrieve resources
- POST — Create resources
- PUT — Replace resources
- PATCH — Partially update resources
- DELETE — Remove resources

Authentication

Protected endpoints require a valid access token.

Authentication uses Bearer tokens.

Status Codes

- 200 OK
- 201 Created
- 204 No Content
- 400 Bad Request
- 401 Unauthorized
- 403 Forbidden
- 404 Not Found
- 409 Conflict
- 422 Validation Error
- 500 Internal Server Error

Versioning

Breaking changes will be introduced through a new API version.

Current version:

v1

Related Documentation

- Architecture
- Authentication
- Technology Stack
- ADR 0007 – REST API Design