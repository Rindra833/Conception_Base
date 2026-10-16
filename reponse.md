# POSTGRES
## Etape 01 - La carte 
**Quel type choisissez-vous pour le prix ?**
On choisit `INTEGER`car les montants sont en chiffres exactes et un type entier évite les erreurs d'arrondi

**Quel identifiant choisissez-vous ?**
On choisit `id_plat` comme clé primaire car le nom peut changer et n'est pas unique. L'id est unique et ne change jamais.