-- Tạo bảng Schema sale
CREATE SCHEMA sales;

-- tao bang products
CREATE TABLE sales.products(
                               product_id SERIAL PRIMARY KEY ,
                               product_name VARCHAR(255),
                               price NUMERIC(10,2),
                               stock_quantity INT
);

-- tao bang order
CREATE TABLE sales.orders(
                             order_id SERIAL PRIMARY KEY ,
                             order_date DATE DEFAULT CURRENT_DATE,
                             member_id INT,
                             FOREIGN KEY (member_id) REFERENCES library.members(member_id)
);

-- Tao bang orderdetails
CREATE TABLE sales.order_details(
                                    order_detail_id SERIAL PRIMARY KEY ,
                                    order_id INT,
                                    FOREIGN KEY (order_id) REFERENCES sales.orders(order_id),
                                    product_id INT,
                                    FOREIGN KEY (product_id) REFERENCES sales.products(product_id),
                                    quantity INT
);