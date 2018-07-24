--AFFICHER TT LES ALBUMS
--SELECT * FROM ALBUMS;

--select great dans titre ALBUMS
--SELECT * FROM ALBUMS
--WHERE Title LIKE 'Great%';

-- compter le nombre d'album dans la bd
--SELECT COUNT albums

--supprimer le nom dont le mot contient musique
DELETE FROM albums
WHERE Title LIKE '%music%';

--recup tt les les tites album ac:dc
--SELECT Title FROM albums
--JOIN artists on artists.ArtistId  = albums.ArtistId
--WHERE artists.Name = 'AC/DC';

--recup tt les album ac:dc
--SELECT AlbumId FROM albums
--JOIN artists on artists.ArtistId  = albums.ArtistId
--WHERE artists.Name = 'AC/DC';

SELECT COUNT(AlbumId)
FROM albums;
