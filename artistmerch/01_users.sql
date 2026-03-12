TRUNCATE TABLE users RESTART IDENTITY CASCADE;


INSERT INTO users (username, displayname, email, password, artist, address, user_tel) VALUES
('van_gogh_01', 'Vincent Studio', 'vincent@art.com', 'securepass123', TRUE, 'Arles, France', '0811112222'),
('monet_garden', 'Claude Monet', 'monet@garden.com', 'waterlily789', TRUE, 'Giverny, France', '0899998888'),
('collector_a', 'สมชาย รักงานศิลป์', 'somchai@email.com', 'fanpass555', FALSE, '123/4 หมู่บ้านศิลปะ กรุงเทพฯ', '0855554444');

SELECT * FROM users;