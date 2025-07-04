# Partitioning Performance Report – Booking Table

---

## 🎯 Objective
To improve performance of large `Booking` table queries by applying partitioning on the `start_date` column.

---

## 🛠️ Partition Strategy

We used **RANGE partitioning** based on `YEAR(start_date)`:
- Partitioned by year: 2022, 2023, 2024, future
- Allows MySQL to **only scan relevant partitions** for queries

---

## 🔍 Performance Comparison

### Without Partitioning

```sql
EXPLAIN SELECT * FROM Booking WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
