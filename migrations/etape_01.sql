CREATE TABLE PLAT (
    id_plat INTEGER PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prix INTEGER NOT NULL
);

INSERT INTO PLAT (id_plat,nom,prix) VALUES 
(1, 'Romazava', 7000),
(2, 'Ravitoto sy henakisoa', 8000),
(3, 'Akoho sy voanio', 8500),
(4, 'Mi Sao', 6000),
(5, 'Soupe Chinoise', 5000),
(6, 'Mofo gasy (les 4)', 1000),
(7, 'Ranon`ampango', 500);