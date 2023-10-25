Select
e.employeeId,
e.firstName,e.lastName,
count(*)
FROM employee e
JOIN sales s on s.employeeId = e.employeeId
GROUP BY e.firstName,e.lastName, e.employeeId