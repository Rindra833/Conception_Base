CREATE TABLE CLIENT (
    id_client INTEGER PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    telephone VARCHAR(20)
);

ALTER TABLE COMMANDE ADD COLUMN id_client INTEGER;

ALTER TABLE COMMANDE ADD CONSTRAINT fk_commande_client FOREIGN KEY (id_client) REFERENCES CLIENT(id_client);

INSERT INTO CLIENT (id_client, nom, telephone) VALUES 
(1, 'Rakoto', '0331234567'),
(2, 'Rindra', '0333333333');

UPDATE COMMANDE SET id_client= 1 
WHERE id_commande = 1;
UPDATE COMMANDE SET id_client = 2
WHERE id_commande = 3;