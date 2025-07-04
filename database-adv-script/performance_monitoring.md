# Database Performance Monitoring & Refinement Report

---

## 🔍 Observed Query

```sql
SELECT 
    b.booking_id, b.start_date, b.end_date, b.status,
    u.first_name, u.last_name,
    p.name AS property_name
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
WHERE p.location = 'Accra'
  AND b.status = 'confirmed';
