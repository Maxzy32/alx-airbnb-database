-- seed.sql

-- Seeding Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('u1', 'Alice', 'Wong', 'alice@example.com', 'hash123', '1234567890', 'guest'),
  ('u2', 'Bob', 'Smith', 'bob@example.com', 'hash456', '0987654321', 'host'),
  ('u3', 'Charlie', 'Brown', 'charlie@example.com', 'hash789', NULL, 'admin');

-- Seeding Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('p1', 'u2', 'Sunny Apartment', 'Cozy space near downtown', 'New York', 150.00),
  ('p2', 'u2', 'Mountain Cabin', 'Rustic retreat with a view', 'Colorado', 200.00);

-- Seeding Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('b1', 'p1', 'u1', '2024-07-01', '2024-07-05', 600.00, 'confirmed'),
  ('b2', 'p2', 'u1', '2024-08-10', '2024-08-15', 1000.00, 'pending');

-- Seeding Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay1', 'b1', 600.00, 'credit_card'),
  ('pay2', 'b2', 1000.00, 'paypal');

-- Seeding Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('r1', 'p1', 'u1', 5, 'Amazing stay! Very clean and central.'),
  ('r2', 'p2', 'u1', 4, 'Beautiful cabin but no WiFi.');

-- Seeding Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('m1', 'u1', 'u2', 'Hi, is the apartment available on July 1st?'),
  ('m2', 'u2', 'u1', 'Yes, it’s available. You can book it now.');
