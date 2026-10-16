**CATEGORIE**(<u>**id_categorie**</u>, libelle)

**PLAT**(<u>**id_plat**</u>, nom, prix, #id_categorie)

**CLIENT**(<u>**id_client**</u>, nom, telephone?)  *(nouveau)*

**COMMANDE**(<u>**id_commande**</u>, date_commande, #id_client?)  *(modifié)*

**LIGNE_COMMANDE**(<u>**#id_commande**</u>, <u>**#id_plat**</u>, quantite)