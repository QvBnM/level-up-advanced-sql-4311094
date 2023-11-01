WITH CTE AS (
Select strftime('%Y-%m', soldDate) SM,count(*) CT
, LAG(count(*),1,0) 
    OVER(ORDER BY strftime('%Y-%m', soldDate)) CTH 
FROM sales
GROUP BY strftime('%Y-%m', soldDate)
)

SELECT *, CT-CTH as Diff 
FROM CTE 