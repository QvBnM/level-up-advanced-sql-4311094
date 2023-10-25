Select 
e.firstName,
e.lastName,
e.title,
s.salesAmount
FROM employee e
LEFT JOIN sales s on s.employeeId = e.employeeId
Where e.title = 'Sales Person' and s.salesId is null;