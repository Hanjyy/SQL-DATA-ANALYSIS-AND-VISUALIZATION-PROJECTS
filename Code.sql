-- Number of item sold and ordered by  num_of_times_ordered
SELECT `Product Name`, 
COUNT(*) AS num_of_times_ordered, 
SUM(`Quantity ordered new`) AS num_of_quantity_sold FROM `superstore`,
GROUP BY `Product Name`, 
ORDER BY num_of_quantity_sold DESC;

-- Number of item sold and ordered by num_of_quantity_sold
SELECT `Product Name`, 
COUNT(*) AS num_of_times_ordered, 
SUM(`Quantity ordered new`) AS num_of_quantity_sold FROM `superstore`, 
GROUP BY `Product Name`, 
ORDER BY num_of_quantity_sold DESC ;

-- Info About the total Profit Made
SELECT SUM(`Profit`) FROM `superstore`;

-- Infomation about the top costomer
SELECT * FROM `superstore`, 
WHERE `Customer Name` = "Jenny Gold";

-- Select the Top Costomers
SELECT `Customer Name`, 
COUNT(*) AS row_num FROM `superstore`, 
GROUP BY `Customer Name`, 
ORDER BY row_num DESC ;

-- Count the product Item that sold the most 
SELECT `Product Category`, 
COUNT(*) AS row_num,
FROM `superstore`,
GROUP BY `Product Category`,
ORDER BY row_num DESC;
