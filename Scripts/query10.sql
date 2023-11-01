Select 
  e.lastName,e.firstName, m.model
  ,count(*) 'Numar_Vanzari'
  ,RANK () OVER ( PARTITION BY e.employeeId ORDER BY count(*) DESC) as 'Rank' 
FROM sales s 
JOIN employee e 
  on e.employeeId = s.employeeId 
JOIN inventory i 
  on i.inventoryId = s.inventoryId
JOIN model m 
  on m.modelId = i.modelId
GROUP BY e.lastName,e.firstName, m.model
 