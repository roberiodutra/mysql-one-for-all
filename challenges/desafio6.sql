SELECT 
	MIN(plans.value)
    AS faturamento_minimo,
  MAX(plans.value)
    AS faturamento_maximo,
  ROUND(AVG(plans.value), 2)
    AS faturamento_medio,
  ROUND(SUM(plans.value), 2)
    AS faturamento_total
FROM plans

INNER JOIN users
ON plans.id = users.plan_id;
