-- Tạo bảng Schema sale
CREATE SCHEMA sale;

-- tao bang products
CREATE TABLE sale.products(
    product_id SERIAL PRIMARY KEY ,
    product_name VARCHAR(255),
    price NUMERIC(10,2),
    stock_quantity INT
);

-- tao bang order
CREATE TABLE sale.orders(
    order_id SERIAL PRIMARY KEY ,
    order_date DATE DEFAULT CURRENT_DATE,
    member_id INT,
    FOREIGN KEY (member_id) REFERENCES library.members(member_id)
);

-- Tao bang orderdetails
CREATE TABLE sale.order_detail(
    order_detail_id SERIAL PRIMARY KEY ,
    order_id INT,
    FOREIGN KEY (order_id) REFERENCES sale.orders(order_id),
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES sale.products(product_id),
    quantity INT
);