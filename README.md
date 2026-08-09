# Bakery Inventory Management Database

*Originally designed as a course project for CDS 302 (Fall 2025); 
implemented and published independently.*

A normalized relational database designed for a small bakery to track
products, ingredients, suppliers, and sales.

## Schema
- **Product** – baked goods sold, with category and price
- **Ingredient** – stock levels, units, and reorder thresholds
- **Supplier** – ingredient supplier contact info
- **Sale** – transaction records
- **Product_Ingredient / Sale_Product** – junction tables resolving
  many-to-many relationships (a product uses many ingredients; a sale
  includes many products)

## Files
- `schema.sql` – table definitions and relationships
- `sample_data.sql` – fictitious sample data for demonstration
- `queries.sql` – analytical queries

## Sample Queries
Includes queries to:
- List all products and prices
- Flag ingredients below reorder level
- Calculate total quantity sold per product
- Summarize daily sales revenue
- Map suppliers to the ingredients they provide

## How to Run
1. Run `schema.sql` to create the database and tables
2. Run `sample_data.sql` to populate them with sample data
3. Run `queries.sql` to see example analysis

## Tools
SQL (MySQL), E-R and relational diagramming
