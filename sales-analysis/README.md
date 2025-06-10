
# Sales Analysis Project

This project provides insights into customer orders, revenue, and sales patterns using SQL and a sample sales dataset.

---

## 📊 SQL Queries and Insights

### 1. Total Revenue by Region
```sql
SELECT 
    SUM(Revenue) AS `Total Revenue`, 
    Region
FROM 
    sales_data
GROUP BY 
    Region
ORDER BY 
    `Total Revenue` DESC;
```

### 2. Total Orders per Region
```sql
SELECT 
    Region,
    COUNT(*) AS `Total Orders`
FROM sales_data
GROUP BY 
    Region
ORDER BY `Total Orders` DESC;
```

### 3. Highest Revenue Day
```sql
SELECT 
    Order_Date,
    SUM(Revenue) AS `Total Revenue`
FROM
    sales_data
GROUP BY 
    Order_Date
ORDER BY 
    `Total Revenue` DESC
LIMIT 1;
```

### 4. Revenue by Product Category
```sql
SELECT
    SUM(Revenue) AS `Total Revenue`,
    Category
FROM
    sales_data
GROUP BY 
    Category
ORDER BY
    `Total Revenue` ASC;
```

### 5. Top 5 Products by Total Sales Value
```sql
SELECT 
    Product, 
    SUM(Revenue) AS `Total Revenue`
FROM 
    sales_data
GROUP BY 
    Product
ORDER BY 
    `Total Revenue` DESC
LIMIT 5;
```

### 6. Monthly Revenue Trend
```sql
SELECT 
  strftime('%Y-%m', Order_Date) AS Month,
  SUM(Revenue) AS `Total Revenue`
FROM 
  sales_data
GROUP BY 
  Month
ORDER BY 
  Month ASC;
```

### 7. Best Selling Product by Quantity
```sql
SELECT 
    SUM(Quantity) AS `Total Quantity Sold`,
    Product
FROM sales_data
GROUP BY 
    Product
ORDER BY 
    `Total Quantity Sold` DESC
LIMIT 1;
```

### 8. Top 5 Customers by Revenue
```sql
SELECT
    Customer_ID,
    SUM(Revenue) AS `Total Revenue`
FROM sales_data
GROUP BY 
    Customer_ID
ORDER BY 
    `Total Revenue` DESC
LIMIT 5;
```

### 9. Sample Preview of the Data
```sql
SELECT *
FROM sales_data
LIMIT 5;
```

---

## 🗂️ How to Use

- Clone this repository or download the database file.
- Open it in SQLite or your SQL environment.
- Run queries from the README or from `sales_analysis_queries.sql`.

---

## 📁 Files in This Folder

- `sales_analysis_queries.sql` — SQL file with all queries.
- `sales_data.db` — SQLite database file (if uploaded).
- `README.md` — This documentation file.

---

## ✍️ Author

Isaac Koomson — [GitHub Profile](https://github.com/Kisaac333)

