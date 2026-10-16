CREATE TABLE COMMANDE (
    id_commande INTEGER PRIMARY KEY,
    date_commande DATE NOT NULL
);

CREATE TABLE LIGNE_COMMANDE (
    id_commande INTEGER NOT NULL,
    id_plat INTEGER NOT NULL,
    quantite INTEGER NOT NULL
    CHECK (quantite > 0),
    PRIMARY KEY (id_commande, id_plat),
    FOREIGN KEY (id_commande) REFERENCES COMMANDE(id_commande),
    FOREIGN KEY (id_plat) REFERENCES PLAT (id_plat)
);

INSERT INTO COMMANDE (id_commande, date_commande) VALUES
(1, '2025-01-15'),
(2, '2025-01-15'),
(3, '2025-01-16');

INSERT INTO LIGNE_COMMANDE (id_commande, id_plat, quantite) 
VALUES
(1,1,2),
(1,7,2),
(2,2,1),
(2,5,1),
(2,6,1),
(3,3,3),
(3,4,1);

