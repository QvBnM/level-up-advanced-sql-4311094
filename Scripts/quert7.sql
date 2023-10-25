with cte AS
(
Select strftime('%Y',soldDate) Y, salesAmount SA FROM sales
)

Select Y, FORMAT('$%.2f',SUM(SA)) as SA FROM cte
GROUP by Y
order by Y