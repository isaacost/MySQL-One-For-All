SELECT 
	DISTINCT u.usuario usuario,
	IF(YEAR(MAX(r.data_reproducao)) >= 2021,'Usuário ativo','Usuário inativo') status_usuario
FROM SpotifyClone.reproducoes r
INNER JOIN SpotifyClone.usuarios u ON r.usuario_id = u.usuario_id
GROUP BY u.usuario
ORDER BY u.usuario;