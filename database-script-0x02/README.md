# Airbnb Database Seeding

This file describes the sample data inserted into the Airbnb database using `seed.sql`.

## Entities Populated

- **Users**: 3 users with roles `guest`, `host`, and `admin`.
- **Properties**: 2 properties listed by the host.
- **Bookings**: 2 bookings made by the guest.
- **Payments**: Payments linked to bookings.
- **Reviews**: Feedback from the guest on properties.
- **Messages**: Messages exchanged between guest and host.

## Purpose

This sample data simulates realistic Airbnb activity and supports testing for:
- Booking flow
- Host-guest interactions
- Review and payment validation

## Notes

- UUIDs are simplified (e.g., 'u1') for clarity.
- Passwords are mock hashes.
- Dates are within the current and upcoming months.
