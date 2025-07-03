# SQL JOIN Queries – Airbnb Clone

This document describes the SQL JOIN queries written to retrieve complex relationships in the Airbnb database.

---

## 🔹 1. INNER JOIN: Bookings with User Info

This query retrieves all bookings along with the user details of the person who made each booking.

```sql
SELECT ... FROM Booking b
INNER JOIN User u ON b.user_id = u.user_id;
