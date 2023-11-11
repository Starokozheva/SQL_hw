-- Вывести название и стоимость товаров от 20 EUR.

SELECT * 
FROM Products
WHERE 
Price >= 20


-- Вывести страны поставщиков.

SELECT DISTINCT
   Country
FROM Suppliers


-- В упорядоченном по стоимости виде вывести название и стоимость товаров от всех поставщиков, кроме поставщика 1.

SELECT *
FROM Products

WHERE
NOT SupplierID = 1

ORDER BY Price ASC


-- Вывести контактные имена клиентов, кроме тех, что из France и USA.

SELECT 
  ContactName
FROM Customers

WHERE 
  NOT Country IN ('France', 'USA')


--   Вывести два самых дорогих товара из категории 4

SELECT * 
FROM Products

WHERE 
  CategoryID = 4
ORDER BY Price DESC
LIMIT 2