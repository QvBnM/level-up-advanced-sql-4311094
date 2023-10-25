Select e.firstName,e.lastName
,SUM(CASE WHEN strftime('%m', soldDate) = '01' then s.salesAmount END )'1'
,SUM(CASE WHEN strftime('%m', soldDate) = '02' then s.salesAmount END )'2'
,SUM(CASE WHEN strftime('%m', soldDate) = '03' then s.salesAmount END )'3'
,SUM(CASE WHEN strftime('%m', soldDate) = '04' then s.salesAmount END )'4'
,SUM(CASE WHEN strftime('%m', soldDate) = '05' then s.salesAmount END )'5'
,SUM(CASE WHEN strftime('%m', soldDate) = '06' then s.salesAmount END )'6'
,SUM(CASE WHEN strftime('%m', soldDate) = '07' then s.salesAmount END )'7'
,SUM(CASE WHEN strftime('%m', soldDate) = '08' then s.salesAmount END )'8'
,SUM(CASE WHEN strftime('%m', soldDate) = '09' then s.salesAmount END )'9'
,SUM(CASE WHEN strftime('%m', soldDate) = '10' then s.salesAmount END )'10'
,SUM(CASE WHEN strftime('%m', soldDate) = '11' then s.salesAmount END )'11'
,SUM(CASE WHEN strftime('%m', soldDate) = '12' then s.salesAmount END ) '12'
FROM employee e
JOIN sales s on e.employeeId = s.employeeId
Where s.soldDate >='2021-01-01' and s.soldDate <'2022-01-01'
GROUP BY e.lastName,e.firstName
ORDER BY e.lastName,e.firstName
;
