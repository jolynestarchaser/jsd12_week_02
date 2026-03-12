
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(100) UNIQUE NOT NULL, 
    displayname VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255),
    artist BOOLEAN DEFAULT FALSE,        
    address TEXT,
    user_tel VARCHAR(20)                 
);

-- 2. สร้างตาราง item
CREATE TABLE item (
    item_id SERIAL PRIMARY KEY,
    productname VARCHAR(255) NOT NULL,
    sku VARCHAR(50) UNIQUE,             
    description TEXT,
    quantity INTEGER DEFAULT 0,
    limited BOOLEAN DEFAULT FALSE,
    price DECIMAL(10, 2),
    available BOOLEAN DEFAULT TRUE,
    artist_id INTEGER REFERENCES users(user_id) 
);


CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    item_sku VARCHAR(50) REFERENCES item(sku),
    order_date TIMESTAMP DEFAULT NOW()
);


CREATE TABLE artists (
    artist_id SERIAL PRIMARY KEY,
    user_id INTEGER UNIQUE REFERENCES users(user_id),
    bio TEXT,
    portfolio_url VARCHAR(255)
);

--ผมลองเขียนตามความเข้าใจของตัวเองแล้วครับแล้วให้ AI เช็คความถูกต้องและ Direction ที่อยากให้เป็นครับ