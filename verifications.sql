-- ETAPE 01
-- afficher les plats le + cher au - cher
SELECT id_plat,nom,prix FROM PLAT ORDER BY prix DESC;

-- ETAPE 02
-- Nombre de palts par categorie y compris les categories sans plat 
SELECT c.id_categorie, c.libelle, COUNT(p.id_plat) AS nb_plats FROM CATEGORIE c LEFT JOIN PLAT p ON p.id_categorie = c.id_categorie 
GROUP BY c.id_categorie, c.libelle
ORDER BY c.id_categorie; 

-- ETAPE 03 
-- Montant total de chaque demande
SELECT c.id_commande, c.date_commande, 
SUM(lc.quantite * p.prix) AS montant_total FROM COMMANDE c 
JOIN LIGNE_COMMANDE lc ON lc.id_commande = c.id_commande
JOIN PLAT p ON p.id_plat = lc.id_plat
GROUP BY c.id_commande, c.date_commande 
ORDER BY c.id_commande;

-- ETAPE 04
-- liste des commandes avec le nom du client ou client de passage
SELECT c.id_commande, c.date_commande, COALESCE(cl.nom, 'client de passage') AS client 
FROM COMMANDE c LEFT JOIN CLIENT cl ON cl.id_client = c.id_client ORDER BY c.id_commande;