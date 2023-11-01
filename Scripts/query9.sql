SELECT s.salesId,m.modelId, m.model, m.EngineType FROM sales s 
JOIN inventory i on s.inventoryId = i.inventoryId
JOIN model m on m.modelId = i.modelId
Where m.EngineType = 'Electric'

SELECT * FROM sales 
Where salesId in 
(
SELECT s.salesId FROM sales s 
JOIN inventory i on s.inventoryId = i.inventoryId
JOIN model m on m.modelId = i.modelId
Where m.EngineType = 'Electric'
)