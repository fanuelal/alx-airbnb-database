-- Data for usedID- Table
INSERT INTO usedID- (usedID-_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('usedID-001', 'John', 'Doe', 'john.doe@example.com', 'hashed_password_1', '1234567890', 'guest'),
('usedID-002', 'Jane', 'Smith', 'jane.smith@example.com', 'hashed_password_2', '0987654321', 'host'),
('usedID-003', 'Alice', 'Johnson', 'alice.johnson@example.com', 'hashed_password_3', '1122334455', 'admin'),
('usedID-004', 'Bob', 'Brown', 'bob.brown@example.com', 'hashed_password_4', '5566778899', 'host'),
('usedID-005', 'Charlie', 'Williams', 'charlie.williams@example.com', 'hashed_password_5', '6677889900', 'guest');

-- Data for Property Table
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('property001', 'usedID-002', 'Cozy Beach House', 'A beautiful beachfront property with a stunning view.', 'Miami, FL', 200.00),
('property002', 'usedID-004', 'Mountain Cabin', 'A secluded cabin in the mountains, perfect for a retreat.', 'Asheville, NC', 150.00),
('property003', 'usedID-002', 'Luxury Apartment', 'A high-end apartment in the city center, ideal for business trips.', 'New York, NY', 300.00),
('property004', 'usedID-004', 'Charming Cottage', 'A charming cottage with a garden, located near the countryside.', 'Napa Valley, CA', 180.00);

-- Data for Booking Table
INSERT INTO Booking (booking_id, property_id, usedID-_id, start_date, end_date, status)
VALUES
('booking001', 'property001', 'usedID-005', '2024-12-10', '2024-12-15', 'pending'),
('booking002', 'property002', 'usedID-001', '2024-12-05', '2024-12-10', 'confirmed'),
('booking003', 'property003', 'usedID-001', '2024-12-20', '2024-12-25', 'canceled'),
('booking004', 'property004', 'usedID-005', '2024-12-01', '2024-12-07', 'confirmed');

-- Data for Payment Table
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('payment001', 'booking002', 750.00, 'credit_card'),
('payment002', 'booking004', 1260.00, 'paypal'),
('payment003', 'booking001', 1000.00, 'stripe');

-- Data for Review Table
INSERT INTO Review (review_id, property_id, usedID-_id, rating, comment)
VALUES
('review001', 'property001', 'usedID-001', 5, 'Amazing experience, the view is breathtaking!'),
('review002', 'property002', 'usedID-005', 4, 'Very peaceful location, but the cabin could use some updates.'),
('review003', 'property003', 'usedID-005', 3, 'Good apartment but very noisy at night due to city traffic.');

-- Data for Message Table
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('message001', 'usedID-001', 'usedID-002', 'Hi, I would like to book your beach house for my vacation.'),
('message002', 'usedID-004', 'usedID-002', 'The mountain cabin is ready for your next guest. Let me know if anything is needed.'),
('message003', 'usedID-005', 'usedID-004', 'Can I get a discount for booking the charming cottage for an extended period?');
