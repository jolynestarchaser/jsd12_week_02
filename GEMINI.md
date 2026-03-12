# Artist Merchandise Platform (Ecommerce)

## Project Overview
This project is an early-stage development of an **Artist Merchandise Platform**. It aims to connect artists with fans by providing a centralized space for unique, niche, and sentimental fashion/art items. 

The project currently contains a mix of:
1.  **Business Design:** Problem statement, Business Model Canvas, and Use Case diagrams.
2.  **Product Planning:** User stories for customers and admins (e.g., browsing products, adding to cart, connecting with artists).
3.  **Experimental Implementation:** Basic JavaScript logic (`06_bring-it-to-javascript.js`) simulating a shopping cart and user profiles.
4.  **Database Practice:** A PostgreSQL schema (`postgresql/create-tables.sql`) that currently models a Restaurant/Cafe system (Suppliers, Ingredients, Menu Items) used for SQL training and exercises.

## Project Structure
- **Root Directory:** Contains documentation and business logic.
    - `01_my-ecommerce.md`: Business vision and problem statement.
    - `05_product-backlog.md`: User stories for the platform.
    - `06_bring-it-to-javascript.js`: JavaScript prototypes for items, users, and cart logic.
    - `*.excalidraw`: Design diagrams (ER, Use Case, BMC).
- **`postgresql/` Directory:** SQL scripts for database structure and queries.
    - `create-tables.sql`: Definitions for restaurant-themed tables (Suppliers, Staff, Ingredients, MenuItems, Orders).
    - `excersice.sql` & `query.sql`: Basic SQL operations (SELECT, WHERE, ORDER BY).
    - `01_suppliers.sql` - `07_order_items.sql`: Data seeding scripts for the current schema.

## Building and Running
### Database (PostgreSQL)
- To set up the database, run the scripts in the `postgresql/` folder in order (1-7), starting with `create-tables.sql`.
- Current exercises are found in `excersice.sql`.

### JavaScript Logic
- The logic is contained in `06_bring-it-to-javascript.js`.
- **Run with Node.js:** `node 06_bring-it-to-javascript.js`
- **Current functionality:** Prints user details, cart contents, and a calculated total price to the console.

## Development Conventions
- **Transitioning:** The project is in the process of moving from a restaurant-themed database exercise to a custom e-commerce application.
- **Data Modeling:** Use JavaScript objects to prototype entities before implementing them in the database.
- **SQL Practice:** Focus on mastering basic queries (SELECT, JOIN, ORDER BY) before building out the full e-commerce schema.

## TODO
- [ ] Align the PostgreSQL schema with the Artist Merchandise business model (migrate from Restaurant items to Products/Artworks).
- [ ] Expand the JavaScript logic to include cart manipulation (add/remove) and order placement.
- [ ] Connect the JavaScript logic to the PostgreSQL database.
