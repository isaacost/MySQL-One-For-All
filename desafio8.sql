SELECT 
	ar.artista artista,
    al.album album
FROM SpotifyClone.artistas ar
INNER JOIN SpotifyClone.albuns al ON ar.artista_id = al.artista_id
WHERE ar.artista LIKE 'Elis Regina';
