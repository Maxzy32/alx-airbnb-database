# SQL JOIN Queries – Airbnb Clone

This document describes the SQL JOIN queries written to retrieve complex relationships in the Airbnb database.

---

## 🔹 1. INNER JOIN: Bookings with User Info

This query retrieves all bookings along with the user details of the person who made each booking.

```sql
SELECT ... FROM Booking b
INNER JOIN User u ON b.user_id = u.user_id;


# SQL Subqueries – Airbnb Clone

This file explains the two subqueries implemented in `subqueries.sql`.

---

## 🔍 1. Properties with Average Rating > 4.0

**Type**: Non-correlated subquery  
**Description**:  
Finds properties where the average rating (from the Review table) is greater than 4.0.

- Inner subquery groups reviews by `property_id` and computes the average.
- Outer query joins the result with the `Property` table and filters by average.

---

## 🔍 2. Users with More Than 3 Bookings

**Type**: Correlated subquery  
**Description**:  
Returns users who have made more than 3 bookings.

- For each user in the `User` table, the subquery counts their bookings in the `Booking` table.
- If count > 3, the user is included in the result.

---




# Aggregations and Window Functions – Airbnb Clone

This file documents two key SQL operations for analyzing Airbnb data.

---

## 🔹 1. Aggregation: Bookings Per User

**Query**: Uses `COUNT()` and `GROUP BY` to count how many bookings each user has made.

```sql
SELECT u.user_id, ..., COUNT(b.booking_id)
FROM User u
LEFT JOIN Booking b ON ...
GROUP BY ...


# Aggregations and Window Functions – Airbnb Clone

This file documents two key SQL operations for analyzing Airbnb data.

---

## 🔹 1. Aggregation: Bookings Per User

**Query**: Uses `COUNT()` and `GROUP BY` to count how many bookings each user has made.

```sql
SELECT u.user_id, ..., COUNT(b.booking_id)
FROM User u
LEFT JOIN Booking b ON ...
GROUP BY ...
