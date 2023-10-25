Select
e.employeeId,
e.firstName,e.lastName
, MAX(s.salesAmount) as MAX_Amount, MIN (s.salesAmount) as MIN_Amount
FROM employee e
JOIN sales s on s.employeeId = e.employeeId
WHERE s.soldDate >= date('now', 'start of year')
GROUP BY e.firstName,e.lastName, e.employeeId