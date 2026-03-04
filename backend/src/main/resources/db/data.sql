src/main/resources/db/data.sql
INSERT INTO user_account (open_id, nickname, avatar_url, phone, role) VALUES
('mock_openid_1', '小明', 'https://example.com/avatar1.png', '13800000001', 'USER'),
('mock_openid_2', '小红', 'https://example.com/avatar2.png', '13800000002', 'USER');

INSERT INTO merchant (name, logo_url, description, address, phone) VALUES
('快乐炸鸡', 'https://example.com/logo1.png', '好吃的炸鸡店', '上海市浦东新区', '021-1234567'),
('健康轻食', 'https://example.com/logo2.png', '低脂轻食', '上海市徐汇区', '021-7654321');

INSERT INTO product_category (merchant_id, name, sort_order) VALUES
(1, '招牌', 1),
(1, '小食', 2),
(2, '沙拉', 1);

INSERT INTO product (merchant_id, category_id, name, image_url, price, stock, description) VALUES
(1, 1, '招牌炸鸡', 'https://example.com/p1.png', 28.00, 100, '外酥里嫩'),
(1, 2, '薯条', 'https://example.com/p2.png', 12.00, 200, '香脆薯条'),
(2, 3, '鸡胸沙拉', 'https://example.com/p3.png', 25.00, 150, '健康低脂');

INSERT INTO user_address (user_id, contact_name, contact_phone, province, city, district, detail, is_default) VALUES
(1, '小明', '13800000001', '上海', '上海', '浦东新区', '世纪大道100号', true);

INSERT INTO rider (name, phone) VALUES
('王骑手', '13900000001'),
('赵骑手', '13900000002');

INSERT INTO coupon (name, type, threshold_amount, discount_amount, start_at, end_at) VALUES
('新用户立减', 'CASH', 20.00, 5.00, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY)),
('满50减10', 'CASH', 50.00, 10.00, NOW(), DATE_ADD(NOW(), INTERVAL 30 DAY));

INSERT INTO admin_user (username, password, role) VALUES
('admin', 'admin123', 'ADMIN');
