-- ETAPE 01
-- afficher les plats le + cher au - cher
SELECT id_plat,nom,prix FROM PLAT ORDER BY prix DESC;

-- ETAPE 02
-- Nombre de palts par categorie y compris les categories sans plat 
SELECT c.id_categorie, c.libelle, COUNT(p.id_plat) AS nb_plats FROM CATEGORIE c LEFT JOIN PLAT p ON p.id_categorie = c.id_categorie 
GROUP BY c.id_categorie, c.libelle
ORDER BY c.id_categorie; 

-- ETPAE 03 
-- Montant total de chaque demande
SELECT c.id_commande, c.date_commande, 
SUM(lc.quantite * p.prix) AS montant_total FROM COMMANDE c 
JOIN LIGNE_COMMANDE lc ON lc.id_commande = c.id_commande
JOIN PLAT p ON p.id_plat = lc.id_plat
GROUP BY c.id_commande, c.date_commande 
ORDER BY c.id_commande;