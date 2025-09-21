## Task 7 — Data Migration Example

# Overview

This project demonstrates a data migration from a legacy database to a normalized PostgreSQL schema.

The legacy database has three tables: users, addresses, and orders.

All legacy tables are empty / contain NULL values, so dummy data is used to simulate migration.

The goal is to demonstrate ETL principles, data normalization, and validation.

## Project Structure
migration-task/
├─ README.md
├─ sql/
│  ├─ 01_create_schema.sql       # Create PostgreSQL normalized schema
│  ├─ 02_insert_dummy_data.sql   # Insert sample data to simulate migration
│  └─ 03_validation.sql          # Validation queries to check migration
├─ diagrams/
│  └─ before_after.txt           # Schema before/after migration

## Steps
# 1. Create Schema

Run sql/01_create_schema.sql in PostgreSQL to create the normalized tables:

users — stores user information

addresses — stores user addresses

orders — stores user orders

# 2. Insert Sample Data

Run sql/02_insert_dummy_data.sql to populate tables with dummy data:

Simulates real migration from legacy database

Ensures relationships (foreign keys) work correctly

# 3. Validate Migration

Run sql/03_validation.sql to:

Check row counts for each table

Spot-check sample records to ensure data integrity

## Notes

Legacy users, addresses, and orders exist but contain no real data.

Dummy data is used to demonstrate migration, normalization, and ETL logic.

All foreign key relationships are maintained in the new schema.


## Deliverables

SQL scripts: 01_create_schema.sql, 02_insert_dummy_data.sql, 03_validation.sql

Before/after schema diagram: diagrams/before_after.txt
