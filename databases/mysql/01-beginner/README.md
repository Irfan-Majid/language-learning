# Beginner Guide - MySQL

**Time:** 1-2 weeks

## Step 1: Install
- Windows: MySQL Installer | Mac: `brew install mysql` | Docker: `docker run -p 3306:3306 -e MYSQL_ROOT_PASSWORD=pass mysql`

## Step 2: Connect
```bash
mysql -u root -p
```

## Step 3: Run example
```bash
mysql -u root -p < examples/hello.sql
```

## Core SQL
```sql
CREATE DATABASE learning_db;
USE learning_db;
SELECT * FROM users WHERE name = 'Alice';
INSERT INTO users (name, email) VALUES ('Bob', 'bob@example.com');
```

## Practice
1. Design `products` table with price
2. JOIN users to orders
3. Add index on email column

-> [02-fundamentals/](../02-fundamentals/)
