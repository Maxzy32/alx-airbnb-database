-- Index on User email for faster login lookups
CREATE INDEX idx_user_email ON User(email);

-- Index on Booking.user_id for JOINs with User
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index on Booking.property_id for JOINs with Property
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index on Property.location for WHERE search filters
CREATE INDEX idx_property_location ON Property(location);

-- Index on Property.pricepernight for sorting
CREATE INDEX idx_property_price ON Property(pricepernight);
