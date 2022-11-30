SELECT 
	ar.artista artista,
    al.album album,
    COUNT(s.artista_id) seguidores  
FROM SpotifyClone.albuns al
INNER JOIN SpotifyClone.artistas ar ON al.artista_id = ar.artista_id
INNER JOIN SpotifyClone.seguidores s ON ar.artista_id = s.artista_id
GROUP BY al.album_id
ORDER BY seguidores DESC, ar.artista, al.album;