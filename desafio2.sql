SELECT
	COUNT(c.cancao_id) cancoes,
    COUNT( DISTINCT ar.artista_id) artistas,
    COUNT( DISTINCT al.album_id) albuns
FROM SpotifyClone.cancoes c
INNER JOIN SpotifyClone.albuns al ON c.album_id = al.album_id
INNER JOIN SpotifyClone.artistas ar ON al.artista_id = ar.artista_id;