-- ETAPE 01
-- afficher les plats le + cher au - cher
SELECT id_plat,nom,prix FROM PLAT ORDER BY prix DESC;

-- ETAPE 02
-- Nombre de palts par categorie y compris les categories sans plat 
SELECT c.id_categorie, c.libelle, COUNT(p.id_plat) AS nb_plats FROM CATEGORIE c LEFT JOIN PLAT p ON p.id_categorie = c.id_categorie 
GROUP BY c.id_categorie, c.libelle
ORDER BY c.id_categorie; 