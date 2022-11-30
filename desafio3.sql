SELECT
	  u.usuario usuario,
    COUNT(r.usuario_id) qt_de_musicas_ouvidas,
    ROUND(SUM(c.duracao_segundo) /60,2) total_minutos
FROM SpotifyClone.usuarios u
INNER JOIN SpotifyClone.reproducoes r ON u.usuario_id = r.usuario_id
INNER JOIN SpotifyClone.cancoes c ON r.cancao_id = c.cancao_id
GROUP BY u.usuario
ORDER BY u.usuario;