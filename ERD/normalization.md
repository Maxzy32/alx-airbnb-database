# Airbnb Database Normalization

This document explains the normalization process applied to our Airbnb-like database to ensure it meets the Third Normal Form (3NF).

---

## Step 1: First Normal Form (1NF)

- All tables have atomic columns (e.g., `first_name`, `email`, `rating`, etc.).
- Each record is uniquely identified by a primary key.
- There are no repeating groups or arrays.

 **All tables satisfy 1NF.**

---

## Step 2: Second Normal Form (2NF)

- Each non-key attribute is fully dependent on the entire primary key.
- No partial dependency exists, as most tables use a single-attribute primary key (e.g., `user_id`, `property_id`, etc.).
- Composite keys (like `sender_id` + `recipient_id`) are not used.

 **All tables satisfy 2NF.**

---

## Step 3: Third Normal Form (3NF)

- No transitive dependencies exist.
- All non-key attributes in a table depend **only on the primary key**, and not on other non-key attributes.

Examples:
- `email`, `first_name`, `role`, etc., all depend only on `user_id`.
- In `Booking`, `total_price`, `start_date`, `status` depend only on `booking_id`.

 **All tables satisfy 3NF.**

---

## Conclusion

The Airbnb database has been carefully designed to eliminate redundancy and improve consistency. After thorough analysis, we confirm that the schema adheres to **Third Normal Form (3NF)**.
