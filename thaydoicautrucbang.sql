-- Thêm cột genre (varchar) vào bảng Books
ALTER TABLE library.books
    ADD COLUMN genre VARCHAR(255);
-- Đổi tên cột available thành is_available
ALTER TABLE library.books
    RENAME available TO is_available;
-- Xóa cột email khỏi bảng Members
ALTER TABLE library.members
    DROP COLUMN email;
-- Xóa bảng OrderDetails khỏi schema sales
DROP TABLE sales.order_details;