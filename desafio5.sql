SELECT 
	  c.cancao cancao,
    COUNT(r.cancao_id) reproducoes
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.reproducoes r ON c.cancao_id = r.cancao_id
GROUP BY c.cancao
ORDER BY reproducoes DESC, c.cancao
LIMIT 2;