# POSTGRES
## Etape 01 - La carte 
**Quel type choisissez-vous pour le prix ?**
On choisit `INTEGER`car les montants sont en chiffres exactes et un type entier évite les erreurs d'arrondi

**Quel identifiant choisissez-vous ?**
On choisit `id_plat` comme clé primaire car le nom peut changer et n'est pas unique. L'id est unique et ne change jamais.

## Etape 02 - Les catégories 
**Pourquoi ne pas simplement ajouter une colonne categorie VARCHAR(50) dans la table des plats ?**
Si on ajoute une colonne categorie, on risque d'avoir des valeurs différentes pour la même catégorie,alors qu'en créant une table CATEGORIE, on peut s'assurer que les catégories sont uniques

**Donnez un exemple de problème concret**
Si RADO renomme "Plat malagasy" en "Plat Gasy" , on devrait mettre à jour toutes les lignes de la table PLAT, ce qui est sujet à erreurs (risqué).

## ETAPE 03 - Les commandes
**Où placez-vous la quantité ?**
On place la quantité dans la table LIGNE_COMMANDE pour qu'on puisse avoir plusieurs plats avec de quantités différentes.