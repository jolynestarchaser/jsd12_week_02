-- อันนี้เป็น SQL data จริงๆที่จะใช้กับเว็บนี้ครับใช้ AI ช่วยเขียน อยากเรียนพร้อมเพื่อนแต่อยากเตรียมไว้ก่อนครับ

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    role VARCHAR(20) DEFAULT 'customer', -- 'customer' or 'admin'
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    category_id INT REFERENCES categories(id) ON DELETE SET NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT DEFAULT 0,
    image_url TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE SET NULL, -- on delete set null เอาไว้สำหรับเก็บข้อมูลยอดขาย
    total_price DECIMAL(12, 2) NOT NULL,
    status VARCHAR(20) DEFAULT 'pending',
    
    -- Snapshot ข้อมูลการจัดส่งทั้งหมดไว้ที่นี่
    shipping_address_snapshot TEXT NOT NULL, 
    shipping_name_snapshot VARCHAR(100), -- ชื่อคนรับ ณ วันที่สั่งซื้อ
    shipping_phone_snapshot VARCHAR(20), -- เบอร์โทรคนรับ ณ วันที่สั่งซื้อ
    
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE user_addresses (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    
    -- เพิ่มข้อมูลผู้รับในที่อยู่นั้นๆ
    recipient_name VARCHAR(100) NOT NULL, -- ชื่อ-นามสกุล ผู้รับ
    phone_number VARCHAR(20) NOT NULL,     -- เบอร์โทรสำหรับที่อยู่นี้
    
    address_line1 TEXT NOT NULL, 
    sub_district VARCHAR(100),   
    district VARCHAR(100),       
    province VARCHAR(100),       
    postal_code VARCHAR(10),     
    is_default BOOLEAN DEFAULT false,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE order_items (
    id SERIAL PRIMARY KEY,
    
    -- เชื่อมไปยัง Table orders
    order_id INT REFERENCES orders(id) ON DELETE CASCADE,
    
    -- เชื่อมไปยัง Table products
    product_id INT REFERENCES products(id) ON DELETE SET NULL,
    
    -- จำนวนสินค้าที่ซื้อ
    quantity INT NOT NULL CHECK (quantity > 0),
    
    -- ราคาต่อหน่วย ณ วันที่ซื้อ (Price Snapshot)
    -- สำคัญมาก: ห้ามดึงราคาจาก table products มาแสดงตรงๆ ในหน้าประวัติการซื้อ
    unit_price DECIMAL(10, 2) NOT NULL,
    
    -- ราคารวมของรายการนี้ (quantity * unit_price) 
    -- จะคำนวณจาก Backend แล้ว Insert ลงมา หรือจะมาคำนวณตอน Select ก็ได้
    subtotal DECIMAL(12, 2) NOT NULL 
);