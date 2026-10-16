ALTER TABLE PLAT
ADD COLUMN id_categorie INTEGER;

CREATE TABLE CATEGORIE (
    id_categorie INTEGER PRIMARY KEY,
    libelle VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO CATEGORIE (id_categorie,libelle) VALUES 
(1, 'Plat malagasy'),
(2, 'Plat chinois'),
(3, 'Soupe'),
(4, 'Dessert et gouter'),
(5, 'Boisson');

UPDATE PLAT SET id_categorie = 1 WHERE nom IN ('Romazava', 'Ravitoto sy henakisoa', 'Akoho sy voanio');
UPDATE PLAT SET id_categorie = 2 WHERE nom = 'Mi Sao';
UPDATE PLAT SET id_categorie = 3 WHERE nom = 'Soupe Chinoise';
UPDATE PLAT SET id_categorie = 4 WHERE nom = 'Mofo gasy (les 4)';
UPDATE PLAT SET id_categorie = 5 WHERE nom = 'Ranon`ampango';

ALTER TABLE PLAT ADD CONSTRAINT fk_plat_categorie FOREIGN KEY (id_categorie) REFERENCES CATEGORIE (id_categorie);
ALTER TABLE PLAT ALTER COLUMN id_categorie SET NOT NULL;
'