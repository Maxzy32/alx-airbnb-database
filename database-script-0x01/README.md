# Airbnb Database Schema

This SQL file defines the schema for an Airbnb-like platform using normalized relational design. It includes six main tables:

- **User**: Stores information about platform users (guests, hosts, admins).
- **Property**: Represents listings created by hosts.
- **Booking**: Records reservations made by guests.
- **Payment**: Tracks payments made for bookings.
- **Review**: Stores reviews left by guests.
- **Message**: Enables communication between users.

## Features

- UUIDs as primary keys for uniqueness and scalability.
- Foreign key constraints to enforce referential integrity.
- ENUM types for controlled value sets.
- Indexes on frequently queried fields for performance.

## Location

- Directory: `database-script-0x01`
- Files:
  - `schema.sql`: Full schema definition.
  - `README.md`: This file.


