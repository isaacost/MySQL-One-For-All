SELECT 
	  MIN(p.valor_plano) faturamento_minimo,
	  MAX(p.valor_plano) faturamento_maximo,
    ROUND(AVG(p.valor_plano),2) faturamento_medio,
    ROUND(SUM(valor_plano),2) faturamento_total
FROM SpotifyClone.planos p
INNER JOIN SpotifyClone.usuarios u ON p.plano_id = u.plano_id ;