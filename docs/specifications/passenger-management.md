Passenger Management

Purpose

Manage passenger accounts and personal information.

Scope

Covers account creation, profile management, ride history, and account settings.

Actors

- Passenger

Functional Requirements

- Create account
- Update profile
- Upload profile photo
- Manage emergency contacts
- View ride history
- Delete account

Business Rules

- One passenger account per phone number.
- Profile changes require validation.
- Ride history cannot be edited.

Workflow

1. Passenger registers.
2. Completes profile.
3. Requests rides.
4. Reviews previous rides.

API Endpoints

- GET /passengers/profile
- PATCH /passengers/profile
- GET /passengers/rides

Database Entities

- Passenger
- User
- Ride

User Interface

- Profile page
- Account settings
- Ride history

Validation Rules

- Required personal information
- Valid contact details

Security Considerations

- Profile ownership validation
- Secure personal data storage

Future Enhancements

- Saved locations
- Favorite riders
- Referral program

Related Documentation

- Authentication
- Ride Booking