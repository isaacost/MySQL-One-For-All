SELECT 
  	c.cancao nome,
    COUNT(r.cancao_id) reproducoes
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.reproducoes r ON c.cancao_id = r.cancao_id
INNER JOIN SpotifyClone.usuarios u ON r.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.planos p ON u.plano_id = p.plano_id
WHERE p.plano IN ('gratuito','pessoal')
GROUP BY c.cancao
ORDER BY c.cancao;