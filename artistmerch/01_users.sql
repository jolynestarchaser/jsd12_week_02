TRUNCATE TABLE users RESTART IDENTITY CASCADE;


INSERT INTO users (username, displayname, email, password, artist, address, user_tel) VALUES
('somchai_art', 'Somchai Studio', 'somchai@email.com', 'hashed_pass_1', true, '123 Rama 9, Bangkok', '0812345678'),
('marisa_gallery', 'Marisa Design', 'marisa@email.com', 'hashed_pass_2', true, '456 Nimman, Chiang Mai', '0898765432'),
('john_doe', 'John Doe', 'john@email.com', 'hashed_pass_3', false, '789 Sukhumvit, Bangkok', '0822223333'),
('kana_jang', 'Kana', 'kana@email.com', 'hashed_pass_4', false, '321 Moon Road, Chonburi', '0855556666'),
('pixel_lover', 'Pixel Lover', 'pixel@email.com', 'hashed_pass_5', false, '555 Star Village, Phuket', '0877778888');

SELECT * FROM users;