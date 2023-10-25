Select  
e.firstName , e.lastName,e.title
, em.managerId, em.firstName, em.lastName,em.title
FROM employee as e
INNER JOIN employee em 
  on e.managerId = em.employeeId
LIMIT 5;