# Index Performance Analysis – Airbnb Clone

This document analyzes the impact of indexing on key query performance.

---

## 🎯 Objective

Improve the performance of frequent operations involving `User`, `Booking`, and `Property` tables by adding indexes.

---

## 🔍 Indexed Columns

| Table     | Column           | Reason                  |
|-----------|------------------|-------------------------|
| User      | email            | Faster login lookups    |
| Booking   | user_id          | Frequent JOINs          |
| Booking   | property_id      | JOINs with Property     |
| Property  | location         | Used in WHERE filters   |
| Property  | pricepernight    | Used in ORDER BY        |

---

## ⚙️ EXPLAIN Comparison

### Example Query 1: Before Indexing

```sql
EXPLAIN SELECT * FROM User WHERE email = 'user@example.com';
