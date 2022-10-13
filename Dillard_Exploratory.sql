--1. What was the highest original price in the Dillard’s database of the item with SKU 3631365?
SELECT orgprice, SKU 
FROM trnsact 
WHERE SKU='3631365' 
ORDER BY orgprice DESC

--2. What is the color of the Liz Claiborn brand item with the highest SKU # in the Dillard’s database (the Liz Claiborn brand is abbreviated “LIZ CLAI” in the Dillard’s database)?
SELECT TOP 5 sku, style, color, size, vendor, brand 
FROM skuinfo 
WHERE brand like '%Liz CLAI%' 
ORDER BY sku DESC

--3. What is the sku number of the item in the Dillard’s database that had the highest original sales price?
SELECT TOP 5 sku, orgprice 
FROM trnsact 
ORDER BY orgprice desc

--4.  According to the strinfo table, in how many states within the United States are Dillard’s stores located?
SELECT DISTINCT state 
FROM strinfo;

--5. How many Dillard’s departments start with the letter “e”?
SELECT DISTINCT deptdesc 
FROM deptinfo 
WHERE deptdesc like 'e%' 
ORDER BY deptdesc

--6. What was the date of the earliest sale in the database where the sale price of the item did not equal the original price of the item, and what was the largest margin (original price minus sale price) of an item sold on that earliest date?
SELECT TOP 100 orgprice, sprice, orgprice-sprice AS margin, saledate 
FROM trnsact 
WHERE orgprice<>sprice 
ORDER BY saledate ASC, margin DESC

--7. What register number made the sale with the highest original price and highest sale price between the dates of August 1, 2004 and August 10, 2004?
SELECT TOP 100 register, saledate, orgprice, sprice 
FROM trnsact 
WHERE SALEDATE BETWEEN '2004-08-01' AND '2004-08-10' 
ORDER BY orgprice DESC, sprice DESC

--8. Which of the following brand names with the word/letters “liz” in them exist in the Dillard’s database?
SELECT DISTINCT brand 
FROM skuinfo 
WHERE brand like '%Liz%' 
ORDER BY sku DESC

--9. What is the lowest store number of all the stores in the STORE_MSA table that are in the city of “little rock”,”memphis”, or “tulsa”?
SELECT store, city 
FROM store_msa 
WHERE city IN('little rock','memphis','tulsa') 
ORDER BY store