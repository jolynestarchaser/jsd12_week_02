# Artist Merchandise Platform (Database Exercise)

## Project Overview
This project is part of a transition from a restaurant-themed database exercise to a custom **Artist Merchandise Platform**. It focuses on the database layer, providing the PostgreSQL schema and initial data seeding for a marketplace that connects artists with customers for unique, sentimental items.

The schema now includes:
- **`users`**: Stores both regular customers and artists (distinguished by the `artist` boolean).
- **`item`**: Represents the products/merchandise, each linked to an artist.
- **`orders`**: Tracks purchases, linking users to specific item SKUs.
- **`artists`**: Holds additional profile information (bio, portfolio) for users who are artists.

## Database (PostgreSQL)

### Schema Definition
The core structure is defined in `create-tables.sql`. It uses `SERIAL` for auto-incrementing IDs and maintains relational integrity through foreign key constraints (e.g., `item.artist_id` references `users.user_id`).

### Setup and Running
To set up the database from scratch, execute the SQL scripts in the following order:

1.  **`create-tables.sql`**: Create the tables and establish relationships.
2.  **`01_users.sql`**: Seed the `users` table with sample data for both artists and customers.
3.  **`query.sql`**: Use this file as a workspace for testing and running queries against the database.

**Example Command (via psql):**
```bash
psql -U your_user -d your_db -f create-tables.sql
psql -U your_user -d your_db -f 01_users.sql
```

## Development Conventions
- **Transition Status:** The migration from the restaurant schema is complete for the core tables. Further expansion (e.g., adding `categories` or `order_items` for multiple items per order) is expected.
- **Identity Management:** Uses `TRUNCATE ... RESTART IDENTITY CASCADE` in seeding scripts to ensure a clean state during development.
- **Naming:** Follows lowercase table and column names with underscores.

## TODO
- [ ] Add more seeding scripts for `item`, `orders`, and `artists` tables.
- [ ] Implement a junction table for orders to support multiple items per order.
- [ ] Align the JavaScript logic in the root directory (if applicable) with this updated schema.
