-- Sample data for Martplace e-commerce platform

-- Insert users
INSERT INTO users (username, email, password_hash, first_name, last_name) VALUES
('john_doe', 'john@example.com', '$2a$10$randomhash', 'John', 'Doe'),
('jane_smith', 'jane@example.com', '$2a$10$randomhash', 'Jane', 'Smith'),
('bob_johnson', 'bob@example.com', '$2a$10$randomhash', 'Bob', 'Johnson');

-- Insert categories
INSERT INTO categories (name, slug, description) VALUES
('Electronics', 'electronics', 'Gadgets and devices'),
('Clothing', 'clothing', 'Fashion and apparel'),
('Home', 'home', 'Home and garden items');

-- Insert products
INSERT INTO products (name, description, price, category_id, seller_id, stock_quantity) VALUES
('Smartphone', 'Latest model smartphone', 699.99, 1, 1, 50),
('Laptop', 'Powerful laptop for work', 1299.99, 1, 1, 30),
('T-Shirt', 'Comfortable cotton t-shirt', 19.99, 2, 2, 100),
('Jeans', 'Classic blue jeans', 49.99, 2, 2, 75),
('Coffee Maker', 'Automatic coffee machine', 89.99, 3, 3, 40);

-- Insert product images
INSERT INTO product_images (product_id, image_url, is_primary) VALUES
(1, '/images/smartphone.jpg', TRUE),
(2, '/images/laptop.jpg', TRUE),
(3, '/images/tshirt.jpg', TRUE),
(4, '/images/jeans.jpg', TRUE),
(5, '/images/coffee-maker.jpg', TRUE);

-- Insert reviews
INSERT INTO reviews (product_id, user_id, rating, comment) VALUES
(1, 2, 5, 'Great phone!'),
(1, 3, 4, 'Good battery life'),
(2, 1, 5, 'Perfect for my work'),
(3, 3, 3, 'Fits well but color faded'),
(5, 1, 4, 'Makes great coffee');

-- Insert wishlist items
INSERT INTO wishlist (user_id, product_id) VALUES
(1, 3),
(1, 5),
(2, 1),
(3, 2);

-- Insert orders
INSERT INTO orders (user_id, total_amount, status) VALUES
(1, 719.98, 'completed'),
(2, 1299.99, 'processing');

-- Insert order items
INSERT INTO order_items (order_id, product_id, quantity, price_at_purchase) VALUES
(1, 1, 1, 699.99),
(1, 3, 1, 19.99),
(2, 2, 1, 1299.99);