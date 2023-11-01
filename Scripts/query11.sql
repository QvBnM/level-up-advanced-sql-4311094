-- Select 
--   strftime('%m', soldDate) LUNA, strftime('%Y', soldDate) 'AN'
-- -- ,SUM(salesAmount) 
-- -- OVER(PARTITION by strftime('%m', soldDate) 
-- --     ORDER BY strftime('%Y', soldDate),strftime('%m', soldDate)) 'Vanzari pe luna'
-- ,SUM(salesAmount) 
-- OVER(PARTITION by strftime('%Y', soldDate) 
--     ORDER BY strftime('%Y', soldDate),strftime('%m', soldDate)) 'Vanzari pe an'    
-- FROM sales
-- GROUP BY strftime('%m', soldDate),strftime('%Y', soldDate)
-- ORDER BY 2,1


-- Select strftime('%Y', soldDate) SY, strftime('%m', soldDate) SM, SUM(salesAmount)  SA FROM sales
-- GROUP BY strftime('%Y', soldDate), strftime('%m', soldDate)

with cte AS
(
Select strftime('%Y', soldDate) SY, strftime('%m', soldDate) SM, SUM(salesAmount)  SA FROM sales
GROUP BY strftime('%Y', soldDate), strftime('%m', soldDate)
)
Select c.*,
SUM (SA) OVER (
    PARTITION BY SY ORDER BY SY,SM) ANUAL_INCREASE 
FROM cte c
ORDER BY SY

