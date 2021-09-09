-- Insertion
INSERT INTO USER (
        username,
        password,
        isAdmin,
        mail,
        sexe,
        age,
        reminderweight,
        remindermeasurements
    )
VALUES (
        'ruben',
        'pbkdf2:sha256:260000$jgjgONuN2NLxQPiT$7acc62efbb4f46f87cec0c9a5fe7628240dedaab9915eb3649b3e353eff27f4b',
        0,
        'ruben@gmail.com',
        'Homme',
        20,
        5,
        60
    ),
    (
        'antoine',
        'pbkdf2:sha256:260000$e4DTeiT29t3qC334$72a139ac5e1f959eb3900ab196a70d60d8a390f28557887814c22bb68edcd5aa',
        1,
        'antoinebouardain@gmail.com',
        'Homme',
        20,
        2,
        30
    );
INSERT INTO EXERCICE (
        title,
        imagehelp,
        nbreps,
        nbseries,
        restseries,
        restexercice
    )
VALUES ('Pompes', '', 15, 4, 45, 120),
    ('Tractions', '', 12, 4, 45, 120);

INSERT INTO MADE_WORK(
        id_muscle,
        id_exercice
)
VALUES (2,1),
    (3,2);

INSERT INTO MUSCLE (
        name
)
VALUES ("Ceinture abdominale"),
    ("Bras"),
    ("Dos"),
    ("Pectoraux"),
    ("Jambes"),
    ("Epaules"),
    ("Autre"),
    ("Corps entier"),
    ("Cardio");

INSERT INTO SPORTS_PROGRAM(
    title,
    description,
    level,
    creator
)
VALUES ("Séance Facile", "Séance pour les débutants", "Facile", "ruben"),
       ("Séance Dificile", "Séance pour les experts", "Difficile", "antoine");

INSERT INTO HAVE(
    id_sports_program,
    id_exercice
)
VALUES(1,1),
      (2,2);

INSERT INTO MAY_HAVE_A(
    id_user,
    id_sports_program,
    date
)
VALUES (1,1,'2021-03-04 14:59:07'),
       (2,2,'2021-03-09 14:59:07');

INSERT INTO USED(
    id_user,
    id_exercice,
    weight,
    date
)
VALUES (1,1,0,'2021-09-05 14:20:07'),
       (2,2,10,'2021-09-04 14:20:07');

INSERT INTO FEEDBACK (
        nature,
        title,
        description,
        date,
        etat,
        id_user
    )
VALUES ('Bug', 'Bug Suivi Eau','description bug suivi eau', '2021-03-04 14:59:07' ,'Ouvert',1),
    ('Suggestion', 'Forum', 'description forum', '2021-03-04 14:59:07','En cours de traitement',2),
    ('Bug', 'Bug Connexion', 'description bug suivi eau', '2021-03-04 14:59:07','Fermé',null);


INSERT INTO WELL_BEING (calories, water, sleep, size, weight, imc, date, id_user)
VALUES
    (127.23, 2.9, 8.20, 176.2, 67.9, 20.4, '2009-01-01', 3),
    (127.23, 2.1, 8.20, 176.2, 67.9, 20.4, '2007-01-01', 2),
    (111.23, 1.2, 1.20, 111.2, 111.9, 20.4, '2011-05-01', 3),
    (111.23, 1.9, 1.20, 111.2, 10.9, 20.4, '2011-05-01', 3),
    (111.23, 1.9, 1.20, 111.2, 31.9, 20.4, '2011-05-01', 3),
    (111.23, 7.9, 1.20, 111.2, 111.9, 20.4, '2011-05-01', 3),
    (127.23, 2.9, 8.20, 176.2, 67.9, 20.4, '2021-09-01', 1),
    (127.23, 2.1, 8.20, 176.2, 67.9, 20.4, '2021-09-02', 1),
    (111.23, 1.2, 1.20, 111.2, 111.9, 20.4, '2021-09-03', 1),
    (111.23, 1.9, 1.20, 111.2, 10.9, 20.4, '2021-09-04', 1),
    (111.23, 1.9, 1.20, 111.2, 31.9, 20.4, '2021-09-05', 1),
    (111.23, 7.9, 1.20, 111.2, 111.9, 20.4, '2021-09-06', 1);

/* INSERT QUERY NO: 1 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
379, 'Abricot', ' cru', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 204
);

/* INSERT QUERY NO: 2 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1051, 'Abricot', ' cuit', '  égoutté (sans adjonction de sucre)', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 3 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
623, 'Abricot', ' non sucré', ' conserve', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 4 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
469, 'Abricot', ' sec', 'Fruits/Fruits secs', '', 'par 100 g de portion comestible', 1240
);

/* INSERT QUERY NO: 5 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
621, 'Abricot', ' sucré', ' conserve', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 6 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10533, 'Agar Agar', 'Divers/Gélifiants et liants', '', 'par 100 g de portion comestible', '641', 160
);

/* INSERT QUERY NO: 7 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
5, 'Agneau', ' côtelette', ' crue (Suisse)', 'Viande et abats/Agneau', ' mouton', 0
);

/* INSERT QUERY NO: 8 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
675, 'Agneau', ' filet', ' cru', 'Viande et abats/Agneau', ' mouton', 0
);

/* INSERT QUERY NO: 9 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
17, 'Agneau', ' filet', ' cru (Australie', ' Nouvelle-Zélande)', 'Viande et abats/Agneau', 0
);

/* INSERT QUERY NO: 10 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13273, 'Agneau', ' filet', ' grillé à point (sans adjonction de graisse ni de sel)', 'Viande et abats/Agneau', ' mouton', 0
);

/* INSERT QUERY NO: 11 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
4, 'Agneau', ' gigot', ' cru (Suisse', ' Nouvelle-Zélande)', 'Viande et abats/Agneau', 0
);

/* INSERT QUERY NO: 12 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13304, 'Agneau', ' gigot', ' rôti (sans adjonction de graisse ni de sel)', 'Viande et abats/Agneau', ' mouton', 0
);

/* INSERT QUERY NO: 13 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
18, 'Agneau', ' rack', ' cru (Australie', ' Nouvelle-Zélande)', 'Viande et abats/Agneau', 0
);

/* INSERT QUERY NO: 14 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
19, 'Agneau', ' ragoût', ' cru (Suisse)', 'Viande et abats/Agneau', ' mouton', 0
);

/* INSERT QUERY NO: 15 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1110, 'Agneau/mouton (moyenne sans abats ni côtelette)', ' cru', 'Viande et abats/Agneau', ' mouton', '', 0
);

/* INSERT QUERY NO: 16 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1126, 'Agrume (moyenne)', ' cru', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 176
);

/* INSERT QUERY NO: 17 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
356, 'Ail', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 578
);

/* INSERT QUERY NO: 18 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
987, 'Airelle rouge', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 168
);

/* INSERT QUERY NO: 19 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13466, 'Algue', ' Nori', ' séchée', 'Légumes/Légumes secs', '', 0
);

/* INSERT QUERY NO: 20 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
273, 'Amande', 'Noix', ' graines et produits oléagineux', '', 'par 100 g de portion comestible', 2580
);

/* INSERT QUERY NO: 21 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
278, 'Amande', ' grillée sans graisse', ' salée', 'Snacks salés/Noix et graines salées', '', 0
);

/* INSERT QUERY NO: 22 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
269, 'Amande', ' grillée', ' salée', 'Snacks salés/Noix et graines salées', '', 0
);

/* INSERT QUERY NO: 23 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13397, 'Amarante', ' grain', ' cru', 'Produits céréaliers', ' légumineuses et pommes de terre/Autres produits céréaliers', 0
);

/* INSERT QUERY NO: 24 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13398, 'Amarante', ' grain', ' cuit (sans adjonction de graisse ni de sel)', 'Produits céréaliers', ' légumineuses et pommes de terre/Autres produits céréaliers', 0
);

/* INSERT QUERY NO: 25 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
868, 'Amaretti (biscuits aux amandes)', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', '1950', 464
);

/* INSERT QUERY NO: 26 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
897, 'Amidon de blé ', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon;Divers/Gélifiants et liants', '', 'par 100 g de portion comestible', 1480
);

/* INSERT QUERY NO: 27 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
377, 'Ananas', ' cru', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 219
);

/* INSERT QUERY NO: 28 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
618, 'Ananas', ' non sucré ', ' conserve', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 29 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
617, 'Ananas', ' sucré', ' conserve', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 30 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
414, 'Anchois à l''huile', ' égoutté', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 765
);

/* INSERT QUERY NO: 31 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
553, 'Appenzeller', ' gras', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', 1590
);

/* INSERT QUERY NO: 32 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
554, 'Appenzeller', ' quart-gras', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', 985
);

/* INSERT QUERY NO: 33 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13449, 'Artichaut', ' coeur', ' en conserve', ' égoutté', 'Légumes/Légumes cuits (conserves comprises)', 0
);

/* INSERT QUERY NO: 34 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1024, 'Asperge', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 109
);

/* INSERT QUERY NO: 35 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
443, 'Asperge', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 115
);

/* INSERT QUERY NO: 36 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1003, 'Aubergine', ' à l''étuvée (sans adjonction de graisse ni de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 112
);

/* INSERT QUERY NO: 37 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1653, 'Aubergine', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 98
);

/* INSERT QUERY NO: 38 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
349, 'Aubergine', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 96
);

/* INSERT QUERY NO: 39 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
380, 'Avocat', ' cru', 'Noix', ' graines et produits oléagineux;Légumes/Légumes frais', '', 0
);

/* INSERT QUERY NO: 40 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
198, 'Avoine', ' flocons', 'Pains', ' flocons et céréales pour le petit-déjeuner/Flocons', ' son et germes', 0
);

/* INSERT QUERY NO: 41 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
529, 'Babeurre', 'Lait et produits laitiers/Boissons lactées et yogourts à boire', '1', 'par 100 ml', '145', 34
);

/* INSERT QUERY NO: 42 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
845, 'Baguette parisienne ', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1080
);

/* INSERT QUERY NO: 43 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1119, 'Baie (moyenne)', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 177
);

/* INSERT QUERY NO: 44 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1122, 'Baie (moyenne)', ' cuite (sans adjonction de sucre)', 'Fruits/Fruits cuits (conserves comprises)', '', 'par 100 g de portion comestible', 155
);

/* INSERT QUERY NO: 45 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
436, 'Baie de sureau noir', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 219
);

/* INSERT QUERY NO: 46 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1577, 'Bami Goreng', ' préparé', 'Plats/Plats asiatiques', '', 'par 100 g de portion comestible', 548
);

/* INSERT QUERY NO: 47 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
381, 'Banane', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 403
);

/* INSERT QUERY NO: 48 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
740, 'Banane', ' déshydratée (chips)', 'Fruits/Fruits secs', '', 'par 100 g de portion comestible', 1570
);

/* INSERT QUERY NO: 49 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
741, 'Banane', ' mi-sèche', 'Fruits/Fruits secs', '', 'par 100 g de portion comestible', 1160
);

/* INSERT QUERY NO: 50 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13448, 'Barre de céréales', ' avec enrobage de chocolat', 'Sucreries/Barres', '', 'par 100 g de portion comestible', 1920
);

/* INSERT QUERY NO: 51 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13488, 'Barre de céréales', ' sans enrobage ni garniture', 'Sucreries/Barres', '', 'par 100 g de portion comestible', 1740
);

/* INSERT QUERY NO: 52 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
464, 'Basilic', ' cru', 'Légumes/Herbes aromatiques', '', 'par 100 g de portion comestible', 194
);

/* INSERT QUERY NO: 53 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1169, 'Bâtonnet de poisson (pané et préfrit)', ' au four (sans adjonction de graisse)', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 1040
);

/* INSERT QUERY NO: 54 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1168, 'Bâtonnet de poisson (pané et préfrit)', ' grillé à l''huile de colza HOLL', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 1250
);

/* INSERT QUERY NO: 55 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
773, 'Bâtonnet de poisson', ' pané et préfrit', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 962
);

/* INSERT QUERY NO: 56 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
871, 'Bâtonnets aux noisettes', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', '2360', 567
);

/* INSERT QUERY NO: 57 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1212, 'Berner Hobelkäse (fromage à rebibes)', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', '2030', 491
);

/* INSERT QUERY NO: 58 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1016, 'Bette', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 121
);

/* INSERT QUERY NO: 59 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
450, 'Bette', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 97
);

/* INSERT QUERY NO: 60 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1019, 'Betterave rouge', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 228
);

/* INSERT QUERY NO: 61 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
451, 'Betterave rouge', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 192
);

/* INSERT QUERY NO: 62 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
50, 'Beurre à rôtir', 'Lait et produits laitiers/Crème et beurre;Graisses et huiles/Graisses', '0.9', 'par 100 g de portion comestible', '3640', 885
);

/* INSERT QUERY NO: 63 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
751, 'Beurre d''arachides', 'Sucreries/Confitures et produits à tartiner sucrés', '', 'par 100 g de portion comestible', '2630', 636
);

/* INSERT QUERY NO: 64 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
583, 'Beurre de cacao', 'Graisses et huiles/Graisses', '0.9', 'par 100 g de portion comestible', '3700', 900
);

/* INSERT QUERY NO: 65 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
49, 'Beurre de choix', 'Lait et produits laitiers/Crème et beurre;Graisses et huiles/Graisses', '0.9', 'par 100 g de portion comestible', '3070', 746
);

/* INSERT QUERY NO: 66 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
51, 'Beurre de cuisine', 'Lait et produits laitiers/Crème et beurre;Graisses et huiles/Graisses', '0.9', 'par 100 g de portion comestible', '3060', 745
);

/* INSERT QUERY NO: 67 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
60, 'Beurre de fromagerie', 'Lait et produits laitiers/Crème et beurre;Graisses et huiles/Graisses', '0.9', 'par 100 g de portion comestible', '3070', 747
);

/* INSERT QUERY NO: 68 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
191, 'Beurre mi-gras', 'Lait et produits laitiers/Crème et beurre;Graisses et huiles/Graisses', '0.9', 'par 100 g de portion comestible', '1610', 391
);

/* INSERT QUERY NO: 69 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
859, 'Biber', 'Sucreries/Autres articles de pâtisserie', '', 'par 100 g de portion comestible', '1500', 355
);

/* INSERT QUERY NO: 70 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
817, 'Bière aux cinq céréales', 'Boissons alcoolisées/Bière', '1', 'par 100 ml', '165', 40
);

/* INSERT QUERY NO: 71 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
816, 'Bière blonde', 'Boissons alcoolisées/Bière', '1', 'par 100 ml', '176', 42
);

/* INSERT QUERY NO: 72 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1183, 'Bière panachée (moyenne)', 'Boissons alcoolisées/Bière', '1', 'par 100 ml', '166', 39
);

/* INSERT QUERY NO: 73 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13420, 'Bière', ' sans alcool', 'Boissons alcoolisées/Bière', '1', 'par 100 ml', 99
);

/* INSERT QUERY NO: 74 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1198, 'Birchermüesli', ' préparé (non sucré)', 'Plats/Müesli et bouillie', '', 'par 100 g de portion comestible', 367
);

/* INSERT QUERY NO: 75 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
930, 'Biscotte', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains croustillants', ' biscottes', ' crackers et galettes', 0
);

/* INSERT QUERY NO: 76 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
929, 'Biscotte complète', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains croustillants', ' biscottes', ' crackers et galettes', 0
);

/* INSERT QUERY NO: 77 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
867, 'Biscuit à l''anis', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', '1550', 366
);

/* INSERT QUERY NO: 78 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
903, 'Biscuits aux noisettes', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', '1970', 473
);

/* INSERT QUERY NO: 79 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
604, 'Blanc battu aux fruits', ' édulcoré', 'Lait et produits laitiers/Fromage frais et séré', '', 'par 100 g de portion comestible', 287
);

/* INSERT QUERY NO: 80 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13395, 'Blanc battu', ' nature', ' maigre', 'Lait et produits laitiers/Fromage frais et séré', '', 0
);

/* INSERT QUERY NO: 81 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
411, 'Blanc d''oeuf', ' cru', 'Œufs', '', 'par 100 g de portion comestible', 187
);

/* INSERT QUERY NO: 82 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
734, 'Blé tendre', ' grains entiers', 'Produits céréaliers', ' légumineuses et pommes de terre/Autres produits céréaliers', '', 0
);

/* INSERT QUERY NO: 83 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
939, 'Blé', ' flocons complets', 'Pains', ' flocons et céréales pour le petit-déjeuner/Flocons', ' son et germes', 0
);

/* INSERT QUERY NO: 84 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13291, 'Boeuf', ' bouilli entremêlé', ' cuit (sans adjonction de graisse ni de sel)', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 85 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13292, 'Boeuf', ' bouilli maigre', ' cuit (sans adjonction de graisse ni de sel)', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 86 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
35, 'Boeuf', ' bouilli', ' entremêlé', ' cru', 'Viande et abats/Bœuf', 0
);

/* INSERT QUERY NO: 87 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
36, 'Boeuf', ' bouilli', ' maigre', ' cru', 'Viande et abats/Bœuf', 0
);

/* INSERT QUERY NO: 88 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
640, 'Boeuf', ' coin', ' tranche', ' cru', 'Viande et abats/Bœuf', 0
);

/* INSERT QUERY NO: 89 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
648, 'Boeuf', ' cou', ' ragoût (goulache)', ' cru', 'Viande et abats/Bœuf', 0
);

/* INSERT QUERY NO: 90 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
37, 'Boeuf', ' émincé', ' cru', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 91 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
32, 'Boeuf', ' entrecôte parisienne', ' crue', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 92 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
30, 'Boeuf', ' entrecôte', ' crue', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 93 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13258, 'Boeuf', ' entrecôte', ' grillée à point (sans adjonction de graisse ni sel)', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 94 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
638, 'Boeuf', ' épaule', ' rôti', ' cru', 'Viande et abats/Bœuf', 0
);

/* INSERT QUERY NO: 95 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1075, 'Boeuf', ' épaule', ' rôtie au four à point (sans adjonction de graisse ni de sel)', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 96 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1076, 'Boeuf', ' épaule', ' rôtie au four bien cuit (sans adjonction de graisse ni de sel)', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 97 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1074, 'Boeuf', ' épaule', ' rôtie au four', ' saignant (sans adjonction de graisse ni de sel)', 'Viande et abats/Bœuf', 0
);

/* INSERT QUERY NO: 98 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
639, 'Boeuf', ' filet', ' cru', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 99 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13262, 'Boeuf', ' filet', ' grillé à point (sans adjonction de graisse ni sel)', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 100 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
657, 'Boeuf', ' foie', ' cru', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 101 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
6, 'Boeuf', ' haché', ' cru', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 102 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13297, 'Boeuf', ' hâché', ' grillé (sans adjonction de graisse ni de sel)', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 103 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
656, 'Boeuf', ' langue', ' crue', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 104 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
34, 'Boeuf', ' pièce ronde', ' tranche', ' crue', 'Viande et abats/Bœuf', 0
);

/* INSERT QUERY NO: 105 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
719, 'Boeuf', ' poitrine', ' crue', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 106 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1072, 'Boeuf', ' poitrine', ' cuite (sans adjonction de graisse ni de sel)', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 107 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
38, 'Boeuf', ' ragoût', ' cru', 'Viande et abats/Bœuf', '', 0
);

/* INSERT QUERY NO: 108 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14050, 'Boisson au  malt et cacao', ' enrichie en vitamines et minéraux', ' préparée (avec du lait)', 'Lait et produits laitiers/Boissons lactées et yogourts à boire;Boissons sans alcool/Boissons à base d''extrait de malt', '', 0
);

/* INSERT QUERY NO: 109 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13434, 'Boisson au malt et cacao', ' enrichie en vitamines et minéraux', ' poudre (Moyenne de produits du commerce)', 'Boissons sans alcool/Boissons à base d''extrait de malt', '', 0
);

/* INSERT QUERY NO: 110 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13450, 'Boisson de riz', ' nature', 'Lait et produits laitiers/Substituts du lait', '1', 'par 100 ml', 220
);

/* INSERT QUERY NO: 111 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
72, 'Boisson de soja', ' nature', 'Lait et produits laitiers/Substituts du lait', '1.08', 'par 100 ml', 167
);

/* INSERT QUERY NO: 112 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1040, 'Bolet', ' à l''étuvée (sans adjonction de graisse ni de sel)', 'Légumes/Champignons', '', 'par 100 g de portion comestible', 190
);

/* INSERT QUERY NO: 113 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
455, 'Bolet', ' cru', 'Légumes/Champignons', '', 'par 100 g de portion comestible', 164
);

/* INSERT QUERY NO: 114 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
952, 'Bonbon dur', 'Sucreries/Bonbons', ' bonbons gélifiés aux fruits et chewing-gums', '', 'par 100 g de portion comestible', 1630
);

/* INSERT QUERY NO: 115 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
951, 'Bonbon gélifié à l''arome de fruit', 'Sucreries/Bonbons', ' bonbons gélifiés aux fruits et chewing-gums', '', 'par 100 g de portion comestible', 1450
);

/* INSERT QUERY NO: 116 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1272, 'Bonhomme de pâte', 'Sucreries/Autres articles de pâtisserie', '', 'par 100 g de portion comestible', '1380', 329
);

/* INSERT QUERY NO: 117 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
778, 'Boudin', 'Produits carnés et charcuterie/Produits de charcuterie cuits', '', 'par 100 g de portion comestible', '619', 149
);

/* INSERT QUERY NO: 118 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
776, 'Boudin blanc', 'Produits carnés et charcuterie/Produits de charcuterie cuits', '', 'par 100 g de portion comestible', '1050', 253
);

/* INSERT QUERY NO: 119 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
664, 'Bouillon de légumes', ' preparé', 'Plats/Potages et soupes', '1', 'par 100 g de portion comestible', 26
);

/* INSERT QUERY NO: 120 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
665, 'Bouillon de poule', ' preparé', 'Plats/Potages et soupes', '1', 'par 100 g de portion comestible', 21
);

/* INSERT QUERY NO: 121 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
668, 'Bouillon de viande', ' preparé', 'Plats/Potages et soupes', '1', 'par 100 g de portion comestible', 20
);

/* INSERT QUERY NO: 122 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
791, 'Boule de Bâle', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', '1010', 244
);

/* INSERT QUERY NO: 123 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
851, 'Boule de Berlin', 'Sucreries/Autres articles de pâtisserie', '', 'par 100 g de portion comestible', '1410', 336
);

/* INSERT QUERY NO: 124 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
705, 'Bresaola', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '704', 167
);

/* INSERT QUERY NO: 125 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
947, 'Bretzel', ' sticks salés', ' secs', 'Snacks salés/Sticks salés et bretzels', '', 0
);

/* INSERT QUERY NO: 126 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
616, 'Brie', ' à la crème', 'Lait et produits laitiers/Fromage à pâte molle', '', 'par 100 g de portion comestible', 1420
);

/* INSERT QUERY NO: 127 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
613, 'Brie', ' gras', 'Lait et produits laitiers/Fromage à pâte molle', '', 'par 100 g de portion comestible', 1240
);

/* INSERT QUERY NO: 128 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
416, 'Brochet', ' cru', 'Poisson/Poissons d''eau douce', '', 'par 100 g de portion comestible', 344
);

/* INSERT QUERY NO: 129 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1005, 'Brocoli', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 119
);

/* INSERT QUERY NO: 130 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
351, 'Brocoli', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 131
);

/* INSERT QUERY NO: 131 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
864, 'Brun de Bâle', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', '2150', 515
);

/* INSERT QUERY NO: 132 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13461, 'Burger au poisson', 'Plats/Fast Food', '', 'par 100 g de portion comestible', '1100', 262
);

/* INSERT QUERY NO: 133 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13460, 'Burger au poulet', 'Plats/Fast Food', '', 'par 100 g de portion comestible', '1040', 247
);

/* INSERT QUERY NO: 134 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
843, 'Bürli de St. Gall (farine mi-blanche)', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 979
);

/* INSERT QUERY NO: 135 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
285, 'Cabillaud', ' cru', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 323
);

/* INSERT QUERY NO: 136 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13350, 'Cabillaud', ' filet', ' à la vapeur (sans adjonction de graisse ni de sel)', 'Poisson/Poissons de mer', '', 0
);

/* INSERT QUERY NO: 137 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
282, 'Cacahuète', 'Noix', ' graines et produits oléagineux', '', 'par 100 g de portion comestible', 2580
);

/* INSERT QUERY NO: 138 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14092, 'Cacahuète', ' grillée', ' salée', 'Snacks salés/Noix et graines salées', '', 0
);

/* INSERT QUERY NO: 139 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
581, 'Cacao en poudre', 'Sucreries/Chocolat et produits chocolatés;Boissons sans alcool/Boissons chocolatées', '', 'par 100 g de portion comestible', '1740', 419
);

/* INSERT QUERY NO: 140 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1186, 'Café au lait (clair)', ' non sucré', 'Lait et produits laitiers/Boissons lactées et yogourts à boire;Boissons sans alcool/Café', '1', 'par 100 ml', 90
);

/* INSERT QUERY NO: 141 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1185, 'Café au lait (foncé)', ' non sucré', 'Lait et produits laitiers/Boissons lactées et yogourts à boire;Boissons sans alcool/Café', '1', 'par 100 ml', 65
);

/* INSERT QUERY NO: 142 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1187, 'Café au lait', ' non sucré', 'Lait et produits laitiers/Boissons lactées et yogourts à boire;Boissons sans alcool/Café', '1', 'par 100 ml', 81
);

/* INSERT QUERY NO: 143 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1188, 'Café crème', ' non sucré', 'Boissons sans alcool/Café', '1', 'par 100 ml', 55
);

/* INSERT QUERY NO: 144 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
983, 'Café soluble', ' poudre', 'Boissons sans alcool/Café', '', 'par 100 g de portion comestible', 1070
);

/* INSERT QUERY NO: 145 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
994, 'Café', ' noir', ' non sucré', 'Boissons sans alcool/Café', '1', 0
);

/* INSERT QUERY NO: 146 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
877, 'Cake financier', 'Sucreries/Gâteaux', ' tourtes et cakes', '', 'par 100 g de portion comestible', 1840
);

/* INSERT QUERY NO: 147 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
898, 'Cake marbré', 'Sucreries/Gâteaux', ' tourtes et cakes', '', 'par 100 g de portion comestible', 1490
);

/* INSERT QUERY NO: 148 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
887, 'Cake tyrolien', 'Sucreries/Gâteaux', ' tourtes et cakes', '', 'par 100 g de portion comestible', 1720
);

/* INSERT QUERY NO: 149 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
764, 'Calamar', ' cru', 'Poisson/Fruits de mer et crustacés', '', 'par 100 g de portion comestible', 352
);

/* INSERT QUERY NO: 150 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10486, 'Calimocho (Vin rouge avec cola)', 'Boissons alcoolisées/Autres boissons alcoolisées;Boissons sans alcool/Boissons sucrées', '1', 'par 100 ml', '228', 55
);

/* INSERT QUERY NO: 151 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
619, 'Camembert', ' à la crème', 'Lait et produits laitiers/Fromage à pâte molle', '', 'par 100 g de portion comestible', 1470
);

/* INSERT QUERY NO: 152 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
614, 'Camembert', ' gras', 'Lait et produits laitiers/Fromage à pâte molle', '', 'par 100 g de portion comestible', 1230
);

/* INSERT QUERY NO: 153 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
622, 'Camembert', ' mi-gras', 'Lait et produits laitiers/Fromage à pâte molle', '', 'par 100 g de portion comestible', 785
);

/* INSERT QUERY NO: 154 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
911, 'Cannelle', 'Divers/Sel', ' épices et arômes', '', 'par 100 g de portion comestible', 1330
);

/* INSERT QUERY NO: 155 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1644, 'Cannellonis à la viande', ' préparés', 'Plats/Plats italiens', '', 'par 100 g de portion comestible', 740
);

/* INSERT QUERY NO: 156 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1646, 'Cannellonis aux épinards et à la ricotta', ' préparés', 'Plats/Plats italiens', '', 'par 100 g de portion comestible', 918
);

/* INSERT QUERY NO: 157 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1121, 'Cappuccino (sans poudre de chocolat)', ' non sucré', 'Lait et produits laitiers/Boissons lactées et yogourts à boire;Boissons sans alcool/Café', '0.88', 'par 100 ml', 155
);

/* INSERT QUERY NO: 158 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1692, 'Capuns', ' préparés', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 686
);

/* INSERT QUERY NO: 159 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
954, 'Caramel mou', 'Sucreries/Bonbons', ' bonbons gélifiés aux fruits et chewing-gums', '', 'par 100 g de portion comestible', 1880
);

/* INSERT QUERY NO: 160 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
953, 'Caramel mou à la crème', 'Sucreries/Bonbons', ' bonbons gélifiés aux fruits et chewing-gums', '', 'par 100 g de portion comestible', 1490
);

/* INSERT QUERY NO: 161 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1002, 'Carotte', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 166
);

/* INSERT QUERY NO: 162 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
355, 'Carotte', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 158
);

/* INSERT QUERY NO: 163 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
701, 'Carré (filet) de porc fumé', ' cru', 'Produits carnés et charcuterie/Produits de charcuterie cuits', '', 'par 100 g de portion comestible', 648
);

/* INSERT QUERY NO: 164 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
415, 'Carrelet', ' cru', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 361
);

/* INSERT QUERY NO: 165 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
392, 'Cassis', ' cru', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 242
);

/* INSERT QUERY NO: 166 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1013, 'Céleri-rave', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 119
);

/* INSERT QUERY NO: 167 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
357, 'Céleri-rave', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 118
);

/* INSERT QUERY NO: 168 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1026, 'Céleri branche', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 61
);

/* INSERT QUERY NO: 169 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
366, 'Céleri branche', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 61
);

/* INSERT QUERY NO: 170 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
487, 'Cerf (moyenne)', ' cru', 'Viande et abats/Gibier', '', 'par 100 g de portion comestible', 474
);

/* INSERT QUERY NO: 171 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
12, 'Cerf', ' entrecôte', ' crue', 'Viande et abats/Gibier', '', 0
);

/* INSERT QUERY NO: 172 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
394, 'Cerise', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 314
);

/* INSERT QUERY NO: 173 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1052, 'Cerise', ' cuite', '  égouttée (sans adjonction de sucre)', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 174 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1081, 'Cervelas', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', '1030', 249
);

/* INSERT QUERY NO: 175 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1037, 'Champignon de Paris', ' à l''étuvée (sans adjonction de graisse ni de sel)', 'Légumes/Champignons', '', 'par 100 g de portion comestible', 122
);

/* INSERT QUERY NO: 176 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
375, 'Champignon de Paris', ' cru', 'Légumes/Champignons', '', 'par 100 g de portion comestible', 107
);

/* INSERT QUERY NO: 177 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1129, 'Champignons (moyenne)', ' à l''étuvée (sans adjonction de graisse ni de sel)', 'Légumes/Champignons', '', 'par 100 g de portion comestible', 142
);

/* INSERT QUERY NO: 178 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1128, 'Champignons (moyenne)', ' crus', 'Légumes/Champignons', '', 'par 100 g de portion comestible', 122
);

/* INSERT QUERY NO: 179 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
629, 'Champignons de Paris', ' conserve', 'Légumes/Champignons', '', 'par 100 g de portion comestible', 77
);

/* INSERT QUERY NO: 180 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1038, 'Chanterelle', ' à l''étuvée (sans adjonction de graisse ni de sel)', 'Légumes/Champignons', '', 'par 100 g de portion comestible', 115
);

/* INSERT QUERY NO: 181 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
376, 'Chanterelle', ' crue', 'Légumes/Champignons', '', 'par 100 g de portion comestible', 98
);

/* INSERT QUERY NO: 182 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
750, 'Chapelure', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', '', 'par 100 g de portion comestible', 1580
);

/* INSERT QUERY NO: 183 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1092, 'Charcuterie  de volaille', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', '852', 205
);

/* INSERT QUERY NO: 184 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10353, 'Charcuterie (moyenne)', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', '1140', 276
);

/* INSERT QUERY NO: 185 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
272, 'Châtaigne', ' crue', 'Noix', ' graines et produits oléagineux', '', 0
);

/* INSERT QUERY NO: 186 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
862, 'Chausson aux poires', 'Sucreries/Autres articles de pâtisserie', '', 'par 100 g de portion comestible', '1520', 361
);

/* INSERT QUERY NO: 187 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14024, 'Cheeseburger', 'Plats/Fast Food', '', 'par 100 g de portion comestible', '1180', 281
);

/* INSERT QUERY NO: 188 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
685, 'Cheval', ' filet', ' cru', 'Viande et abats/Autres espèces animales', '', 0
);

/* INSERT QUERY NO: 189 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13328, 'Cheval', ' filet', ' grillé à point (sans adjonction de graisse ni de sel)', 'Viande et abats/Autres espèces animales', '', 0
);

/* INSERT QUERY NO: 190 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
687, 'Chèvre (moyenne)', ' crue', 'Viande et abats/Autres espèces animales', '', 'par 100 g de portion comestible', 623
);

/* INSERT QUERY NO: 191 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
488, 'Chevreuil (moyenne)', ' cru', 'Viande et abats/Gibier', '', 'par 100 g de portion comestible', 512
);

/* INSERT QUERY NO: 192 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
29, 'Chevreuil', ' escalope', ' crue', 'Viande et abats/Gibier', '', 0
);

/* INSERT QUERY NO: 193 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
28, 'Chevreuil', ' ragoût (civet)', ' cru', 'Viande et abats/Gibier', '', 0
);

/* INSERT QUERY NO: 194 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
467, 'Chicorée frisée/scarole', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 68
);

/* INSERT QUERY NO: 195 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
465, 'Chicorée pain de sucre', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 67
);

/* INSERT QUERY NO: 196 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
458, 'Chicorée rouge', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 79
);

/* INSERT QUERY NO: 197 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1648, 'Chili con carne', ' préparé', 'Plats/Potages et soupes', '', 'par 100 g de portion comestible', 482
);

/* INSERT QUERY NO: 198 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
932, 'Chips de maïs', 'Snacks salés/Chips', '', 'par 100 g de portion comestible', '2130', 509
);

/* INSERT QUERY NO: 199 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
195, 'Chocolat au lait', 'Sucreries/Chocolat et produits chocolatés', '', 'par 100 g de portion comestible', '2240', 537
);

/* INSERT QUERY NO: 200 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
641, 'Chocolat au lait avec raisins secs', ' noisettes et amandes', 'Sucreries/Chocolat et produits chocolatés', '', 'par 100 g de portion comestible', 2140
);

/* INSERT QUERY NO: 201 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
654, 'Chocolat au lait fourré à l‘alcool', 'Sucreries/Chocolat et produits chocolatés', '', 'par 100 g de portion comestible', '2040', 488
);

/* INSERT QUERY NO: 202 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
655, 'Chocolat au lait fourré à la crème (Gianduja', ' Nougat)', 'Sucreries/Chocolat et produits chocolatés', '', 'par 100 g de portion comestible', 2390
);

/* INSERT QUERY NO: 203 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
612, 'Chocolat au lait', ' avec noisettes', 'Sucreries/Chocolat et produits chocolatés', '', 'par 100 g de portion comestible', 2370
);

/* INSERT QUERY NO: 204 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
643, 'Chocolat au lait', ' avec nougat aux amandes et au miel', 'Sucreries/Chocolat et produits chocolatés', '', 'par 100 g de portion comestible', 2240
);

/* INSERT QUERY NO: 205 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
642, 'Chocolat au lait', ' fourré à la crème de noisettes ', 'Sucreries/Chocolat et produits chocolatés', '', 'par 100 g de portion comestible', 2330
);

/* INSERT QUERY NO: 206 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
197, 'Chocolat blanc', 'Sucreries/Chocolat et produits chocolatés', '', 'par 100 g de portion comestible', '2370', 567
);

/* INSERT QUERY NO: 207 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
960, 'Chocolat en poudre', 'Sucreries/Chocolat et produits chocolatés;Boissons sans alcool/Boissons chocolatées', '', 'par 100 g de portion comestible', '1680', 398
);

/* INSERT QUERY NO: 208 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
196, 'Chocolat noir', 'Sucreries/Chocolat et produits chocolatés', '', 'par 100 g de portion comestible', '2240', 537
);

/* INSERT QUERY NO: 209 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1004, 'Chou-fleur', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 110
);

/* INSERT QUERY NO: 210 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
350, 'Chou-fleur', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 110
);

/* INSERT QUERY NO: 211 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1014, 'Chou-pomme', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 119
);

/* INSERT QUERY NO: 212 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
449, 'Chou-pomme', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 113
);

/* INSERT QUERY NO: 213 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1029, 'Chou blanc', ' à l''étuvée (sans adjonction de graisse ni de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 125
);

/* INSERT QUERY NO: 214 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1028, 'Chou blanc', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 119
);

/* INSERT QUERY NO: 215 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
453, 'Chou blanc', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 125
);

/* INSERT QUERY NO: 216 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1021, 'Chou de Bruxelles', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 164
);

/* INSERT QUERY NO: 217 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
363, 'Chou de Bruxelles', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 180
);

/* INSERT QUERY NO: 218 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1007, 'Chou de Chine', ' à l''étuvée (sans adjonction de graisse ni de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 64
);

/* INSERT QUERY NO: 219 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
437, 'Chou de Chine', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 66
);

/* INSERT QUERY NO: 220 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
454, 'Chou frisé (pommé)', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 129
);

/* INSERT QUERY NO: 221 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1030, 'Chou frisé', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 124
);

/* INSERT QUERY NO: 222 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13401, 'Chou plume', ' à l''étuvée (sans adjonction de sel ni de graisse)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 195
);

/* INSERT QUERY NO: 223 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13400, 'Chou plume', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 183
);

/* INSERT QUERY NO: 224 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1022, 'Chou rouge', ' à l''étuvée (sans adjonction de graisse ni de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 109
);

/* INSERT QUERY NO: 225 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
364, 'Chou rouge', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 127
);

/* INSERT QUERY NO: 226 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
647, 'Choucroute', ' marinée au vinaigre', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 80
);

/* INSERT QUERY NO: 227 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
374, 'Ciboulette', ' crue', 'Légumes/Herbes aromatiques', '', 'par 100 g de portion comestible', 124
);

/* INSERT QUERY NO: 228 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
512, 'Cidre de pomme', ' 4 vol%', 'Boissons alcoolisées/Vin', '1', 'par 100 ml', 132
);

/* INSERT QUERY NO: 229 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
513, 'Cidre de pomme', ' 6.2 vol%', 'Boissons alcoolisées/Vin', '1', 'par 100 ml', 269
);

/* INSERT QUERY NO: 230 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
398, 'Citron', ' cru', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 96
);

/* INSERT QUERY NO: 231 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1498, 'Cocktail de crevettes', ' préparé', 'Plats/Salades', '', 'par 100 g de portion comestible', 695
);

/* INSERT QUERY NO: 232 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
874, 'Coeurs de France', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', '1830', 438
);

/* INSERT QUERY NO: 233 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
476, 'Coing', ' cru', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 171
);

/* INSERT QUERY NO: 234 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1055, 'Coing', ' cuit', ' égoutté (sans adjonction de sucre)', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 235 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
628, 'Compote de pommes', ' non sucrée', ' conserve', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 236 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
627, 'Compote de pommes', ' sucrée', ' conserve', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 237 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13477, 'Compote de rhubarbe', ' sucrée', 'Fruits/Fruits cuits (conserves comprises)', '', 'par 100 g de portion comestible', 341
);

/* INSERT QUERY NO: 238 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
636, 'Concentré de tomates', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', '326', 77
);

/* INSERT QUERY NO: 239 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
354, 'Concombre', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 57
);

/* INSERT QUERY NO: 240 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
696, 'Confiture', 'Sucreries/Confitures et produits à tartiner sucrés', '1.4', 'par 100 g de portion comestible', '1040', 246
);

/* INSERT QUERY NO: 241 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
697, 'Confiture', ' avec valeur énergétique réduite', ' édulcorée', 'Sucreries/Confitures et produits à tartiner sucrés', '1.4', 0
);

/* INSERT QUERY NO: 242 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
715, 'Coppa', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '1330', 319
);

/* INSERT QUERY NO: 243 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
917, 'Coquin (sablés à la confiture)', 'Sucreries/Autres articles de pâtisserie', '', 'par 100 g de portion comestible', '2090', 499
);

/* INSERT QUERY NO: 244 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1650, 'Cordon bleu de porc', ' sauté', 'Viande et abats/Porc', '', 'par 100 g de portion comestible', 1010
);

/* INSERT QUERY NO: 245 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1649, 'Cordon bleu de veau', ' sauté', 'Viande et abats/Veau', '', 'par 100 g de portion comestible', 979
);

/* INSERT QUERY NO: 246 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
211, 'Corégone / Lavaret', ' cru', 'Poisson/Poissons d''eau douce', '', 'par 100 g de portion comestible', 425
);

/* INSERT QUERY NO: 247 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
940, 'Cornflakes', 'Pains', ' flocons et céréales pour le petit-déjeuner/Mélanges de müesli et céréales pour petit-déjeuner', '', 'par 100 g de portion comestible', 1540
);

/* INSERT QUERY NO: 248 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
491, 'Cornichon au vinaigre', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', '59', 14
);

/* INSERT QUERY NO: 249 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
758, 'Cotechino', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '1860', 450
);

/* INSERT QUERY NO: 250 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1107, 'Côtelette (moyenne de veau', ' porc', ' agneau)', ' crue', 'Viande et abats/Veau;Viande et abats/Porc;Viande et abats/Agneau', 0
);

/* INSERT QUERY NO: 251 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13322, 'Côtelette (moyenne de veau', ' porc', ' agneau)', ' grillée (sans adjonction de graisse ni de sel)', 'Viande et abats', 0
);

/* INSERT QUERY NO: 252 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
505, 'Cottage cheese (fromage frais granulé)', ' nature', 'Lait et produits laitiers/Fromage frais et séré', '', 'par 100 g de portion comestible', 418
);

/* INSERT QUERY NO: 253 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1093, 'Cotto (produit à base de viande)', 'Produits carnés et charcuterie/Produits de charcuterie cuits', '', 'par 100 g de portion comestible', '392', 93
);

/* INSERT QUERY NO: 254 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1020, 'Courge', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 102
);

/* INSERT QUERY NO: 255 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
480, 'Courge', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 98
);

/* INSERT QUERY NO: 256 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1031, 'Courgette', ' à l''étuvée (sans sel ni graisse)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 98
);

/* INSERT QUERY NO: 257 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1654, 'Courgette', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 86
);

/* INSERT QUERY NO: 258 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
367, 'Courgette', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 80
);

/* INSERT QUERY NO: 259 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
950, 'Crackers', ' biscuits salés', 'Snacks salés/Sticks salés et bretzels', '', 'par 100 g de portion comestible', 1890
);

/* INSERT QUERY NO: 260 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1195, 'Crème (en moyenne)', 'Lait et produits laitiers/Crème et beurre;Graisses et huiles/Crème', '', 'par 100 g de portion comestible', '1040', 252
);

/* INSERT QUERY NO: 261 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
69, 'Crème à café UHT', 'Lait et produits laitiers/Crème et beurre;Graisses et huiles/Crème', '1', 'par 100 g de portion comestible', '664', 161
);

/* INSERT QUERY NO: 262 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13413, 'Crème à la vanille', ' faite maison', ' cuite', 'Sucreries/Crèmes et pouding', '', 0
);

/* INSERT QUERY NO: 263 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
574, 'Crème acidulée', 'Lait et produits laitiers/Crème et beurre;Graisses et huiles/Crème', '1', 'par 100 g de portion comestible', '1380', 336
);

/* INSERT QUERY NO: 264 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
807, 'Crème au chocolat', 'Sucreries/Crèmes et pouding', '', 'par 100 g de portion comestible', '515', 122
);

/* INSERT QUERY NO: 265 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10532, 'Crème d''anchois', 'Divers/Pâtes à tartiner', '', 'par 100 g de portion comestible', '1130', 272
);

/* INSERT QUERY NO: 266 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
65, 'Crème entière', ' pasteurisée', 'Lait et produits laitiers/Crème et beurre;Graisses et huiles/Crème', '1', 'par 100 g de portion comestible', 1370
);

/* INSERT QUERY NO: 267 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
66, 'Crème entière', ' UHT', 'Lait et produits laitiers/Crème et beurre;Graisses et huiles/Crème', '1', 'par 100 g de portion comestible', 1380
);

/* INSERT QUERY NO: 268 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
694, 'Crème glacée', ' aux fruits', 'Sucreries/Glaces à base de lait', '0.6', 'par 100 g de portion comestible', 775
);

/* INSERT QUERY NO: 269 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1523, 'Crêpe au fromage', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 814
);

/* INSERT QUERY NO: 270 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1526, 'Crêpe au jambon', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 653
);

/* INSERT QUERY NO: 271 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1527, 'Crêpe au lard', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 787
);

/* INSERT QUERY NO: 272 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1695, 'Crêpe au Nutella', ' préparée', 'Plats/Autres plats sucrés', '', 'par 100 g de portion comestible', 1080
);

/* INSERT QUERY NO: 273 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1694, 'Crêpe au sucre et cannelle', ' préparée', 'Plats/Autres plats sucrés', '', 'par 100 g de portion comestible', 744
);

/* INSERT QUERY NO: 274 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1524, 'Crêpe aux champignons', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 522
);

/* INSERT QUERY NO: 275 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1525, 'Crêpe aux légumes', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 572
);

/* INSERT QUERY NO: 276 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1494, 'Crêpe fine à la Nutella', ' préparée', 'Plats/Autres plats sucrés', '', 'par 100 g de portion comestible', 1570
);

/* INSERT QUERY NO: 277 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1489, 'Crêpe fine au camembert', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 1030
);

/* INSERT QUERY NO: 278 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1495, 'Crêpe fine au jambon', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 807
);

/* INSERT QUERY NO: 279 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1496, 'Crêpe fine au lard', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 1050
);

/* INSERT QUERY NO: 280 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1488, 'Crêpe fine au sucre et cannelle', ' préparée', 'Plats/Autres plats sucrés', '', 'par 100 g de portion comestible', 1070
);

/* INSERT QUERY NO: 281 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1491, 'Crêpe fine aux champignons', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 578
);

/* INSERT QUERY NO: 282 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1493, 'Crêpe fine aux légumes', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 689
);

/* INSERT QUERY NO: 283 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1487, 'Crêpe fine nature', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 977
);

/* INSERT QUERY NO: 284 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1522, 'Crêpe nature', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 692
);

/* INSERT QUERY NO: 285 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
371, 'Cresson', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 71
);

/* INSERT QUERY NO: 286 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
766, 'Crevette', ' crue', 'Poisson/Fruits de mer et crustacés', '', 'par 100 g de portion comestible', 236
);

/* INSERT QUERY NO: 287 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1497, 'Crevette', ' cuite', 'Poisson/Fruits de mer et crustacés', '', 'par 100 g de portion comestible', 195
);

/* INSERT QUERY NO: 288 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10406, 'Croissant (moyenne)', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1670
);

/* INSERT QUERY NO: 289 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
836, 'Croissant au beurre', ' à la farine blanche', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 0
);

/* INSERT QUERY NO: 290 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
834, 'Croissant au beurre', ' complet', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 0
);

/* INSERT QUERY NO: 291 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13446, 'Croissant au jambon', 'Snacks salés/Produits en pâte feuilletée;Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', '1390', 332
);

/* INSERT QUERY NO: 292 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
914, 'Croissant aux noisette', ' pâte levée', 'Sucreries/Autres articles de pâtisserie', '', 'par 100 g de portion comestible', 1330
);

/* INSERT QUERY NO: 293 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
913, 'Croissant aux noisettes', ' pâte feuilletée', 'Sucreries/Autres articles de pâtisserie', '', 'par 100 g de portion comestible', 1750
);

/* INSERT QUERY NO: 294 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
835, 'Croissant de Sils (avec sel iodé)', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1770
);

/* INSERT QUERY NO: 295 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14056, 'Croque Monsieur', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '1230', 294
);

/* INSERT QUERY NO: 296 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1601, 'Croûte au fromage', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 1140
);

/* INSERT QUERY NO: 297 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1099, 'Crustacés (moyenne)', ' crus', 'Poisson/Fruits de mer et crustacés', '', 'par 100 g de portion comestible', 316
);

/* INSERT QUERY NO: 298 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
384, 'Datte', ' sèche', 'Fruits/Fruits secs', '', 'par 100 g de portion comestible', 1290
);

/* INSERT QUERY NO: 299 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
67, 'Demi-crème', ' pasteurisée', 'Lait et produits laitiers/Crème et beurre;Graisses et huiles/Crème', '1', 'par 100 g de portion comestible', 1130
);

/* INSERT QUERY NO: 300 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
68, 'Demi-crème', ' UHT', 'Lait et produits laitiers/Crème et beurre;Graisses et huiles/Crème', '1', 'par 100 g de portion comestible', 1030
);

/* INSERT QUERY NO: 301 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
575, 'Demie-crème acidulé', 'Lait et produits laitiers/Crème et beurre;Graisses et huiles/Crème', '1', 'par 100 g de portion comestible', '715', 173
);

/* INSERT QUERY NO: 302 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
713, 'Dinde', ' poitrine', ' escalope ou émincé', ' cru', 'Viande et abats/Volaille', 0
);

/* INSERT QUERY NO: 303 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13275, 'Dinde', ' poitrine', ' escalope ou émincé', ' grillé (sans adjonction de graisse ni de sel)', 'Viande et abats/Volaille', 0
);

/* INSERT QUERY NO: 304 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
798, 'Double crème', ' pasteurisée', 'Lait et produits laitiers/Crème et beurre;Graisses et huiles/Crème', '0.9', 'par 100 g de portion comestible', 1930
);

/* INSERT QUERY NO: 305 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10535, 'Dulce de Leche', 'Sucreries/Confitures et produits à tartiner sucrés', '', 'par 100 g de portion comestible', '1260', 299
);

/* INSERT QUERY NO: 306 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
520, 'Eau-de-vie de canne à sucre (p.ex. Rhum)', 'Boissons alcoolisées/Spiritueux', '0.95', 'par 100 ml', '920', 222
);

/* INSERT QUERY NO: 307 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
518, 'Eau-de-vie de céréales', ' 40% vol (p.ex. Whisky)', 'Boissons alcoolisées/Spiritueux', '0.95', 'par 100 ml', 972
);

/* INSERT QUERY NO: 308 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
644, 'Eau-de-vie de cerises (Kirsch)', 'Boissons alcoolisées/Spiritueux', '0.95', 'par 100 ml', '964', 233
);

/* INSERT QUERY NO: 309 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
519, 'Eau-de-vie de vin (p. ex. Cognac', ' brandy)', 'Boissons alcoolisées/Spiritueux', '0.95', 'par 100 ml', 944
);

/* INSERT QUERY NO: 310 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
47, 'Eau potable (en moyenne en Suisse)', 'Boissons sans alcool/Eau potable', '1', 'par 100 ml', '0', 0
);

/* INSERT QUERY NO: 311 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
646, 'Eaux-de-vie', ' 40 % vol (p.ex. Vodka', ' Gin)', 'Boissons alcoolisées/Spiritueux', '0.95', 0
);

/* INSERT QUERY NO: 312 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
856, 'Écorce de citron confite', ' citronat', 'Sucreries/Autres sucreries', '', 'par 100 g de portion comestible', 1230
);

/* INSERT QUERY NO: 313 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13318, 'Emincé (moyenne de veau', ' boeuf', ' porc', ' volaille)', ' grillé (sans adjonction de graisse ni de sel)', 0
);

/* INSERT QUERY NO: 314 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
555, 'Emmentaler', ' gras', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', 1690
);

/* INSERT QUERY NO: 315 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1006, 'Endive', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 55
);

/* INSERT QUERY NO: 316 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
447, 'Endive', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 56
);

/* INSERT QUERY NO: 317 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13465, 'Energy drink', ' avec sucre', 'Boissons sans alcool/Boissons sucrées', '1', 'par 100 ml', 185
);

/* INSERT QUERY NO: 318 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1025, 'Épinard', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 119
);

/* INSERT QUERY NO: 319 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
365, 'Épinard', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 95
);

/* INSERT QUERY NO: 320 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1101, 'Escalope (moyenne de veau', ' boeuf', ' porc', ' poulet)', ' crue', 0
);

/* INSERT QUERY NO: 321 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13319, 'Escalope (moyenne de volaille', ' veau', ' boeuf', ' porc)', ' grillée (sans adjonction de graisse ni de sel)', 0
);

/* INSERT QUERY NO: 322 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14052, 'Escalope (moyenne de volaille', ' veau', ' boeuf', ' porc)', ' panée', 0
);

/* INSERT QUERY NO: 323 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1681, 'Escalope de veau', ' grillée à l''huile de colza HOLL', 'Viande et abats/Veau', '', 'par 100 g de portion comestible', 775
);

/* INSERT QUERY NO: 324 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
915, 'Escargot aux noisettes', ' pâte levée', 'Sucreries/Autres articles de pâtisserie', '', 'par 100 g de portion comestible', 1860
);

/* INSERT QUERY NO: 325 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
876, 'Etoiles à la cannelle', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', '2110', 505
);

/* INSERT QUERY NO: 326 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1190, 'Expresso crème', ' non sucré', 'Boissons sans alcool/Café', '', 'par 100 g de portion comestible', 116
);

/* INSERT QUERY NO: 327 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14066, 'Falafel', ' frit (à l''huile de colza HOLL)', 'Plats/Plats orientaux', '', 'par 100 g de portion comestible', 931
);

/* INSERT QUERY NO: 328 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1135, 'Farine (moyenne)', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', '', 'par 100 g de portion comestible', 1450
);

/* INSERT QUERY NO: 329 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1399, 'Farine à spätzli', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', '', 'par 100 g de portion comestible', 1490
);

/* INSERT QUERY NO: 330 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1136, 'Farine claire (moyenne)', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', '', 'par 100 g de portion comestible', 1460
);

/* INSERT QUERY NO: 331 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1041, 'Farine d''épeautre bise', ' type 1100', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', '', 0
);

/* INSERT QUERY NO: 332 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1043, 'Farine d''épeautre blanche', ' type 550', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', '', 0
);

/* INSERT QUERY NO: 333 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1042, 'Farine d''épeautre', ' complète', ' type 1900', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', 0
);

/* INSERT QUERY NO: 334 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
203, 'Farine de blé (farine bise)', ' type 1100', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', '', 0
);

/* INSERT QUERY NO: 335 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
204, 'Farine de blé (farine blanche)', ' type 550', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', '', 0
);

/* INSERT QUERY NO: 336 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
205, 'Farine de blé (farine fleur)', ' type 400', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', '', 0
);

/* INSERT QUERY NO: 337 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
207, 'Farine de blé (farine mi-blanche)', ' type 720', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', '', 0
);

/* INSERT QUERY NO: 338 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
206, 'Farine de blé', ' complète', ' type 1700', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', 0
);

/* INSERT QUERY NO: 339 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
420, 'Farine de sarrasin', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', '', 'par 100 g de portion comestible', 1470
);

/* INSERT QUERY NO: 340 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
749, 'Farine de seigle', ' complète', ' type 1800', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', 0
);

/* INSERT QUERY NO: 341 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
752, 'Farine de seigle', ' type 1050', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', '', 0
);

/* INSERT QUERY NO: 342 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
748, 'Farine de seigle', ' type 815', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', '', 0
);

/* INSERT QUERY NO: 343 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
996, 'Farine de soja', ' dégraissée', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', '', 0
);

/* INSERT QUERY NO: 344 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
995, 'Farine de soja', ' entière', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon', '', 0
);

/* INSERT QUERY NO: 345 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
426, 'Fécule de maïs', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon;Divers/Gélifiants et liants', '', 'par 100 g de portion comestible', 1510
);

/* INSERT QUERY NO: 346 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
497, 'Fécule de pommes de terre', 'Produits céréaliers', ' légumineuses et pommes de terre/Farines et amidon;Divers/Gélifiants et liants', '', 'par 100 g de portion comestible', 1430
);

/* INSERT QUERY NO: 347 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1008, 'Fenouil', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 90
);

/* INSERT QUERY NO: 348 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
352, 'Fenouil', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 95
);

/* INSERT QUERY NO: 349 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
549, 'Feta (lait de brebis et chèvre)', 'Lait et produits laitiers/Fromage frais et séré;Lait et produits laitiers/Fromage à pâte molle', '', 'par 100 g de portion comestible', '1010', 242
);

/* INSERT QUERY NO: 350 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
539, 'Feta (lait de vache)', 'Lait et produits laitiers/Fromage frais et séré;Lait et produits laitiers/Fromage à pâte molle', '', 'par 100 g de portion comestible', '1060', 256
);

/* INSERT QUERY NO: 351 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1061, 'Fève de soja', ' cuite (sans adjonction de graisse ni de sel)', 'Produits céréaliers', ' légumineuses et pommes de terre/Légumineuses', '', 0
);

/* INSERT QUERY NO: 352 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
442, 'Fève de soja', ' sèche', 'Produits céréaliers', ' légumineuses et pommes de terre/Légumineuses', '', 0
);

/* INSERT QUERY NO: 353 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
386, 'Figue', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 314
);

/* INSERT QUERY NO: 354 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
387, 'Figue', ' sèche', 'Fruits/Fruits secs', '', 'par 100 g de portion comestible', 1150
);

/* INSERT QUERY NO: 355 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
809, 'Flan à la vanille', 'Sucreries/Crèmes et pouding', '', 'par 100 g de portion comestible', '429', 102
);

/* INSERT QUERY NO: 356 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
806, 'Flan au caramel', 'Sucreries/Crèmes et pouding', '', 'par 100 g de portion comestible', '527', 125
);

/* INSERT QUERY NO: 357 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
810, 'Flan au chocolat', 'Sucreries/Crèmes et pouding', '', 'par 100 g de portion comestible', '511', 121
);

/* INSERT QUERY NO: 358 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
481, 'Flet', ' cru', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 306
);

/* INSERT QUERY NO: 359 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13351, 'Flet', ' filet', ' à la vapeur (sans adjonction de graisse ni de sel)', 'Poisson/Poissons de mer', '', 0
);

/* INSERT QUERY NO: 360 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
753, 'Flétan', ' cru', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 495
);

/* INSERT QUERY NO: 361 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
681, 'Flips aux cacahuètes', 'Snacks salés/Chips', '', 'par 100 g de portion comestible', '2120', 507
);

/* INSERT QUERY NO: 362 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1696, 'Flocons de céréales (moyenne)', 'Pains', ' flocons et céréales pour le petit-déjeuner/Flocons', ' son et germes', '', 0
);

/* INSERT QUERY NO: 363 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
860, 'Flocons de pomme de terre', ' avec poudre de lait et sel (purée instantanée)', 'Produits céréaliers', ' légumineuses et pommes de terre/Pommes de terre', '', 0
);

/* INSERT QUERY NO: 364 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
928, 'Flûte feuilletée', 'Snacks salés/Produits en pâte feuilletée', '', 'par 100 g de portion comestible', '2060', 496
);

/* INSERT QUERY NO: 365 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13320, 'Foie (moyenne de boeuf', ' veau', ' porc)', ' grillé (sans adjonction de graisse ni de sel)', 'Viande et abats', 0
);

/* INSERT QUERY NO: 366 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10377, 'Foie (moyenne de veau', ' boeuf', ' porc', ' veau)', ' cru', 0
);

/* INSERT QUERY NO: 367 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
797, 'Fondue classique', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 1310
);

/* INSERT QUERY NO: 368 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1475, 'Fondue moitié-moitié', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 1210
);

/* INSERT QUERY NO: 369 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1476, 'Fondue sans alcool', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 1180
);

/* INSERT QUERY NO: 370 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
385, 'Fraise', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 167
);

/* INSERT QUERY NO: 371 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
390, 'Framboise', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 215
);

/* INSERT QUERY NO: 372 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
818, 'Frites au four', ' surgelées', 'Produits céréaliers', ' légumineuses et pommes de terre/Pommes de terre', '', 0
);

/* INSERT QUERY NO: 373 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1193, 'Fromage à pâte dure et mi-dure', ' gras (moyenne)', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', 1650
);

/* INSERT QUERY NO: 374 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1197, 'Fromage à pâte molle (moyenne sans produits allégés en matière grasse)', 'Lait et produits laitiers/Fromage à pâte molle', '', 'par 100 g de portion comestible', '1350', 325
);

/* INSERT QUERY NO: 375 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
631, 'Fromage à pâte molle', ' double crème', 'Lait et produits laitiers/Fromage à pâte molle', '', 'par 100 g de portion comestible', 1550
);

/* INSERT QUERY NO: 376 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
532, 'Fromage à raclette', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', '1480', 357
);

/* INSERT QUERY NO: 377 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13392, 'Fromage affiné à pâte molle', ' à la crème', 'Lait et produits laitiers/Fromage à pâte molle', '', 'par 100 g de portion comestible', 1440
);

/* INSERT QUERY NO: 378 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13391, 'Fromage affiné à pâte molle', ' gras', 'Lait et produits laitiers/Fromage à pâte molle', '', 'par 100 g de portion comestible', 1230
);

/* INSERT QUERY NO: 379 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
507, 'Fromage aux herbes glaronnais ', 'Lait et produits laitiers/Fromage frais et séré', '', 'par 100 g de portion comestible', '559', 132
);

/* INSERT QUERY NO: 380 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1191, 'Fromage bleu (moyenne)', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', '1490', 360
);

/* INSERT QUERY NO: 381 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1084, 'Fromage d''Italie', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', '1060', 256
);

/* INSERT QUERY NO: 382 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1211, 'Fromage des alpes bernoises', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', '1880', 453
);

/* INSERT QUERY NO: 383 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
565, 'Fromage fondu à tartiner', ' à la crème', 'Lait et produits laitiers/Produits à base de fromage', '', 'par 100 g de portion comestible', 1310
);

/* INSERT QUERY NO: 384 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
561, 'Fromage fondu à tartiner', ' gras', 'Lait et produits laitiers/Produits à base de fromage', '', 'par 100 g de portion comestible', 1020
);

/* INSERT QUERY NO: 385 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
560, 'Fromage fondu à tartiner', ' quart-gras', 'Lait et produits laitiers/Produits à base de fromage', '', 'par 100 g de portion comestible', 624
);

/* INSERT QUERY NO: 386 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
563, 'Fromage fondu en tranches', ' à la crème', 'Lait et produits laitiers/Produits à base de fromage', '', 'par 100 g de portion comestible', 1350
);

/* INSERT QUERY NO: 387 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
559, 'Fromage fondu en tranches', ' gras', 'Lait et produits laitiers/Produits à base de fromage', '', 'par 100 g de portion comestible', 1310
);

/* INSERT QUERY NO: 388 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
558, 'Fromage fondu en tranches', ' quart-gras', 'Lait et produits laitiers/Produits à base de fromage', '', 'par 100 g de portion comestible', 648
);

/* INSERT QUERY NO: 389 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
567, 'Fromage frais', ' double crème', 'Lait et produits laitiers/Fromage frais et séré', '', 'par 100 g de portion comestible', 1450
);

/* INSERT QUERY NO: 390 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1196, 'Fromage râpé', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', '1680', 406
);

/* INSERT QUERY NO: 391 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1123, 'Fruit (moyenne)', ' cru', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 239
);

/* INSERT QUERY NO: 392 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1124, 'Fruit (moyenne)', ' cuit (sans adjonction de sucre)', 'Fruits/Fruits cuits (conserves comprises)', '', 'par 100 g de portion comestible', 221
);

/* INSERT QUERY NO: 393 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1120, 'Fruit (moyenne)', ' séché', 'Fruits/Fruits secs', '', 'par 100 g de portion comestible', 1180
);

/* INSERT QUERY NO: 394 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
986, 'Fruit de la passion', ' cru', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 387
);

/* INSERT QUERY NO: 395 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
802, 'Gallette de riz complet', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains croustillants', ' biscottes', ' crackers et galettes', 0
);

/* INSERT QUERY NO: 396 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
901, 'Gateau au beurre', 'Sucreries/Gâteaux', ' tourtes et cakes', '', 'par 100 g de portion comestible', 1800
);

/* INSERT QUERY NO: 397 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1543, 'Gateau au fromage', ' cuit au four (pâte brisée)', 'Plats/Tartes sucrées et salées et gratins', '', 'par 100 g de portion comestible', 1260
);

/* INSERT QUERY NO: 398 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1544, 'Gateau au fromage', ' cuit au four (pâte feuilletée)', 'Plats/Tartes sucrées et salées et gratins', '', 'par 100 g de portion comestible', 1250
);

/* INSERT QUERY NO: 399 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
902, 'Gateau au noix d'' Engadine', 'Sucreries/Gâteaux', ' tourtes et cakes', '', 'par 100 g de portion comestible', 2010
);

/* INSERT QUERY NO: 400 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
916, 'Gateau aux carottes', 'Sucreries/Gâteaux', ' tourtes et cakes', '', 'par 100 g de portion comestible', 1270
);

/* INSERT QUERY NO: 401 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1566, 'Gateau aux épinards', ' cuit au four (pâte brisée)', 'Plats/Tartes sucrées et salées et gratins', '', 'par 100 g de portion comestible', 720
);

/* INSERT QUERY NO: 402 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1567, 'Gateau aux épinards', ' cuit au four (pâte feuilletée)', 'Plats/Tartes sucrées et salées et gratins', '', 'par 100 g de portion comestible', 708
);

/* INSERT QUERY NO: 403 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1616, 'Gateau aux oignons', ' cuit au four (pâte brisée)', 'Plats/Tartes sucrées et salées et gratins', '', 'par 100 g de portion comestible', 714
);

/* INSERT QUERY NO: 404 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1615, 'Gateau aux oignons', ' cuit au four (pâte feuilletée)', 'Plats/Tartes sucrées et salées et gratins', '', 'par 100 g de portion comestible', 703
);

/* INSERT QUERY NO: 405 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1617, 'Gateau aux tomates', ' cuit au four (pâte feuilletée)', 'Plats/Tartes sucrées et salées et gratins', '', 'par 100 g de portion comestible', 645
);

/* INSERT QUERY NO: 406 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1618, 'Gateu aux tomates', ' cuit au four (pâte brisée)', 'Plats/Tartes sucrées et salées et gratins', '', 'par 100 g de portion comestible', 658
);

/* INSERT QUERY NO: 407 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1090, 'Gendarme', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '2030', 491
);

/* INSERT QUERY NO: 408 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
430, 'Germe de blé', 'Pains', ' flocons et céréales pour le petit-déjeuner/Flocons', ' son et germes;Denrées ALIMENTaires spéciales/Suppléments', '', 0
);

/* INSERT QUERY NO: 409 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1125, 'Gibier (moyenne)', ' cru', 'Viande et abats/Gibier', '', 'par 100 g de portion comestible', 484
);

/* INSERT QUERY NO: 410 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13281, 'Gibier (moyenne)', ' cuit (sans adjonction de graisse ni de sel)', 'Viande et abats/Gibier', '', 'par 100 g de portion comestible', 663
);

/* INSERT QUERY NO: 411 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
893, 'Glace à l''eau', 'Sucreries/Glaces à base d''eau', '1', 'par 100 g de portion comestible', '375', 88
);

/* INSERT QUERY NO: 412 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
483, 'Gorgonzola', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', '1480', 357
);

/* INSERT QUERY NO: 413 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13457, 'Graine de chia', 'Noix', ' graines et produits oléagineux', '', 'par 100 g de portion comestible', 1980
);

/* INSERT QUERY NO: 414 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
276, 'Graine de courge', 'Noix', ' graines et produits oléagineux', '', 'par 100 g de portion comestible', 2550
);

/* INSERT QUERY NO: 415 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
277, 'Graine de lin', 'Noix', ' graines et produits oléagineux', '', 'par 100 g de portion comestible', 2200
);

/* INSERT QUERY NO: 416 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
408, 'Graine de sésame', ' décortiquée', 'Noix', ' graines et produits oléagineux', '', 0
);

/* INSERT QUERY NO: 417 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
280, 'Graine de sésame', ' non décortiquée', 'Noix', ' graines et produits oléagineux', '', 0
);

/* INSERT QUERY NO: 418 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
281, 'Graine de tournesol', 'Noix', ' graines et produits oléagineux', '', 'par 100 g de portion comestible', 2570
);

/* INSERT QUERY NO: 419 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1170, 'Graines oléagineuses (moyenne)', ' non salées', 'Noix', ' graines et produits oléagineux', '', 0
);

/* INSERT QUERY NO: 420 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
601, 'Graisse de coco', 'Graisses et huiles/Graisses', '0.9', 'par 100 g de portion comestible', '3680', 894
);

/* INSERT QUERY NO: 421 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
708, 'Graisse de palme - Huile de palme', 'Graisses et huiles/Huiles;Graisses et huiles/Graisses', '0.9', 'par 100 ml', '3290', 799
);

/* INSERT QUERY NO: 422 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1580, 'Gratin de légumes', 'Plats/Tartes sucrées et salées et gratins', '', 'par 100 g de portion comestible', '242', 58
);

/* INSERT QUERY NO: 423 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1611, 'Gratin de pâtes au jambon', ' préparé', 'Plats/Tartes sucrées et salées et gratins', '', 'par 100 g de portion comestible', 683
);

/* INSERT QUERY NO: 424 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1599, 'Gratin de pommes de terre dauphinois', ' préparé', 'Plats/Tartes sucrées et salées et gratins', '', 'par 100 g de portion comestible', 533
);

/* INSERT QUERY NO: 425 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1600, 'Gratin de pommes de terre savoyard', ' préparé', 'Plats/Tartes sucrées et salées et gratins', '', 'par 100 g de portion comestible', 314
);

/* INSERT QUERY NO: 426 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
400, 'Groseille à maquereau', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 145
);

/* INSERT QUERY NO: 427 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
391, 'Groseille rouge', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 188
);

/* INSERT QUERY NO: 428 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
530, 'Gruyère', ' gras', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', 1640
);

/* INSERT QUERY NO: 429 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1583, 'Hamburger (boeuf)', ' grillé à l''huile de colza HOLL', 'Viande et abats/Bœuf', '', 'par 100 g de portion comestible', 782
);

/* INSERT QUERY NO: 430 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14025, 'Hamburger', ' double', 'Plats/Fast Food', '', 'par 100 g de portion comestible', 1080
);

/* INSERT QUERY NO: 431 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
473, 'Haricot (vert) sec', ' cru', 'Légumes/Légumes secs', '', 'par 100 g de portion comestible', 1060
);

/* INSERT QUERY NO: 432 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1009, 'Haricot (vert)', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 136
);

/* INSERT QUERY NO: 433 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13388, 'Haricot commun (tout type)', ' grain mature', ' cuit (sans adjonction de graisse ni de sel)', 'Produits céréaliers', ' légumineuses et pommes de terre/Légumineuses', 0
);

/* INSERT QUERY NO: 434 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13387, 'Haricot commun (tout type)', ' grain mature', ' sec', 'Produits céréaliers', ' légumineuses et pommes de terre/Légumineuses', 0
);

/* INSERT QUERY NO: 435 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14068, 'Haricot vert sec', ' mis à tremper', ' cuit à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 436 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
353, 'Haricot vert', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 129
);

/* INSERT QUERY NO: 437 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1590, 'Hot Dog avec pain blanc', ' ketchup et moutarde', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 908
);

/* INSERT QUERY NO: 438 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14055, 'Houmous', 'Divers/Sauces', '', 'par 100 g de portion comestible', '849', 204
);

/* INSERT QUERY NO: 439 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
596, 'Huile d''arachide', 'Graisses et huiles/Huiles', '0.9', 'par 100 ml', '3330', 810
);

/* INSERT QUERY NO: 440 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
591, 'Huile d''olive', 'Graisses et huiles/Huiles', '0.9', 'par 100 ml', '3330', 810
);

/* INSERT QUERY NO: 441 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
589, 'Huile de carthame', 'Graisses et huiles/Huiles', '0.9', 'par 100 ml', '3330', 810
);

/* INSERT QUERY NO: 442 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14091, 'Huile de chanvre', 'Graisses et huiles/Huiles', '0.9', 'par 100 ml', '3330', 810
);

/* INSERT QUERY NO: 443 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
600, 'Huile de colza', 'Graisses et huiles/Huiles', '0.9', 'par 100 ml', '3330', 810
);

/* INSERT QUERY NO: 444 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1069, 'Huile de colza HOLL (high oleic', ' low linolenic)', 'Graisses et huiles/Huiles', '0.9', 'par 100 ml', 3330
);

/* INSERT QUERY NO: 445 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
593, 'Huile de germes de blé', 'Graisses et huiles/Huiles', '0.9', 'par 100 ml', '3330', 810
);

/* INSERT QUERY NO: 446 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13404, 'Huile de graines de courge', 'Graisses et huiles/Huiles', '0.9', 'par 100 ml', '3330', 810
);

/* INSERT QUERY NO: 447 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13405, 'Huile de lin', ' pressée à froid', 'Graisses et huiles/Huiles', '0.9', 'par 100 ml', 3330
);

/* INSERT QUERY NO: 448 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
412, 'Huile de maïs', 'Graisses et huiles/Huiles', '0.9', 'par 100 ml', '3330', 810
);

/* INSERT QUERY NO: 449 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13402, 'Huile de noix', 'Graisses et huiles/Huiles', '0.9', 'par 100 ml', '3330', 810
);

/* INSERT QUERY NO: 450 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
592, 'Huile de pépins de raisin', 'Graisses et huiles/Huiles', '0.9', 'par 100 ml', '3330', 810
);

/* INSERT QUERY NO: 451 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
603, 'Huile de soja', 'Graisses et huiles/Huiles', '0.9', 'par 100 ml', '3330', 810
);

/* INSERT QUERY NO: 452 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
598, 'Huile de tournesol', 'Graisses et huiles/Huiles', '0.9', 'par 100 ml', '3330', 810
);

/* INSERT QUERY NO: 453 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1068, 'Huile de tournesol HO', ' raffinée', 'Graisses et huiles/Huiles', '0.9', 'par 100 ml', 3330
);

/* INSERT QUERY NO: 454 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
693, 'Jambon cru', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '958', 229
);

/* INSERT QUERY NO: 455 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
691, 'Jambon cuit de derrière', 'Produits carnés et charcuterie/Produits de charcuterie cuits', '', 'par 100 g de portion comestible', '440', 104
);

/* INSERT QUERY NO: 456 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
692, 'Jambon cuit de devant', 'Produits carnés et charcuterie/Produits de charcuterie cuits', '', 'par 100 g de portion comestible', '445', 106
);

/* INSERT QUERY NO: 457 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
718, 'Jambon roulé', 'Produits carnés et charcuterie/Produits de charcuterie cuits', '', 'par 100 g de portion comestible', '758', 181
);

/* INSERT QUERY NO: 458 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13333, 'Jambon roulé', ' cuit (sans adjonction de graisse ni de sel)', 'Produits carnés et charcuterie/Autres produits carnés et produits de charcuterie', '', 'par 100 g de portion comestible', 788
);

/* INSERT QUERY NO: 459 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
410, 'Jaune d''oeuf', ' cru', 'Œufs', '', 'par 100 g de portion comestible', 1440
);

/* INSERT QUERY NO: 460 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
576, 'Jus d''orange', 'Fruits/Jus de fruits;Boissons sans alcool/Jus de fruits et de légumes', '1', 'par 100 ml', '216', 51
);

/* INSERT QUERY NO: 461 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
577, 'Jus d''orange', ' enrichi de vitamine C', 'Fruits/Jus de fruits;Boissons sans alcool/Jus de fruits et de légumes', '1.1', 'par 100 ml', 232
);

/* INSERT QUERY NO: 462 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
566, 'Jus de carotte', 'Légumes/Jus de légumes;Boissons sans alcool/Jus de fruits et de légumes', '1.1', 'par 100 ml', '138', 33
);

/* INSERT QUERY NO: 463 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
605, 'Jus de citron', 'Fruits/Jus de fruits;Boissons sans alcool/Jus de fruits et de légumes', '1', 'par 100 ml', '125', 30
);

/* INSERT QUERY NO: 464 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1131, 'Jus de fruit dilué (60% jus - 40 % eau)', ' non sucré (moyenne)', 'Boissons sans alcool/Jus de fruits et de légumes', '1', 'par 100 ml', 132
);

/* INSERT QUERY NO: 465 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1130, 'Jus de fruit', ' non sucré (moyenne)', 'Fruits/Jus de fruits;Boissons sans alcool/Jus de fruits et de légumes', '1', 'par 100 ml', 220
);

/* INSERT QUERY NO: 466 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
562, 'Jus de poire', 'Fruits/Jus de fruits;Boissons sans alcool/Jus de fruits et de légumes', '1', 'par 100 ml', '214', 51
);

/* INSERT QUERY NO: 467 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
568, 'Jus de pomme', 'Fruits/Jus de fruits;Boissons sans alcool/Jus de fruits et de légumes', '1', 'par 100 ml', '190', 45
);

/* INSERT QUERY NO: 468 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
573, 'Jus de raisin', 'Fruits/Jus de fruits;Boissons sans alcool/Jus de fruits et de légumes', '1', 'par 100 ml', '262', 62
);

/* INSERT QUERY NO: 469 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
564, 'Jus de tomate', 'Légumes/Jus de légumes;Boissons sans alcool/Jus de fruits et de légumes', '1.1', 'par 100 ml', '70', 16
);

/* INSERT QUERY NO: 470 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
393, 'Kaki', ' cru', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 299
);

/* INSERT QUERY NO: 471 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1572, 'Kebab (dürüm)', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '516', 123
);

/* INSERT QUERY NO: 472 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
635, 'Ketchup', 'Divers/Sauces', '1.14', 'par 100 g de portion comestible', '498', 117
);

/* INSERT QUERY NO: 473 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
395, 'Kiwi', ' cru', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 229
);

/* INSERT QUERY NO: 474 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
889, 'Kouglof au chocolat', 'Sucreries/Gâteaux', ' tourtes et cakes', '', 'par 100 g de portion comestible', 1590
);

/* INSERT QUERY NO: 475 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1465, 'Kouglof façon Grand-mère', 'Sucreries/Gâteaux', ' tourtes et cakes', '', 'par 100 g de portion comestible', 1920
);

/* INSERT QUERY NO: 476 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1194, 'Lait (moyenne)', 'Lait et produits laitiers/Lait', '1', 'par 100 ml', '259', 62
);

/* INSERT QUERY NO: 477 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
527, 'Lait condensé', ' non sucré', 'Lait et produits laitiers/Lait', '1.1', 'par 100 g de portion comestible', 547
);

/* INSERT QUERY NO: 478 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
526, 'Lait condensé', ' sucré', 'Lait et produits laitiers/Lait', '1.1', 'par 100 g de portion comestible', 1430
);

/* INSERT QUERY NO: 479 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13384, 'Lait de brebis', ' cru', 'Lait et produits laitiers/Lait', '1', 'par 100 ml', 435
);

/* INSERT QUERY NO: 480 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
528, 'Lait de chèvre', 'Lait et produits laitiers/Lait', '1', 'par 100 ml', '238', 57
);

/* INSERT QUERY NO: 481 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13458, 'Lait de coco', 'Noix', ' graines et produits oléagineux', '', 'par 100 g de portion comestible', 884
);

/* INSERT QUERY NO: 482 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
578, 'Lait écrémé en poudre', 'Lait et produits laitiers/Lait', '', 'par 100 g de portion comestible', '1480', 348
);

/* INSERT QUERY NO: 483 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
64, 'Lait écrémé', ' UHT', 'Lait et produits laitiers/Lait', '1', 'par 100 ml', 139
);

/* INSERT QUERY NO: 484 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
585, 'Lait entier en poudre', 'Lait et produits laitiers/Lait', '', 'par 100 g de portion comestible', '2010', 480
);

/* INSERT QUERY NO: 485 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
62, 'Lait entier', ' pasteurisé', 'Lait et produits laitiers/Lait', '1', 'par 100 ml', 282
);

/* INSERT QUERY NO: 486 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
63, 'Lait entier', ' UHT', 'Lait et produits laitiers/Lait', '1', 'par 100 ml', 284
);

/* INSERT QUERY NO: 487 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
59, 'Lait partiellement écrémé', ' pasteurisé', 'Lait et produits laitiers/Lait', '1', 'par 100 ml', 236
);

/* INSERT QUERY NO: 488 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
61, 'Lait partiellement écrémé', ' UHT', 'Lait et produits laitiers/Lait', '1', 'par 100 ml', 238
);

/* INSERT QUERY NO: 489 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13399, 'Lait', ' demi-écrémé 1.5 % mg', ' UHT', 'Lait et produits laitiers/Lait', '1', 0
);

/* INSERT QUERY NO: 490 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
448, 'Laitue pommée', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 60
);

/* INSERT QUERY NO: 491 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
441, 'Laitue', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 66
);

/* INSERT QUERY NO: 492 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
767, 'Langoustine', ' crue', 'Poisson/Fruits de mer et crustacés', '', 'par 100 g de portion comestible', 395
);

/* INSERT QUERY NO: 493 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10378, 'Langue (moyenne de veau et boeuf)', ' crue', 'Viande et abats/Veau;Viande et abats/Bœuf', '', 'par 100 g de portion comestible', 785
);

/* INSERT QUERY NO: 494 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
686, 'Lapin (moyenne)', ' cru', 'Viande et abats/Autres espèces animales', '', 'par 100 g de portion comestible', 626
);

/* INSERT QUERY NO: 495 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13329, 'Lapin (moyenne)', ' cuit (sans adjonction de graisse ni de sel)', 'Viande et abats/Autres espèces animales', '', 'par 100 g de portion comestible', 858
);

/* INSERT QUERY NO: 496 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
16, 'Lapin', ' filet', ' cru', 'Viande et abats/Autres espèces animales', '', 0
);

/* INSERT QUERY NO: 497 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
704, 'Lard à cuire', ' fumé', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', 1330
);

/* INSERT QUERY NO: 498 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
707, 'Lard à manger cru', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '1660', 400
);

/* INSERT QUERY NO: 499 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1666, 'Lasagne aux légumes', ' préparée', 'Plats/Plats italiens', '', 'par 100 g de portion comestible', 556
);

/* INSERT QUERY NO: 500 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1664, 'Lasagne de viande', ' préparée', 'Plats/Plats italiens', '', 'par 100 g de portion comestible', 589
);

/* INSERT QUERY NO: 501 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1184, 'Latte macchiato', ' non sucré', 'Lait et produits laitiers/Boissons lactées et yogourts à boire;Boissons sans alcool/Café', '0.88', 'par 100 ml', 198
);

/* INSERT QUERY NO: 502 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1248, 'Leckerli de Bâle', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', '1740', 412
);

/* INSERT QUERY NO: 503 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1152, 'Légumes (moyenne)', ' crus', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 111
);

/* INSERT QUERY NO: 504 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1167, 'Légumes crucifères (famille des choux) moyenne', ' crus', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 123
);

/* INSERT QUERY NO: 505 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10582, 'Légumes crucifères (famille des choux) moyenne', ' cuits (sans adjonction de sel ni de graisse)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 118
);

/* INSERT QUERY NO: 506 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1166, 'Légumes feuille (moyenne sans salade)', ' à l''étuvée (sans adjonction de graisse ni de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 94
);

/* INSERT QUERY NO: 507 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1165, 'Légumes feuille (moyenne sans salade)', ' à la vapeur  (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 91
);

/* INSERT QUERY NO: 508 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1164, 'Légumes feuille (moyenne sans salade)', ' cuits (sans adjonction de graisse ni de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 88
);

/* INSERT QUERY NO: 509 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1163, 'Légumes racines et tubercules (moyenne)', ' à l''étuvée (sans adjonctions de graisse ni de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 138
);

/* INSERT QUERY NO: 510 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1162, 'Légumes racines et tubercules (moyenne)', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 159
);

/* INSERT QUERY NO: 511 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1267, 'Légumes racines et tubercules (moyenne)', ' crus', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 151
);

/* INSERT QUERY NO: 512 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1161, 'Légumes racines et tubercules (moyenne)', ' cuits (sans adjonction de graisse ni de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 144
);

/* INSERT QUERY NO: 513 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1134, 'Légumineuses (moyenne)', ' cuites (sans adjonction de sel ni de graisse)', 'Produits céréaliers', ' légumineuses et pommes de terre/Légumineuses', '', 0
);

/* INSERT QUERY NO: 514 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1133, 'Légumineuses (moyenne)', ' sèches', 'Produits céréaliers', ' légumineuses et pommes de terre/Légumineuses', '', 0
);

/* INSERT QUERY NO: 515 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10534, 'Lemon Curd', 'Sucreries/Crèmes et pouding', '', 'par 100 g de portion comestible', '1340', 320
);

/* INSERT QUERY NO: 516 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13386, 'Lentille', ' décortiquée', ' cuite (sans adjonction de graisse ni de sel)', 'Produits céréaliers', ' légumineuses et pommes de terre/Légumineuses', 0
);

/* INSERT QUERY NO: 517 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13385, 'Lentille', ' décortiquée', ' sèche', 'Produits céréaliers', ' légumineuses et pommes de terre/Légumineuses', 0
);

/* INSERT QUERY NO: 518 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1060, 'Lentille', ' entière', ' cuite (sans adjonction de graisse ni de sel)', 'Produits céréaliers', ' légumineuses et pommes de terre/Légumineuses', 0
);

/* INSERT QUERY NO: 519 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
370, 'Lentille', ' entière', ' sèche', 'Produits céréaliers', ' légumineuses et pommes de terre/Légumineuses', 0
);

/* INSERT QUERY NO: 520 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
839, 'Levure de bière', ' séchée', 'Divers/Levure;Denrées ALIMENTaires spéciales/Suppléments', '', 'par 100 g de portion comestible', 1500
);

/* INSERT QUERY NO: 521 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
763, 'Levure de boulangerie', ' pressée', 'Divers/Levure;Divers/Ingrédients de boulangerie-pâtisserie', '', 'par 100 g de portion comestible', 402
);

/* INSERT QUERY NO: 522 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
754, 'Lieu noir', ' cru', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 339
);

/* INSERT QUERY NO: 523 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
486, 'Lièvre (moyenne)', ' cru', 'Viande et abats/Autres espèces animales', '', 'par 100 g de portion comestible', 485
);

/* INSERT QUERY NO: 524 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
531, 'Limburger/Münster', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', '1140', 273
);

/* INSERT QUERY NO: 525 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
595, 'Limonade', ' avec arômes', ' sucrée', 'Boissons sans alcool/Boissons sucrées', '1', 0
);

/* INSERT QUERY NO: 526 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
517, 'Liqueur aux oeufs', ' 16.5 vol%', 'Boissons alcoolisées/Autres boissons alcoolisées', '1.1', 'par 100 ml', 1310
);

/* INSERT QUERY NO: 527 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
786, 'Luganiga', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '1940', 468
);

/* INSERT QUERY NO: 528 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
888, 'Macaron à la noix de coco', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', '2350', 567
);

/* INSERT QUERY NO: 529 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
869, 'Macaron aux noisettes', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', '2260', 544
);

/* INSERT QUERY NO: 530 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1478, 'Macaronis de l''alpage', ' préparés', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 753
);

/* INSERT QUERY NO: 531 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
777, 'Macédoine de fruits', ' non sucrée', ' conserve', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 532 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
775, 'Macédoine de fruits', ' sucrée', ' conserve', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 533 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
372, 'Mâche', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 96
);

/* INSERT QUERY NO: 534 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
878, 'Madeleines', 'Sucreries/Autres articles de pâtisserie', '', 'par 100 g de portion comestible', '1450', 346
);

/* INSERT QUERY NO: 535 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1033, 'Maïs doux  (conserve)', ' réchauffé (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 433
);

/* INSERT QUERY NO: 536 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
632, 'Maïs doux (grains)', ' conserve', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 424
);

/* INSERT QUERY NO: 537 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
633, 'Maïs doux (petits épis) au vinaigre', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', '500', 119
);

/* INSERT QUERY NO: 538 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1032, 'Maïs doux', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 421
);

/* INSERT QUERY NO: 539 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
432, 'Maïs doux', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 391
);

/* INSERT QUERY NO: 540 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
397, 'Mandarine', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 201
);

/* INSERT QUERY NO: 541 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
396, 'Mangue', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 264
);

/* INSERT QUERY NO: 542 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13884, 'Mangue', ' séchée', 'Fruits/Fruits secs', '', 'par 100 g de portion comestible', 1240
);

/* INSERT QUERY NO: 543 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13918, 'Manioc', ' racine', ' crue', 'Légumes/Légumes frais', '', 0
);

/* INSERT QUERY NO: 544 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14054, 'Manioc', ' racine', ' cuite (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 545 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
208, 'Margarine', 'Graisses et huiles/Graisses', '0.9', 'par 100 g de portion comestible', '2980', 724
);

/* INSERT QUERY NO: 546 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
485, 'Mascarpone', 'Lait et produits laitiers/Fromage frais et séré', '', 'par 100 g de portion comestible', '1790', 435
);

/* INSERT QUERY NO: 547 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
496, 'Massepain', 'Sucreries/Autres sucreries', '', 'par 100 g de portion comestible', '1990', 474
);

/* INSERT QUERY NO: 548 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
771, 'Mayonnaise', 'Graisses et huiles/Mayonnaises', '0.9', 'par 100 g de portion comestible', '3050', 742
);

/* INSERT QUERY NO: 549 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1682, 'Mayonnaise', ' à l''huile de colza', ' faite maison', 'Graisses et huiles/Mayonnaises', '', 0
);

/* INSERT QUERY NO: 550 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
772, 'Mayonnaise', ' à valeur énergétique réduite', 'Graisses et huiles/Mayonnaises', '1', 'par 100 g de portion comestible', 1350
);

/* INSERT QUERY NO: 551 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
732, 'Mélasse', ' sirop de mélasse', 'Sucreries/Confitures et produits à tartiner sucrés', '1.4', 'par 100 g de portion comestible', 1160
);

/* INSERT QUERY NO: 552 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
399, 'Melon', ' à chaire orange', ' cru', 'Fruits/Fruits frais', '', 0
);

/* INSERT QUERY NO: 553 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
463, 'Menthe', ' crue', 'Légumes/Herbes aromatiques', '', 'par 100 g de portion comestible', 205
);

/* INSERT QUERY NO: 554 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
854, 'Meringue', 'Sucreries/Autres sucreries', '', 'par 100 g de portion comestible', '1700', 401
);

/* INSERT QUERY NO: 555 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14035, 'Meringue (petite) au cacao', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', '1870', 444
);

/* INSERT QUERY NO: 556 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14039, 'Meringue (petite)', ' avec nappage de chocolat', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', 2040
);

/* INSERT QUERY NO: 557 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
760, 'Merlu', ' cru', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 300
);

/* INSERT QUERY NO: 558 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14060, 'Merveilles de carnaval', 'Sucreries/Autres articles de pâtisserie', '', 'par 100 g de portion comestible', '2310', 553
);

/* INSERT QUERY NO: 559 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
472, 'Miel (miel de fleurs)', 'Sucreries/Confitures et produits à tartiner sucrés', '1.4', 'par 100 g de portion comestible', '1300', 306
);

/* INSERT QUERY NO: 560 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
879, 'Milanais', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', '1800', 431
);

/* INSERT QUERY NO: 561 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
924, 'Mille-feuille', 'Sucreries/Autres articles de pâtisserie', '', 'par 100 g de portion comestible', '1260', 301
);

/* INSERT QUERY NO: 562 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
938, 'Millet', ' flocons complets', 'Pains', ' flocons et céréales pour le petit-déjeuner/Flocons', ' son et germes', 0
);

/* INSERT QUERY NO: 563 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
422, 'Millet', ' grains décortiqués', 'Produits céréaliers', ' légumineuses et pommes de terre/Autres produits céréaliers', '', 0
);

/* INSERT QUERY NO: 564 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
671, 'Minestrone', 'Plats/Potages et soupes', '1.1', 'par 100 g de portion comestible', '221', 53
);

/* INSERT QUERY NO: 565 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
403, 'Mirabelle', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 242
);

/* INSERT QUERY NO: 566 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1053, 'Mirabelle', ' cuite', '  égouttée (sans adjonction de sucre)', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 567 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1039, 'Morille', ' à l''étuvée (sans adjonction de graisse ni de sel)', 'Légumes/Champignons', '', 'par 100 g de portion comestible', 139
);

/* INSERT QUERY NO: 568 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
457, 'Morille', ' crue', 'Légumes/Champignons', '', 'par 100 g de portion comestible', 119
);

/* INSERT QUERY NO: 569 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
819, 'Mortadella', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', '1300', 314
);

/* INSERT QUERY NO: 570 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
717, 'Mostbröckli', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '633', 150
);

/* INSERT QUERY NO: 571 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
761, 'Moule', ' crue', 'Poisson/Fruits de mer et crustacés', '', 'par 100 g de portion comestible', 357
);

/* INSERT QUERY NO: 572 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13464, 'Moutarde', 'Divers/Sauces', '', 'par 100 g de portion comestible', '513', 124
);

/* INSERT QUERY NO: 573 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
82, 'Mozzarella', 'Lait et produits laitiers/Fromage frais et séré;Lait et produits laitiers/Fromage à pâte molle', '', 'par 100 g de portion comestible', '1060', 256
);

/* INSERT QUERY NO: 574 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
383, 'Mûre', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 185
);

/* INSERT QUERY NO: 575 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
389, 'Myrtille', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 245
);

/* INSERT QUERY NO: 576 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1579, 'Nasi Goreng', ' préparé', 'Plats/Plats asiatiques', '', 'par 100 g de portion comestible', 527
);

/* INSERT QUERY NO: 577 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
572, 'Nectar d''orange', 'Boissons sans alcool/Boissons sucrées;Boissons sans alcool/Jus de fruits et de légumes', '1', 'par 100 ml', '185', 44
);

/* INSERT QUERY NO: 578 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
404, 'Nectarine', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 214
);

/* INSERT QUERY NO: 579 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
270, 'Noisette', 'Noix', ' graines et produits oléagineux', '', 'par 100 g de portion comestible', 2730
);

/* INSERT QUERY NO: 580 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
271, 'Noix', 'Noix', ' graines et produits oléagineux', '', 'par 100 g de portion comestible', 2930
);

/* INSERT QUERY NO: 581 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
275, 'Noix de cajou', 'Noix', ' graines et produits oléagineux', '', 'par 100 g de portion comestible', 2460
);

/* INSERT QUERY NO: 582 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
284, 'Noix de coco', 'Noix', ' graines et produits oléagineux', '', 'par 100 g de portion comestible', 1580
);

/* INSERT QUERY NO: 583 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
742, 'Noix de coco', ' sèche ', 'Noix', ' graines et produits oléagineux', '', 0
);

/* INSERT QUERY NO: 584 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
279, 'Noix du Brésil', 'Noix', ' graines et produits oléagineux', '', 'par 100 g de portion comestible', 2880
);

/* INSERT QUERY NO: 585 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
290, 'Oeuf de poule', ' entier', ' cru', 'Œufs', '', 0
);

/* INSERT QUERY NO: 586 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1070, 'Oeuf de poule', ' entier', ' cuit dur', 'Œufs', '', 0
);

/* INSERT QUERY NO: 587 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1605, 'Oeufs brouillés au fromage', ' préparés', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 651
);

/* INSERT QUERY NO: 588 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1606, 'Oeufs brouillés au jambon', ' préparés', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 597
);

/* INSERT QUERY NO: 589 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1604, 'Oeufs brouillés aux champignons', ' préparés', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 529
);

/* INSERT QUERY NO: 590 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1603, 'Oeufs brouillés aux herbes', ' préparés', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 585
);

/* INSERT QUERY NO: 591 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1602, 'Oeufs brouillés', ' préparés', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 613
);

/* INSERT QUERY NO: 592 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
494, 'Oignon au vinaigre', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', '116', 28
);

/* INSERT QUERY NO: 593 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1035, 'Oignon', ' à l''étuvée (sans adjonction de graisse ni de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 183
);

/* INSERT QUERY NO: 594 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
368, 'Oignon', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 163
);

/* INSERT QUERY NO: 595 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1036, 'Oignon', ' grillé (sans adjonction de graisse ni de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 388
);

/* INSERT QUERY NO: 596 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
493, 'Olive', ' noire', 'Noix', ' graines et produits oléagineux', '', 0
);

/* INSERT QUERY NO: 597 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
492, 'Olive', ' verte', ' en saumure', ' égouttée', 'Noix', 0
);

/* INSERT QUERY NO: 598 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10545, 'Olives farcies avec de la viande hachée', ' frites', 'Snacks salés/Autres snacks salés', '', 'par 100 g de portion comestible', 1370
);

/* INSERT QUERY NO: 599 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1502, 'Omelette à la française au fromage', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 796
);

/* INSERT QUERY NO: 600 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1501, 'Omelette à la française au jambon', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 596
);

/* INSERT QUERY NO: 601 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1503, 'Omelette à la française au lard', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 729
);

/* INSERT QUERY NO: 602 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1500, 'Omelette à la française', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 627
);

/* INSERT QUERY NO: 603 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
405, 'Orange', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 185
);

/* INSERT QUERY NO: 604 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
855, 'Orangeat', ' écorce d''orange confite', 'Sucreries/Autres sucreries', '', 'par 100 g de portion comestible', 1300
);

/* INSERT QUERY NO: 605 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
429, 'Orge perlé', 'Produits céréaliers', ' légumineuses et pommes de terre/Autres produits céréaliers', '', 'par 100 g de portion comestible', 1470
);

/* INSERT QUERY NO: 606 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
739, 'Orge', ' flocons', 'Pains', ' flocons et céréales pour le petit-déjeuner/Flocons', ' son et germes', 0
);

/* INSERT QUERY NO: 607 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10446, 'Pain (moyenne)', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1110
);

/* INSERT QUERY NO: 608 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
846, 'Pain au gruau de seigle', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 994
);

/* INSERT QUERY NO: 609 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
831, 'Pain aux noix', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1390
);

/* INSERT QUERY NO: 610 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
829, 'Pain bis', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 991
);

/* INSERT QUERY NO: 611 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14077, 'Pain bis (avec sel iodé)', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 991
);

/* INSERT QUERY NO: 612 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
823, 'Pain blanc', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1030
);

/* INSERT QUERY NO: 613 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
821, 'Pain complet de froment', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 899
);

/* INSERT QUERY NO: 614 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
918, 'Pain croustillant', ' complet', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains croustillants', ' biscottes', 0
);

/* INSERT QUERY NO: 615 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
919, 'Pain croustillant', ' complet', ' au sésame', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains croustillants', 0
);

/* INSERT QUERY NO: 616 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
920, 'Pain croustillant', ' complet', ' aux graines de lin', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains croustillants', 0
);

/* INSERT QUERY NO: 617 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
880, 'Pain d''épice', 'Sucreries/Autres articles de pâtisserie', '', 'par 100 g de portion comestible', '1700', 404
);

/* INSERT QUERY NO: 618 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
993, 'Pain d''épice', ' enrobé de chocolat', 'Sucreries/Autres articles de pâtisserie', '', 'par 100 g de portion comestible', 1860
);

/* INSERT QUERY NO: 619 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
826, 'Pain de mie à l''huile végétale', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1390
);

/* INSERT QUERY NO: 620 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
827, 'Pain de mie au beurre', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1330
);

/* INSERT QUERY NO: 621 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
830, 'Pain de seigle au levain', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 910
);

/* INSERT QUERY NO: 622 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
824, 'Pain de seigle valaisan', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 960
);

/* INSERT QUERY NO: 623 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
833, 'Pain mi-blanc', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1020
);

/* INSERT QUERY NO: 624 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14078, 'Pain mi-blanc (avec sel iodé)', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1020
);

/* INSERT QUERY NO: 625 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1268, 'Pain paysan', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1020
);

/* INSERT QUERY NO: 626 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1515, 'Pain perdu non sucré', 'Plats/Autres plats sucrés', '', 'par 100 g de portion comestible', '930', 222
);

/* INSERT QUERY NO: 627 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
828, 'Pain tessinois', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1360
);

/* INSERT QUERY NO: 628 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
388, 'Pamplemousse (blanc ou rouge)', ' cru', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 126
);

/* INSERT QUERY NO: 629 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13439, 'Panais', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 260
);

/* INSERT QUERY NO: 630 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13443, 'Panais', ' cuit (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 247
);

/* INSERT QUERY NO: 631 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
716, 'Pancetta', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '1930', 467
);

/* INSERT QUERY NO: 632 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
202, 'Panettone', 'Sucreries/Autres articles de pâtisserie', '', 'par 100 g de portion comestible', '1490', 354
);

/* INSERT QUERY NO: 633 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
779, 'Pantli', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '2280', 553
);

/* INSERT QUERY NO: 634 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13440, 'Papaye', ' mûre', ' crue', 'Fruits/Fruits frais', '', 0
);

/* INSERT QUERY NO: 635 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
663, 'Paprika (épice)', 'Divers/Sel', ' épices et arômes', '', 'par 100 g de portion comestible', 1490
);

/* INSERT QUERY NO: 636 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
482, 'Parmesan', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', '1670', 401
);

/* INSERT QUERY NO: 637 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
402, 'Pastèque', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 129
);

/* INSERT QUERY NO: 638 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13407, 'Patate douce', ' à la vapeur (sans adjonction de sel)', 'Produits céréaliers', ' légumineuses et pommes de terre/Pommes de terre', '', 0
);

/* INSERT QUERY NO: 639 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13406, 'Patate douce', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pommes de terre', '', 0
);

/* INSERT QUERY NO: 640 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13419, 'Pâte à flammekueche', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', '1', 0
);

/* INSERT QUERY NO: 641 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
906, 'Pâte à gâteau brisée (à la graisse végétale)', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', '', 0
);

/* INSERT QUERY NO: 642 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1176, 'Pâte à gâteau brisée (au beurre)', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', '', 0
);

/* INSERT QUERY NO: 643 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
907, 'Pâte à pizza (à l''huile d''olive)', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', '', 0
);

/* INSERT QUERY NO: 644 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13418, 'Pâte à strudel', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', '', 0
);

/* INSERT QUERY NO: 645 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
703, 'Pâte à tartiner aux noisettes et au chocolat', 'Sucreries/Confitures et produits à tartiner sucrés', '1.3', 'par 100 g de portion comestible', '2290', 548
);

/* INSERT QUERY NO: 646 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14045, 'Pâte brisée sucrée (à la graisse végétale)', ' cuite', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', '', 0
);

/* INSERT QUERY NO: 647 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14043, 'Pâte brisée sucrée (au beurre)', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', '', 0
);

/* INSERT QUERY NO: 648 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14044, 'Pâte brisée sucrée (au beurre)', ' cuite', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', '', 0
);

/* INSERT QUERY NO: 649 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
909, 'Pâte brisée sucrée (avec graisse végétale)', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', '', 0
);

/* INSERT QUERY NO: 650 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13416, 'Pâte brisée', ' à la farine complète (à la graisse végétale)', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', 0
);

/* INSERT QUERY NO: 651 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13417, 'Pâte brisée', ' à la farine complète (au beurre)', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', 0
);

/* INSERT QUERY NO: 652 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
774, 'Pâté de campagne', 'Produits carnés et charcuterie/Produits de charcuterie cuits', '', 'par 100 g de portion comestible', '1620', 391
);

/* INSERT QUERY NO: 653 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1269, 'Pâte fermentée', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', '', 'par 100 g de portion comestible', 841
);

/* INSERT QUERY NO: 654 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13445, 'Pâte feuilletée (avec graisse végétale)', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', '', 0
);

/* INSERT QUERY NO: 655 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1181, 'Pâte feuilletée', ' au séré et à la graisse végétale', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', 0
);

/* INSERT QUERY NO: 656 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1182, 'Pâte feuilletée', ' au séré et au beurre', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', 0
);

/* INSERT QUERY NO: 657 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
905, 'Pâte feuilletée', ' faite maison (avec graisse végétale)', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', 0
);

/* INSERT QUERY NO: 658 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
904, 'Pâte feuillettée', ' faite maison (au beurre)', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', 0
);

/* INSERT QUERY NO: 659 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
910, 'Pâte lévée (avec beurre)', ' sucrée', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', 0
);

/* INSERT QUERY NO: 660 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1177, 'Pâte lévée (avec graisse végétale)', ' sucrée', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes', 0
);

/* INSERT QUERY NO: 661 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10542, 'Pâte wasabi', 'Divers/Sauces', '', 'par 100 g de portion comestible', '1300', 308
);

/* INSERT QUERY NO: 662 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1064, 'Pâtes ALIMENTaires au blé complet', ' cuites à l''eau salée (sel non iodé)', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes ALIMENTaires', '', 0
);

/* INSERT QUERY NO: 663 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
801, 'Pâtes ALIMENTaires au blé complet', ' sèches', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes ALIMENTaires', '', 0
);

/* INSERT QUERY NO: 664 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1062, 'Pâtes ALIMENTaires aux oeufs', ' cuites à l''eau salée (sel non iodé)', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes ALIMENTaires', '', 0
);

/* INSERT QUERY NO: 665 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
799, 'Pâtes ALIMENTaires aux oeufs', ' sèches', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes ALIMENTaires', '', 0
);

/* INSERT QUERY NO: 666 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1063, 'Pâtes ALIMENTaires sans oeufs', ' cuites à l''eau salée (sel non iodé)', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes ALIMENTaires', '', 0
);

/* INSERT QUERY NO: 667 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
800, 'Pâtes ALIMENTaires sans oeufs', ' sèches', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes ALIMENTaires', '', 0
);

/* INSERT QUERY NO: 668 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13462, 'Pâtes fraiches', ' farcies à la viande', ' cuites', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes ALIMENTaires', 0
);

/* INSERT QUERY NO: 669 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13489, 'Pâtes fraîches', ' farcies aux épinards et à la ricotta', ' crues', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes ALIMENTaires', 0
);

/* INSERT QUERY NO: 670 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13498, 'Pâtes fraîches', ' farcies aux épinards et à la ricotta', ' cuites (sans adjonction de graisse ni de sel)', 'Produits céréaliers', ' légumineuses et pommes de terre/Pâtes ALIMENTaires', 0
);

/* INSERT QUERY NO: 671 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
401, 'Pêche', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 204
);

/* INSERT QUERY NO: 672 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
625, 'Pêche', ' non sucrée', ' conserve', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 673 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
624, 'Pêche', ' sucrée', ' conserve', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 674 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
852, 'Pélerines', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', '1740', 413
);

/* INSERT QUERY NO: 675 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
765, 'Perche', ' crue', 'Poisson/Poissons d''eau douce', '', 'par 100 g de portion comestible', 334
);

/* INSERT QUERY NO: 676 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
373, 'Persil', ' cru', 'Légumes/Herbes aromatiques', '', 'par 100 g de portion comestible', 245
);

/* INSERT QUERY NO: 677 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13459, 'Pesto vert', 'Divers/Sauces', '', 'par 100 g de portion comestible', '1770', 430
);

/* INSERT QUERY NO: 678 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14074, 'Petit-beurre', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', '1820', 431
);

/* INSERT QUERY NO: 679 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
884, 'Petit-beurre au chocolat', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', '2020', 482
);

/* INSERT QUERY NO: 680 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14067, 'Petit-beurre', ' complet', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', 1790
);

/* INSERT QUERY NO: 681 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1011, 'Petit-pois (conserve)', ' réchauffé (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 374
);

/* INSERT QUERY NO: 682 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
815, 'Petit-pois et carottes', ' conserve', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 281
);

/* INSERT QUERY NO: 683 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1010, 'Petit-pois', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 419
);

/* INSERT QUERY NO: 684 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
630, 'Petit-pois', ' conserve', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 366
);

/* INSERT QUERY NO: 685 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
602, 'Petit lait', ' doux', 'Lait et produits laitiers/Boissons lactées et yogourts à boire', '1', 'par 100 ml', 102
);

/* INSERT QUERY NO: 686 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
844, 'Petit pain', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1080
);

/* INSERT QUERY NO: 687 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1463, 'Petit pain ballon', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1040
);

/* INSERT QUERY NO: 688 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
842, 'Petit pain Bürli (farine mi-blanche)', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 912
);

/* INSERT QUERY NO: 689 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
822, 'Petit pain au lait', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1300
);

/* INSERT QUERY NO: 690 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14038, 'Petit pain au lait', ' avec pépites de chocolat', 'Sucreries/Autres articles de pâtisserie', '', 'par 100 g de portion comestible', 1540
);

/* INSERT QUERY NO: 691 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
832, 'Petit pain de Sils (avec sel iodé)', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1190
);

/* INSERT QUERY NO: 692 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
369, 'Petit pois', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 380
);

/* INSERT QUERY NO: 693 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1034, 'Petits-pois et carottes', ' réchauffés (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 287
);

/* INSERT QUERY NO: 694 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1659, 'Piccata d''aubergine', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 584
);

/* INSERT QUERY NO: 695 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1660, 'Piccata de céleri', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 554
);

/* INSERT QUERY NO: 696 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1662, 'Piccata de courge', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 567
);

/* INSERT QUERY NO: 697 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1661, 'Piccata de courgette', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 515
);

/* INSERT QUERY NO: 698 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1668, 'Piccata de porc', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 944
);

/* INSERT QUERY NO: 699 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1667, 'Piccata de veau', ' préparée', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 909
);

/* INSERT QUERY NO: 700 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
283, 'Pignon de pin', 'Noix', ' graines et produits oléagineux', '', 'par 100 g de portion comestible', 2840
);

/* INSERT QUERY NO: 701 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
274, 'Pistache', 'Noix', ' graines et produits oléagineux', '', 'par 100 g de portion comestible', 2460
);

/* INSERT QUERY NO: 702 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1537, 'Pizza au jambon et champignon', ' cuite au four', 'Plats/Plats italiens', '', 'par 100 g de portion comestible', 857
);

/* INSERT QUERY NO: 703 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1538, 'Pizza au jambon', ' cuite au four', 'Plats/Plats italiens', '', 'par 100 g de portion comestible', 917
);

/* INSERT QUERY NO: 704 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1536, 'Pizza au mascarpone et roquette', ' cuite au four', 'Plats/Plats italiens', '', 'par 100 g de portion comestible', 1000
);

/* INSERT QUERY NO: 705 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1532, 'Pizza au thon', ' cuite au four', 'Plats/Plats italiens', '', 'par 100 g de portion comestible', 948
);

/* INSERT QUERY NO: 706 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1540, 'Pizza aux légumes', ' cuite au four', 'Plats/Plats italiens', '', 'par 100 g de portion comestible', 523
);

/* INSERT QUERY NO: 707 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1539, 'Pizza aux quatre fromages', ' cuite au four', 'Plats/Plats italiens', '', 'par 100 g de portion comestible', 1250
);

/* INSERT QUERY NO: 708 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1533, 'Pizza Calzone', ' cuite au four', 'Plats/Plats italiens', '', 'par 100 g de portion comestible', 940
);

/* INSERT QUERY NO: 709 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1534, 'Pizza Hawaii', ' cuite au four', 'Plats/Plats italiens', '', 'par 100 g de portion comestible', 819
);

/* INSERT QUERY NO: 710 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1535, 'Pizza Margherite', ' cuite au four', 'Plats/Plats italiens', '', 'par 100 g de portion comestible', 1000
);

/* INSERT QUERY NO: 711 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
382, 'Poire', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 244
);

/* INSERT QUERY NO: 712 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1050, 'Poire', ' cuite', '  égouttée (sans adjonction de sucre)', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 713 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
626, 'Poire', ' non sucrée', ' conserve', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 714 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
433, 'Poire', ' séchée', 'Fruits/Fruits secs', '', 'par 100 g de portion comestible', 1220
);

/* INSERT QUERY NO: 715 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
620, 'Poire', ' sucrée', ' conserve', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 716 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1015, 'Poireau', ' à l''étuvée (sans adjonction de graisse ni de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 129
);

/* INSERT QUERY NO: 717 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
358, 'Poireau', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 124
);

/* INSERT QUERY NO: 718 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1059, 'Pois chiche', ' cuit (sans adjonction de graisse ni de sel)', 'Produits céréaliers', ' légumineuses et pommes de terre/Légumineuses', '', 0
);

/* INSERT QUERY NO: 719 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
439, 'Pois chiche', ' sec', 'Produits céréaliers', ' légumineuses et pommes de terre/Légumineuses', '', 0
);

/* INSERT QUERY NO: 720 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1012, 'Pois mange-tout', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 308
);

/* INSERT QUERY NO: 721 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
438, 'Pois mange-tout', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 285
);

/* INSERT QUERY NO: 722 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13390, 'Pois', ' grain mature', ' cuit (sans adjonction de graisse ni de sel)', 'Produits céréaliers', ' légumineuses et pommes de terre/Légumineuses', 0
);

/* INSERT QUERY NO: 723 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13389, 'Pois', ' grain mature', ' décortiqué', ' sec', 'Produits céréaliers', 0
);

/* INSERT QUERY NO: 724 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1098, 'Poisson (moyenne)', ' cru', 'Poisson/Poissons d''eau douce;Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 612
);

/* INSERT QUERY NO: 725 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13345, 'Poisson (moyenne)', ' filet', ' à la vapeur (sans adjonction de graisse ni de sel)', 'Poisson', '', 0
);

/* INSERT QUERY NO: 726 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1018, 'Poivron', ' rouge', ' à l''étuvée (sans adjonction de graisse ni de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 727 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
360, 'Poivron', ' rouge', ' cru', 'Légumes/Légumes frais', '', 0
);

/* INSERT QUERY NO: 728 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1017, 'Poivron', ' vert', ' à l''étuvée (sans adjonction de graisse ni de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 729 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
359, 'Poivron', ' vert', ' cru', 'Légumes/Légumes frais', '', 0
);

/* INSERT QUERY NO: 730 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10546, 'Polenta nera', ' préparée', 'Produits céréaliers', ' légumineuses et pommes de terre/Maïs', '', 0
);

/* INSERT QUERY NO: 731 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1057, 'Pomme de terre', ' épluchée', ' à la vapeur (sans adjonction de sel)', 'Produits céréaliers', ' légumineuses et pommes de terre/Pommes de terre', 0
);

/* INSERT QUERY NO: 732 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
813, 'Pomme de terre', ' épluchée', ' crue', 'Produits céréaliers', ' légumineuses et pommes de terre/Pommes de terre', 0
);

/* INSERT QUERY NO: 733 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
378, 'Pomme', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 232
);

/* INSERT QUERY NO: 734 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1049, 'Pomme', ' cuite', '  égouttée (sans adjonction de sucre)', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 735 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
435, 'Pomme', ' pelée', ' sechée', 'Fruits/Fruits secs', '', 0
);

/* INSERT QUERY NO: 736 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
12982, 'Pommes chips', 'Snacks salés/Chips', '', 'par 100 g de portion comestible', '2240', 538
);

/* INSERT QUERY NO: 737 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
12983, 'Pommes chips à matière grasse réduite', 'Snacks salés/Chips', '', 'par 100 g de portion comestible', '1960', 468
);

/* INSERT QUERY NO: 738 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10450, 'Pommes frites (cuites au four)', ' non salées', 'Produits céréaliers', ' légumineuses et pommes de terre/Pommes de terre', '', 0
);

/* INSERT QUERY NO: 739 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10449, 'Pommes frites (frites dans de l''huile de tournesol HO)', ' non salées', 'Produits céréaliers', ' légumineuses et pommes de terre/Pommes de terre', '', 0
);

/* INSERT QUERY NO: 740 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
424, 'Popcorn ', 'Snacks salés/Autres snacks salés', '', 'par 100 g de portion comestible', '1550', 367
);

/* INSERT QUERY NO: 741 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1079, 'Porc', '  épaule', ' rôtie au four bien cuit  (sans adjonction de graisse ni de sel)', 'Viande et abats/Porc', '', 0
);

/* INSERT QUERY NO: 742 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
8, 'Porc', ' côtelette', ' crue', 'Viande et abats/Porc', '', 0
);

/* INSERT QUERY NO: 743 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13283, 'Porc', ' côtelette', ' grillée (sans adjonction de graisse ni de sel)', 'Viande et abats/Porc', '', 0
);

/* INSERT QUERY NO: 744 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
41, 'Porc', ' cou', ' steak', ' cru', 'Viande et abats/Porc', 0
);

/* INSERT QUERY NO: 745 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13284, 'Porc', ' cou', ' steak', ' grillé (sans adjonction de graisse ni de sel)', 'Viande et abats/Porc', 0
);

/* INSERT QUERY NO: 746 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
40, 'Porc', ' émincé', ' cru', 'Viande et abats/Porc', '', 0
);

/* INSERT QUERY NO: 747 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13285, 'Porc', ' émincé', ' grillé (sans adjonction de graisse ni de sel)', 'Viande et abats/Porc', '', 0
);

/* INSERT QUERY NO: 748 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
676, 'Porc', ' épaule', ' rôti', ' cru', 'Viande et abats/Porc', 0
);

/* INSERT QUERY NO: 749 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1077, 'Porc', ' épaule', ' rôtie au four à point (sans adjonction de graisse ni de sel)', 'Viande et abats/Porc', '', 0
);

/* INSERT QUERY NO: 750 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
677, 'Porc', ' filet mignon', ' cru', 'Viande et abats/Porc', '', 0
);

/* INSERT QUERY NO: 751 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13269, 'Porc', ' filet mignon', ' rôti (sans adjonction de graisse ni de sel)', 'Viande et abats/Porc', '', 0
);

/* INSERT QUERY NO: 752 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
42, 'Porc', ' filet', ' cru', 'Viande et abats/Porc', '', 0
);

/* INSERT QUERY NO: 753 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
689, 'Porc', ' foie', ' cru', 'Viande et abats/Porc', '', 0
);

/* INSERT QUERY NO: 754 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
39, 'Porc', ' fricassée', ' crue', 'Viande et abats/Porc', '', 0
);

/* INSERT QUERY NO: 755 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
7, 'Porc', ' haché', ' cru', 'Viande et abats/Porc', '', 0
);

/* INSERT QUERY NO: 756 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13289, 'Porc', ' jarret', ' braisé (sans adjonction de graisse ni de sel)', 'Viande et abats/Porc', '', 0
);

/* INSERT QUERY NO: 757 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
678, 'Porc', ' jarret', ' cru', 'Viande et abats/Porc', '', 0
);

/* INSERT QUERY NO: 758 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
679, 'Porc', ' noix', ' tranche', ' crue', 'Viande et abats/Porc', 0
);

/* INSERT QUERY NO: 759 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13270, 'Porc', ' noix', ' tranche', ' grillée (sans adjonction de graisse ni de sel)', 'Viande et abats/Porc', 0
);

/* INSERT QUERY NO: 760 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
43, 'Porc', ' pièce ronde', ' tranche', ' crue', 'Viande et abats/Porc', 0
);

/* INSERT QUERY NO: 761 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
9, 'Porc', ' ragoût', ' cru', 'Viande et abats/Porc', '', 0
);

/* INSERT QUERY NO: 762 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1511, 'Porridge', ' préparé (avec du lait entier', ' sans adjonction de sucre)', 'Sucreries/Crèmes et pouding;Plats/Müesli et bouillie', '', 0
);

/* INSERT QUERY NO: 763 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1512, 'Porridge', ' préparé (avec du lait partiellement écrémé', ' sans adjonction de sucre)', 'Sucreries/Crèmes et pouding;Plats/Müesli et bouillie', '', 0
);

/* INSERT QUERY NO: 764 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1587, 'Potée à l''orge', ' cuite', 'Produits céréaliers', ' légumineuses et pommes de terre/Autres produits céréaliers', '', 0
);

/* INSERT QUERY NO: 765 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1588, 'Potée au blé', ' cuite', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 688
);

/* INSERT QUERY NO: 766 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1586, 'Potée au millet', ' cuite', 'Produits céréaliers', ' légumineuses et pommes de terre/Autres produits céréaliers', '', 0
);

/* INSERT QUERY NO: 767 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
711, 'Poulet entier', ' avec peau', ' cru', 'Viande et abats/Volaille', '', 0
);

/* INSERT QUERY NO: 768 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13310, 'Poulet', ' cuisse avec la peau', ' rôtie (sans adjonction de graisse ni de sel)', 'Viande et abats/Volaille', '', 0
);

/* INSERT QUERY NO: 769 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
24, 'Poulet', ' cuisse', ' avec peau', ' crue', 'Viande et abats/Volaille', 0
);

/* INSERT QUERY NO: 770 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
26, 'Poulet', ' cuisse', ' sans peau', ' crue', 'Viande et abats/Volaille', 0
);

/* INSERT QUERY NO: 771 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13309, 'Poulet', ' entier avec la peau', ' rôti (sans adjonction de graisse ni de sel)', 'Viande et abats/Volaille', '', 0
);

/* INSERT QUERY NO: 772 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
20, 'Poulet', ' poitrine', ' avec peau', ' crue', 'Viande et abats/Volaille', 0
);

/* INSERT QUERY NO: 773 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13276, 'Poulet', ' poitrine', ' escalope ou émincé', ' grillé (sans adjonction de graisse ni de sel)', 'Viande et abats/Volaille', 0
);

/* INSERT QUERY NO: 774 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
22, 'Poulet', ' poitrine', ' sans peau', ' crue', 'Viande et abats/Volaille', 0
);

/* INSERT QUERY NO: 775 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
466, 'Pousses de soja', ' crues', 'Légumes/Pousses et germes', '', 'par 100 g de portion comestible', 231
);

/* INSERT QUERY NO: 776 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1116, 'Produits de charcuterie à chair cuite (moyenne)', 'Produits carnés et charcuterie/Produits de charcuterie cuits', '', 'par 100 g de portion comestible', '1230', 297
);

/* INSERT QUERY NO: 777 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1112, 'Produits de charcuterie échaudés', ' fumés (moyenne)', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', 1030
);

/* INSERT QUERY NO: 778 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1113, 'Produits de charcuterie échaudés', ' non fumés (moyenne)', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', 1040
);

/* INSERT QUERY NO: 779 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1117, 'Produits de salaison crus (moyenne)', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '1140', 274
);

/* INSERT QUERY NO: 780 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1118, 'Produits de salaison cuits (moyenne)', 'Produits carnés et charcuterie/Produits de charcuterie cuits', '', 'par 100 g de portion comestible', '926', 223
);

/* INSERT QUERY NO: 781 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
474, 'Prune', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 203
);

/* INSERT QUERY NO: 782 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1054, 'Prune', ' cuite', ' égouttée (sans adjonction de sucre)', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 783 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
479, 'Pruneau', ' cru', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 182
);

/* INSERT QUERY NO: 784 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1056, 'Pruneau', ' cuit', ' égoutté (sans adjonction de sucre)', 'Fruits/Fruits cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 785 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
475, 'Pruneau', ' sec', 'Fruits/Fruits secs', '', 'par 100 g de portion comestible', 858
);

/* INSERT QUERY NO: 786 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
866, 'Purée de pommes de terre', ' préparée (avec de l''eau et du beurre)', 'Produits céréaliers', ' légumineuses et pommes de terre/Pommes de terre', '', 0
);

/* INSERT QUERY NO: 787 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1519, 'Purée de pommes de terre', ' préparée (avec de la crème et du beurre)', 'Produits céréaliers', ' légumineuses et pommes de terre/Pommes de terre', '', 0
);

/* INSERT QUERY NO: 788 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
863, 'Purée de pommes de terre', ' préparée (avec du lait entier et du beurre)', 'Produits céréaliers', ' légumineuses et pommes de terre/Pommes de terre', '', 0
);

/* INSERT QUERY NO: 789 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1518, 'Purée de pommes de terre', ' préparée (avec du lait partiellement écrémeé et du beurre)', 'Produits céréaliers', ' légumineuses et pommes de terre/Pommes de terre', '', 0
);

/* INSERT QUERY NO: 790 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1541, 'Quiche Lorraine', ' cuite au four (pâte brisée)', 'Plats/Tartes sucrées et salées et gratins', '', 'par 100 g de portion comestible', 1230
);

/* INSERT QUERY NO: 791 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1542, 'Quiche Lorraine', ' cuite au four (pâte feuilletée)', 'Plats/Tartes sucrées et salées et gratins', '', 'par 100 g de portion comestible', 1210
);

/* INSERT QUERY NO: 792 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13394, 'Quinoa', ' cru', 'Produits céréaliers', ' légumineuses et pommes de terre/Autres produits céréaliers', '', 0
);

/* INSERT QUERY NO: 793 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13396, 'Quinoa', ' cuit (sans adjonction de graisse ni de sel)', 'Produits céréaliers', ' légumineuses et pommes de terre/Autres produits céréaliers', '', 0
);

/* INSERT QUERY NO: 794 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
361, 'Radis blanc', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 76
);

/* INSERT QUERY NO: 795 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
456, 'Radis rouge', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 72
);

/* INSERT QUERY NO: 796 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1673, 'Ragoût d''agneau avec sauce', ' préparé', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 468
);

/* INSERT QUERY NO: 797 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1672, 'Ragoût de boeuf avec sauce', ' préparé', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 356
);

/* INSERT QUERY NO: 798 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1670, 'Ragoût de cheval avec sauce', ' préparé', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 370
);

/* INSERT QUERY NO: 799 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1671, 'Ragoût de porc avec sauce', ' préparé', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 437
);

/* INSERT QUERY NO: 800 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1669, 'Ragoût de veau avec sauce', ' préparé', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 353
);

/* INSERT QUERY NO: 801 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
478, 'Raisin', ' cru', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 292
);

/* INSERT QUERY NO: 802 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
477, 'Raisin', ' sec', 'Fruits/Fruits secs', '', 'par 100 g de portion comestible', 1360
);

/* INSERT QUERY NO: 803 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1665, 'Ratatouille', ' préparée', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 191
);

/* INSERT QUERY NO: 804 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
533, 'Reblochon', 'Lait et produits laitiers/Fromage à pâte molle', '', 'par 100 g de portion comestible', '1270', 307
);

/* INSERT QUERY NO: 805 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
362, 'Rhubarbe', ' crue', 'Fruits/Fruits frais', '', 'par 100 g de portion comestible', 51
);

/* INSERT QUERY NO: 806 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1585, 'Risotto aux champignons', ' cuit', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 538
);

/* INSERT QUERY NO: 807 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1584, 'Risotto sans fromage', ' cuit', 'Produits céréaliers', ' légumineuses et pommes de terre/Riz', '', 0
);

/* INSERT QUERY NO: 808 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1189, 'Ristretto crème', ' non sucré', 'Boissons sans alcool/Café', '1', 'par 100 g de portion comestible', 194
);

/* INSERT QUERY NO: 809 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1514, 'Riz au lait', ' préparé (avec du lait entier', ' sans adjonction de sucre)', 'Sucreries/Crèmes et pouding', '', 0
);

/* INSERT QUERY NO: 810 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1513, 'Riz au lait', ' préparé (avec du lait partiellement écrémé', ' sans adjonction de sucre)', 'Sucreries/Crèmes et pouding', '', 0
);

/* INSERT QUERY NO: 811 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1066, 'Riz blanc', ' cuit à l''eau salée (sel non iodé)', 'Produits céréaliers', ' légumineuses et pommes de terre/Riz', '', 0
);

/* INSERT QUERY NO: 812 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
427, 'Riz blanc', ' sec', 'Produits céréaliers', ' légumineuses et pommes de terre/Riz', '', 0
);

/* INSERT QUERY NO: 813 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1675, 'Riz Casimir au poulet', ' préparé', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 527
);

/* INSERT QUERY NO: 814 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1677, 'Riz casimir de veau', ' préparé', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 519
);

/* INSERT QUERY NO: 815 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1067, 'Riz complet', ' cuit à l''eau salée (sel non iodé)', 'Produits céréaliers', ' légumineuses et pommes de terre/Riz', '', 0
);

/* INSERT QUERY NO: 816 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
428, 'Riz complet', ' sec', 'Produits céréaliers', ' légumineuses et pommes de terre/Riz', '', 0
);

/* INSERT QUERY NO: 817 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1065, 'Riz parboiled', ' cuit à l''eau salée (sel non iodé)', 'Produits céréaliers', ' légumineuses et pommes de terre/Riz', '', 0
);

/* INSERT QUERY NO: 818 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
419, 'Riz parboiled', ' sec', 'Produits céréaliers', ' légumineuses et pommes de terre/Riz', '', 0
);

/* INSERT QUERY NO: 819 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
805, 'Rollmops ', 'Poisson/Produits à base de poisson', '', 'par 100 g de portion comestible', '1130', 270
);

/* INSERT QUERY NO: 820 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
462, 'Romarin', ' cru', 'Légumes/Herbes aromatiques', '', 'par 100 g de portion comestible', 260
);

/* INSERT QUERY NO: 821 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
484, 'Roquefort', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', '1500', 363
);

/* INSERT QUERY NO: 822 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
468, 'Roquette', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 119
);

/* INSERT QUERY NO: 823 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
858, 'Rösti (produit tout prêt', ' à rôtir)', 'Produits céréaliers', ' légumineuses et pommes de terre/Pommes de terre', '', 0
);

/* INSERT QUERY NO: 824 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1582, 'Rôti de viande hachée', ' cuit au four', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 697
);

/* INSERT QUERY NO: 825 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14061, 'Rouleau de printemps', ' frit', 'Plats/Plats asiatiques', '', 'par 100 g de portion comestible', 938
);

/* INSERT QUERY NO: 826 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
875, 'Sablé', ' au beurre', 'Sucreries/Biscuits', '', 'par 100 g de portion comestible', 1980
);

/* INSERT QUERY NO: 827 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
594, 'Saindoux', 'Graisses et huiles/Graisses', '0.9', 'par 100 g de portion comestible', '3660', 891
);

/* INSERT QUERY NO: 828 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1573, 'Salade Coleslaw', ' préparée', 'Plats/Salades', '', 'par 100 g de portion comestible', 497
);

/* INSERT QUERY NO: 829 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1697, 'Salade de boeuf bouilli', ' préparée', 'Plats/Salades', '', 'par 100 g de portion comestible', 837
);

/* INSERT QUERY NO: 830 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1569, 'Salade de cervelas et fromage', ' préparée', 'Plats/Salades', '', 'par 100 g de portion comestible', 1080
);

/* INSERT QUERY NO: 831 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1568, 'Salade de cervelas', ' préparée', 'Plats/Salades', '', 'par 100 g de portion comestible', 926
);

/* INSERT QUERY NO: 832 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1598, 'Salade de pâtes à la sauce française', 'Plats/Salades', '', 'par 100 g de portion comestible', '534', 128
);

/* INSERT QUERY NO: 833 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1597, 'Salade de pâtes à la sauce italienne', 'Plats/Salades', '', 'par 100 g de portion comestible', '545', 130
);

/* INSERT QUERY NO: 834 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1516, 'Salade de pommes de terre (sauce mayonnaise et yogourt)', 'Plats/Salades', '', 'par 100 g de portion comestible', '335', 80
);

/* INSERT QUERY NO: 835 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1517, 'Salade de pommes de terre', ' sauce au vinaigre et huile', 'Plats/Salades', '', 'par 100 g de portion comestible', 400
);

/* INSERT QUERY NO: 836 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1613, 'Salade de thon au naturel', ' sauce au vinaigre et huile', 'Plats/Salades', '', 'par 100 g de portion comestible', 456
);

/* INSERT QUERY NO: 837 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
459, 'Salade Iceberg', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 65
);

/* INSERT QUERY NO: 838 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1607, 'Salade russe', ' préparée', 'Plats/Salades', '', 'par 100 g de portion comestible', 813
);

/* INSERT QUERY NO: 839 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1127, 'Salade verte (moyenne)', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 76
);

/* INSERT QUERY NO: 840 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
783, 'Salametto', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '1420', 343
);

/* INSERT QUERY NO: 841 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1091, 'Salami', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '1520', 367
);

/* INSERT QUERY NO: 842 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1094, 'Salami (ligne budget)', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '1750', 422
);

/* INSERT QUERY NO: 843 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
784, 'Salami à la mode campagnarde', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '2200', 532
);

/* INSERT QUERY NO: 844 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1203, 'Salami fumé', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '2120', 513
);

/* INSERT QUERY NO: 845 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
782, 'Salami suisse', ' porc et boeuf', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', 2020
);

/* INSERT QUERY NO: 846 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1023, 'Salsifis noir', ' à la vapeur (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 233
);

/* INSERT QUERY NO: 847 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
452, 'Salsifis noir', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 222
);

/* INSERT QUERY NO: 848 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1089, 'Salsiz', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '1720', 415
);

/* INSERT QUERY NO: 849 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1687, 'Saltimbocca', ' grillé à l''huile de colza HOLL', 'Viande et abats/Veau', '', 'par 100 g de portion comestible', 905
);

/* INSERT QUERY NO: 850 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10561, 'Samosa', ' cuit au four', 'Plats/Plats asiatiques', '', 'par 100 g de portion comestible', 1410
);

/* INSERT QUERY NO: 851 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10562, 'Samosa', ' frit', 'Plats/Plats asiatiques', '', 'par 100 g de portion comestible', 1530
);

/* INSERT QUERY NO: 852 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1551, 'Sandwich (baguette) à la charcuterie', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '657', 157
);

/* INSERT QUERY NO: 853 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1561, 'Sandwich (baguette) à la mozzarella', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '685', 163
);

/* INSERT QUERY NO: 854 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1553, 'Sandwich (baguette) à la viande séchée', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '593', 141
);

/* INSERT QUERY NO: 855 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1559, 'Sandwich (baguette) au fromage à pâte mi-dure', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '749', 179
);

/* INSERT QUERY NO: 856 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1521, 'Sandwich (baguette) au fromage à pâte molle', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '766', 183
);

/* INSERT QUERY NO: 857 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1505, 'Sandwich (baguette) au fromage d''Italie', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '921', 220
);

/* INSERT QUERY NO: 858 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1557, 'Sandwich (baguette) au jambon', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '551', 131
);

/* INSERT QUERY NO: 859 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1549, 'Sandwich (baguette) au jambon cru', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '692', 165
);

/* INSERT QUERY NO: 860 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1555, 'Sandwich (baguette) au salami', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '662', 158
);

/* INSERT QUERY NO: 861 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1552, 'Sandwich (pain bis) à la charcuterie', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '630', 151
);

/* INSERT QUERY NO: 862 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1562, 'Sandwich (pain bis) à la mozzarella', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '653', 156
);

/* INSERT QUERY NO: 863 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1554, 'Sandwich (pain bis) à la viande séchée', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '565', 134
);

/* INSERT QUERY NO: 864 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1560, 'Sandwich (pain bis) au fromage à pâte mi-dure', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '716', 171
);

/* INSERT QUERY NO: 865 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1520, 'Sandwich (pain bis) au fromage à pâte molle', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '731', 174
);

/* INSERT QUERY NO: 866 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1506, 'Sandwich (pain bis) au fromage d''Italie', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '879', 210
);

/* INSERT QUERY NO: 867 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1558, 'Sandwich (pain bis) au jambon', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '524', 125
);

/* INSERT QUERY NO: 868 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1550, 'Sandwich (pain bis) au jambon cru', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '662', 158
);

/* INSERT QUERY NO: 869 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1556, 'Sandwich (pain bis) au salami', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '634', 151
);

/* INSERT QUERY NO: 870 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1685, 'Sandwich à l''escalope avec sauce cocktail', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '1100', 262
);

/* INSERT QUERY NO: 871 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1686, 'Sandwich à l''escalope avec sauce tartare', 'Plats/Sandwich', '', 'par 100 g de portion comestible', '1020', 242
);

/* INSERT QUERY NO: 872 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
489, 'Sanglier (moyenne)', ' cru', 'Viande et abats/Gibier', '', 'par 100 g de portion comestible', 457
);

/* INSERT QUERY NO: 873 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
413, 'Sardine à l''huile', ' égouttée', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 898
);

/* INSERT QUERY NO: 874 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
757, 'Sardine', ' crue', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 680
);

/* INSERT QUERY NO: 875 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
421, 'Sarrasin', ' grains décortiqués', 'Produits céréaliers', ' légumineuses et pommes de terre/Autres produits céréaliers', '', 0
);

/* INSERT QUERY NO: 876 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1199, 'Sauce à salade huile-vinaigre', ' faite maison (avec huile de colza)', 'Graisses et huiles/Sauces à salade', '1.1', 'par 100 ml', 1300
);

/* INSERT QUERY NO: 877 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1612, 'Sauce à salade au yogourt (sans huile)', 'Graisses et huiles/Sauces à salade', '1.1', 'par 100 ml', '280', 67
);

/* INSERT QUERY NO: 878 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1201, 'Sauce à salade française', ' faite maison (avec huile de colza)', 'Graisses et huiles/Sauces à salade', '1.1', 'par 100 ml', 1770
);

/* INSERT QUERY NO: 879 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1200, 'Sauce à salade italienne', ' faite maison (avec huile d''olive)', 'Graisses et huiles/Sauces à salade', '1.1', 'par 100 ml', 1910
);

/* INSERT QUERY NO: 880 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13503, 'Sauce à salade', ' française', 'Graisses et huiles/Sauces à salade', '', 'par 100 g de portion comestible', 1480
);

/* INSERT QUERY NO: 881 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13502, 'Sauce à salade', ' italienne', 'Graisses et huiles/Sauces à salade', '', 'par 100 g de portion comestible', 1270
);

/* INSERT QUERY NO: 882 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
683, 'Sauce aux champignons', ' liée', 'Divers/Sauces', '', 'par 100 g de portion comestible', 547
);

/* INSERT QUERY NO: 883 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
12981, 'Sauce Béchamel', ' faite maison', 'Divers/Sauces', '', 'par 100 g de portion comestible', 612
);

/* INSERT QUERY NO: 884 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
653, 'Sauce bolognaise', 'Divers/Sauces', '', 'par 100 g de portion comestible', '402', 96
);

/* INSERT QUERY NO: 885 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
652, 'Sauce chasseur', 'Divers/Sauces', '', 'par 100 g de portion comestible', '245', 58
);

/* INSERT QUERY NO: 886 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1683, 'Sauce cocktail', ' avec mayonnaise à l''huile de colza', ' faite maison', 'Divers/Sauces', '', 0
);

/* INSERT QUERY NO: 887 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
651, 'Sauce de rôti', ' claire', 'Divers/Sauces', '', 'par 100 g de portion comestible', 182
);

/* INSERT QUERY NO: 888 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
650, 'Sauce de rôti', ' liée', 'Divers/Sauces', '', 'par 100 g de portion comestible', 221
);

/* INSERT QUERY NO: 889 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
666, 'Sauce hollandaise', 'Divers/Sauces', '', 'par 100 g de portion comestible', '876', 212
);

/* INSERT QUERY NO: 890 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13447, 'Sauce pesto rouge', 'Divers/Sauces', '', 'par 100 g de portion comestible', '1640', 398
);

/* INSERT QUERY NO: 891 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13456, 'Sauce soja', 'Divers/Sauces', '1.12', 'par 100 g de portion comestible', '236', 56
);

/* INSERT QUERY NO: 892 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1684, 'Sauce tartare', ' avec mayonnaise à l''huile de colza', ' faite maison', 'Divers/Sauces', '', 0
);

/* INSERT QUERY NO: 893 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
667, 'Sauce tomate', 'Divers/Sauces', '', 'par 100 g de portion comestible', '288', 69
);

/* INSERT QUERY NO: 894 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1085, 'Saucisse à rôtir de porc', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '980', 236
);

/* INSERT QUERY NO: 895 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14089, 'Saucisse à rôtir de porc', ' grillée (sans adjonction de sel ni de graisse)', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', 1170
);

/* INSERT QUERY NO: 896 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
781, 'Saucisse aux choux', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '1490', 361
);

/* INSERT QUERY NO: 897 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
790, 'Saucisse bernoise (à la langue)', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', '1380', 333
);

/* INSERT QUERY NO: 898 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1273, 'Saucisse blanche', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', '910', 220
);

/* INSERT QUERY NO: 899 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1083, 'Saucisse de Lyon', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', '1010', 244
);

/* INSERT QUERY NO: 900 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1086, 'Saucisse de porc', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', '1110', 268
);

/* INSERT QUERY NO: 901 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1080, 'Saucisse de veau', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', '943', 228
);

/* INSERT QUERY NO: 902 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1082, 'Saucisse de Vienne', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', '1000', 242
);

/* INSERT QUERY NO: 903 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1589, 'Saucisse de Vienne', ' cuite', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', 911
);

/* INSERT QUERY NO: 904 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
789, 'Saucisse du brasseur', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', '1210', 291
);

/* INSERT QUERY NO: 905 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1087, 'Saucisse type Minipic', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '1900', 460
);

/* INSERT QUERY NO: 906 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1114, 'Saucisses crues (moyenne)', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '1890', 456
);

/* INSERT QUERY NO: 907 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1115, 'Saucisses crues avec maturation interrompue (moyenne)', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '1470', 356
);

/* INSERT QUERY NO: 908 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
780, 'Saucisson', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '1930', 467
);

/* INSERT QUERY NO: 909 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1088, 'Saucisson vaudois', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '1480', 358
);

/* INSERT QUERY NO: 910 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13341, 'Saucisson vaudois', ' cuit (sans adjonction de graisse ni de sel)', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', 2110
);

/* INSERT QUERY NO: 911 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
461, 'Sauge', ' crue', 'Légumes/Herbes aromatiques', '', 'par 100 g de portion comestible', 246
);

/* INSERT QUERY NO: 912 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
194, 'Saumon d''élevage', ' cru', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 834
);

/* INSERT QUERY NO: 913 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
193, 'Saumon fumé', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', '698', 167
);

/* INSERT QUERY NO: 914 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
210, 'Saumon sauvage', ' cru', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 760
);

/* INSERT QUERY NO: 915 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13354, 'Saumon', ' élevage', ' filet', ' à la vapeur (sans adjonction de graisse ni de sel)', 'Poisson/Poissons de mer', 0
);

/* INSERT QUERY NO: 916 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
552, 'Sbrinz', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', '1720', 415
);

/* INSERT QUERY NO: 917 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
787, 'Schüblig de campagne', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 'par 100 g de portion comestible', '2170', 524
);

/* INSERT QUERY NO: 918 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
792, 'Schüblig de Saint-Gall', 'Produits carnés et charcuterie/Produits de charcuterie bouillis', '', 'par 100 g de portion comestible', '983', 237
);

/* INSERT QUERY NO: 919 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
762, 'Sel de cuisine avec iode', 'Divers/Sel', ' épices et arômes', '', 'par 100 g de portion comestible', 0
);

/* INSERT QUERY NO: 920 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10457, 'Sel de cuisine avec iode et fluor', 'Divers/Sel', ' épices et arômes', '', 'par 100 g de portion comestible', 0
);

/* INSERT QUERY NO: 921 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
634, 'Sel de cuisine sans iode ni fluor', 'Divers/Sel', ' épices et arômes', '', 'par 100 g de portion comestible', 0
);

/* INSERT QUERY NO: 922 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14088, 'Sel', ' de l''Himalaya', 'Divers/Sel', ' épices et arômes', '', 0
);

/* INSERT QUERY NO: 923 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14087, 'Sel', ' de mer', ' fleur de sel', 'Divers/Sel', ' épices et arômes', 0
);

/* INSERT QUERY NO: 924 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14086, 'Sel', ' de mer', ' standard', ' blanc', ' sans adjonction d''iode et fluor', 0
);

/* INSERT QUERY NO: 925 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
423, 'Semoule de blé dur', ' sèche', 'Produits céréaliers', ' légumineuses et pommes de terre/Autres produits céréaliers', '', 0
);

/* INSERT QUERY NO: 926 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
425, 'Semoule de maïs (polenta)', ' sèche', 'Produits céréaliers', ' légumineuses et pommes de terre/Maïs', '', 0
);

/* INSERT QUERY NO: 927 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1619, 'Semoule de maïs', ' cuite', 'Produits céréaliers', ' légumineuses et pommes de terre/Maïs', '', 0
);

/* INSERT QUERY NO: 928 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1510, 'Semoule', ' préparée (avec du lait entier', ' sans adjonction de sucre)', 'Sucreries/Crèmes et pouding;Plats/Müesli et bouillie', '', 0
);

/* INSERT QUERY NO: 929 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1509, 'Semoule', ' préparée (avec du lait partiellement écrémé', ' sans adjonction de sucre)', 'Sucreries/Crèmes et pouding;Plats/Müesli et bouillie', '', 0
);

/* INSERT QUERY NO: 930 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
506, 'Sérac', 'Lait et produits laitiers/Fromage frais et séré', '', 'par 100 g de portion comestible', '509', 122
);

/* INSERT QUERY NO: 931 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13501, 'Séré', ' aux fruits', 'Lait et produits laitiers/Fromage frais et séré', '', 'par 100 g de portion comestible', 472
);

/* INSERT QUERY NO: 932 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
70, 'Séré', ' nature', ' à la crème', 'Lait et produits laitiers/Fromage frais et séré', '', 0
);

/* INSERT QUERY NO: 933 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
71, 'Séré', ' nature', ' maigre', 'Lait et produits laitiers/Fromage frais et séré', '', 0
);

/* INSERT QUERY NO: 934 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
571, 'Séré', ' nature', ' mi-gras', 'Lait et produits laitiers/Fromage frais et séré', '', 0
);

/* INSERT QUERY NO: 935 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
515, 'Sherry', ' 18.5 vol%', 'Boissons alcoolisées/Vin', '1', 'par 100 ml', 492
);

/* INSERT QUERY NO: 936 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
569, 'Sirop concentré', 'Boissons sans alcool/Sirop', '1.3', 'par 100 ml', '1580', 371
);

/* INSERT QUERY NO: 937 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10536, 'Sirop d''agave', 'Sucreries/Sucres et édulcorants', '', 'par 100 g de portion comestible', '1240', 293
);

/* INSERT QUERY NO: 938 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14093, 'Sirop d''érable', 'Sucreries/Sucres et édulcorants', '1.32', 'par 100 ml', '1520', 358
);

/* INSERT QUERY NO: 939 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1132, 'Sirop preparé (dilué en proportion 1:5.5)', 'Boissons sans alcool/Boissons sucrées;Boissons sans alcool/Sirop', '1', 'par 100 ml', '232', 55
);

/* INSERT QUERY NO: 940 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
499, 'Soda au cola', ' édulcoré', 'Boissons sans alcool/Boissons à teneur reduite en sucre', '1', 'par 100 ml', 1
);

/* INSERT QUERY NO: 941 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
498, 'Soda au cola', ' sucré', 'Boissons sans alcool/Boissons sucrées', '1', 'par 100 ml', 170
);

/* INSERT QUERY NO: 942 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
755, 'Sole', ' crue', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 359
);

/* INSERT QUERY NO: 943 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
769, 'Son d''avoine', 'Pains', ' flocons et céréales pour le petit-déjeuner/Flocons', ' son et germes', '', 0
);

/* INSERT QUERY NO: 944 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
431, 'Son de blé', 'Pains', ' flocons et céréales pour le petit-déjeuner/Flocons', ' son et germes', '', 0
);

/* INSERT QUERY NO: 945 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
892, 'Sorbet', ' aux fruits', 'Sucreries/Glaces à base d''eau', '0.7', 'par 100 g de portion comestible', 581
);

/* INSERT QUERY NO: 946 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
669, 'Soupe d''orge des Grisons', 'Plats/Potages et soupes', '1.1', 'par 100 g de portion comestible', '175', 42
);

/* INSERT QUERY NO: 947 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
670, 'Soupe de tomate', 'Plats/Potages et soupes', '1', 'par 100 g de portion comestible', '177', 42
);

/* INSERT QUERY NO: 948 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
684, 'Soupe goulache', 'Plats/Potages et soupes', '1.1', 'par 100 g de portion comestible', '281', 67
);

/* INSERT QUERY NO: 949 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
688, 'Soupe velouté de champignons', 'Plats/Potages et soupes', '1', 'par 100 g de portion comestible', '160', 38
);

/* INSERT QUERY NO: 950 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
570, 'St. Paulin', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', '1220', 294
);

/* INSERT QUERY NO: 951 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13453, 'Substitut de yogourt', ' à base de soja', ' aux fruits ou arômes', 'Lait et produits laitiers/Substituts du lait', '', 0
);

/* INSERT QUERY NO: 952 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13454, 'Substitut de yogourt', ' à base de soja', ' aux fruits ou arômes', ' enrichi en calcium', 'Lait et produits laitiers/Substituts du lait', 0
);

/* INSERT QUERY NO: 953 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13451, 'Substitut de yogourt', ' à base de soja', ' nature', 'Lait et produits laitiers/Substituts du lait', '', 0
);

/* INSERT QUERY NO: 954 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13452, 'Substitut de yogourt', ' à base de soja', ' nature', ' enrichi en calcium', 'Lait et produits laitiers/Substituts du lait', 0
);

/* INSERT QUERY NO: 955 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
768, 'Sucre de raisin', 'Sucreries/Sucres et édulcorants', '', 'par 100 g de portion comestible', '1700', 399
);

/* INSERT QUERY NO: 956 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
470, 'Sucre', ' blanc', 'Sucreries/Sucres et édulcorants', '', 'par 100 g de portion comestible', 1700
);

/* INSERT QUERY NO: 957 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
471, 'Sucre', ' roux', ' complet', 'Sucreries/Sucres et édulcorants', '', 0
);

/* INSERT QUERY NO: 958 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
770, 'Surimi', 'Poisson/Produits à base de poisson', '', 'par 100 g de portion comestible', '527', 125
);

/* INSERT QUERY NO: 959 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1609, 'Taboulé', ' préparé (avec Boulgour)', 'Plats/Salades', '', 'par 100 g de portion comestible', 462
);

/* INSERT QUERY NO: 960 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1610, 'Taboulé', ' préparé (avec Couscous)', 'Plats/Salades', '', 'par 100 g de portion comestible', 544
);

/* INSERT QUERY NO: 961 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1547, 'Tarte à la rhubarbe', ' cuite au four (pâte feuilletée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', '', 0
);

/* INSERT QUERY NO: 962 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1548, 'Tarte à la rhubarbe', ' faite maison', ' cuite au four (pâte brisée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 963 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1482, 'Tarte aux abricots', ' faite maison', ' cuite au four (pâte brisée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 964 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1481, 'Tarte aux abricots', ' faite maison', ' cuite au four (pâte feuilletée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 965 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1546, 'Tarte aux cerises', ' faite maison', ' cuite au four (pâte brisée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 966 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1545, 'Tarte aux cerises', ' faite maison', ' cuite au four (pâte feuilletée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 967 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10456, 'Tarte aux fruits (moyenne)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', '', 'par 100 g de portion comestible', 694
);

/* INSERT QUERY NO: 968 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10455, 'Tarte aux fruits', ' cuite au four', ' pâte brisée sucrée (moyenne)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 969 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10454, 'Tarte aux fruits', ' pâte brisée (moyenne)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', '', 0
);

/* INSERT QUERY NO: 970 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10453, 'Tarte aux fruits', ' pâte feuilletée (moyenne)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', '', 0
);

/* INSERT QUERY NO: 971 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1592, 'Tarte aux groseilles rouges', ' faite maison (avec pâte brisée sucrée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', '', 0
);

/* INSERT QUERY NO: 972 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1595, 'Tarte aux groseilles rouges', ' faite maison', ' cuite au four (pâte brisée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 973 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1593, 'Tarte aux groseilles rouges', ' faite maison', ' cuite au four (pâtes feuilletée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 974 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1485, 'Tarte aux mûres', ' faite maison (avec pâte brisée sucrée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', '', 0
);

/* INSERT QUERY NO: 975 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1596, 'Tarte aux mûres', ' faite maison', ' cuite au four (pâte brisée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 976 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1594, 'Tarte aux mûres', ' faite maison', ' cuite au four (pâte feuilletée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 977 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1484, 'Tarte aux poires', ' faite maison', ' cuite au four (pâte brisée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 978 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1483, 'Tarte aux poires', ' faite maison', ' cuite au four (pâte feuilletée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 979 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1480, 'Tarte aux pommes', ' faite maison', ' cuite au four (pâte brisée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 980 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1479, 'Tarte aux pommes', ' faite maison', ' cuite au four (pâte feuilletée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 981 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1531, 'Tarte aux pruneaux', ' faite maison', ' cuite au four (pâte brisée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 982 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1529, 'Tarte aux pruneaux', ' faite maison', ' cuite au four (pâte feuilletée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 983 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1530, 'Tarte aux prunes', ' faite maison', ' cuite au four (pâte brisée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 984 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1528, 'Tarte aux prunes', ' faite maison', ' cuite au four (pâte feuilletée)', 'Sucreries/Gâteaux', ' tourtes et cakes;Plats/Tartes sucrées et salées et gratins', 0
);

/* INSERT QUERY NO: 985 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1504, 'Tarte flambée', ' cuite au four', 'Plats/Tartes sucrées et salées et gratins', '', 'par 100 g de portion comestible', 1060
);

/* INSERT QUERY NO: 986 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
796, 'Terrine de gibier', 'Viande et abats/Gibier', '', 'par 100 g de portion comestible', '1010', 242
);

/* INSERT QUERY NO: 987 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
495, 'Tête de Moine', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', '1730', 417
);

/* INSERT QUERY NO: 988 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
804, 'Thé froid', ' sucré', 'Boissons sans alcool/Boissons sucrées;Boissons sans alcool/Thé', '1', 'par 100 g de portion comestible', 128
);

/* INSERT QUERY NO: 989 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
803, 'Thé', ' non sucré', 'Boissons sans alcool/Thé', '1', 'par 100 ml', 0
);

/* INSERT QUERY NO: 990 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
418, 'Thon à l''huile', ' égoutté', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 780
);

/* INSERT QUERY NO: 991 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
417, 'Thon au naturel', ' égoutté', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 494
);

/* INSERT QUERY NO: 992 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
756, 'Thon', ' cru', 'Poisson/Poissons de mer', '', 'par 100 g de portion comestible', 627
);

/* INSERT QUERY NO: 993 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
460, 'Thym', ' cru', 'Légumes/Herbes aromatiques', '', 'par 100 g de portion comestible', 219
);

/* INSERT QUERY NO: 994 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
557, 'Tilsit au lait cru', ' gras', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', 1560
);

/* INSERT QUERY NO: 995 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
556, 'Tilsit au lait pasteurisé', ' gras', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', 1460
);

/* INSERT QUERY NO: 996 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13437, 'Tofu', ' ferme', ' nature', 'Substituts de viande', '', 0
);

/* INSERT QUERY NO: 997 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14090, 'Tofu', ' fumé', 'Substituts de viande', '', 'par 100 g de portion comestible', 684
);

/* INSERT QUERY NO: 998 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13438, 'Tofu', ' soyeux (mou)', ' nature', 'Substituts de viande', '', 0
);

/* INSERT QUERY NO: 999 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1027, 'Tomate', ' à l''étuvée (sans adjonction de graisse ni de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 109
);

/* INSERT QUERY NO: 1000 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
348, 'Tomate', ' crue', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 89
);

/* INSERT QUERY NO: 1001 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
637, 'Tomate', ' pelée', ' conserve', 'Légumes/Légumes cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 1002 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13463, 'Tomate', ' séchée', 'Légumes/Légumes secs', '', 'par 100 g de portion comestible', 882
);

/* INSERT QUERY NO: 1003 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
615, 'Tomme', 'Lait et produits laitiers/Fromage à pâte molle', '', 'par 100 g de portion comestible', '1180', 284
);

/* INSERT QUERY NO: 1004 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13441, 'Topinambour', ' cru', 'Légumes/Légumes frais', '', 'par 100 g de portion comestible', 221
);

/* INSERT QUERY NO: 1005 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13442, 'Topinambour', ' cuit (sans adjonction de sel)', 'Légumes/Légumes cuits (conserves comprises)', '', 'par 100 g de portion comestible', 213
);

/* INSERT QUERY NO: 1006 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
882, 'Tourte au Kirsch de Zug', 'Sucreries/Gâteaux', ' tourtes et cakes', '', 'par 100 g de portion comestible', 1400
);

/* INSERT QUERY NO: 1007 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
900, 'Tourte de Linz', 'Sucreries/Gâteaux', ' tourtes et cakes', '', 'par 100 g de portion comestible', 1770
);

/* INSERT QUERY NO: 1008 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
883, 'Tourte fôret noire', 'Sucreries/Gâteaux', ' tourtes et cakes', '', 'par 100 g de portion comestible', 1030
);

/* INSERT QUERY NO: 1009 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1508, 'Tranche de semoule', ' préparée (avec du lait entier)', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 637
);

/* INSERT QUERY NO: 1010 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1507, 'Tranche de semoule', ' préparée (avec du lait partiellement écrémé)', 'Plats/Autres plats salés/épicés', '', 'par 100 g de portion comestible', 599
);

/* INSERT QUERY NO: 1011 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1658, 'Tranches d''aubergine', ' panées', ' préparées', 'Plats/Autres plats salés/épicés', '', 0
);

/* INSERT QUERY NO: 1012 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1655, 'Tranches de céléri', ' panées', ' préparées', 'Légumes/Légumes cuits (conserves comprises)', '', 0
);

/* INSERT QUERY NO: 1013 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1656, 'Tranches de courge', ' panées', ' préparées', 'Plats/Autres plats salés/épicés', '', 0
);

/* INSERT QUERY NO: 1014 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1657, 'Tranches de courgette', ' panées', ' préparées', 'Plats/Autres plats salés/épicés', '', 0
);

/* INSERT QUERY NO: 1015 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
820, 'Tresse au beurre', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 'par 100 g de portion comestible', 1370
);

/* INSERT QUERY NO: 1016 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1460, 'Tresse au beurre', ' au blé entier', 'Pains', ' flocons et céréales pour le petit-déjeuner/Pains et produits de boulangerie', '', 0
);

/* INSERT QUERY NO: 1017 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
289, 'Truite', ' crue', 'Poisson/Poissons d''eau douce', '', 'par 100 g de portion comestible', 533
);

/* INSERT QUERY NO: 1018 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13349, 'Truite', ' entière', ' bouillie (sans adjonction de graisse ni de sel)', 'Poisson/Poissons d''eau douce', '', 0
);

/* INSERT QUERY NO: 1019 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
536, 'Vacherin fribourgeois', 'Lait et produits laitiers/Fromage à pâte dure', '', 'par 100 g de portion comestible', '1540', 370
);

/* INSERT QUERY NO: 1020 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
534, 'Vacherin Mont d''Or', 'Lait et produits laitiers/Fromage à pâte molle', '', 'par 100 g de portion comestible', '1160', 279
);

/* INSERT QUERY NO: 1021 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2, 'Veau', ' côtelette', ' crue', 'Viande et abats/Veau', '', 0
);

/* INSERT QUERY NO: 1022 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13, 'Veau', ' émincé', ' cru', 'Viande et abats/Veau', '', 0
);

/* INSERT QUERY NO: 1023 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13325, 'Veau', ' émincé', ' grillé (sans adjonction de graisse ni de sel)', 'Viande et abats/Veau', '', 0
);

/* INSERT QUERY NO: 1024 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
658, 'Veau', ' épaule', ' rôti', ' cru', 'Viande et abats/Veau', 0
);

/* INSERT QUERY NO: 1025 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1073, 'Veau', ' épaule', ' rôti', ' cuit au four (sans adjonction de graisse ni de sel)', 'Viande et abats/Veau', 0
);

/* INSERT QUERY NO: 1026 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13316, 'Veau', ' escalope', ' grillée (sans adjonction de graisse ni de sel)', 'Viande et abats/Veau', '', 0
);

/* INSERT QUERY NO: 1027 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
660, 'Veau', ' filet', ' cru', 'Viande et abats/Veau', '', 0
);

/* INSERT QUERY NO: 1028 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
3, 'Veau', ' filet', ' steak', ' cru', 'Viande et abats/Veau', 0
);

/* INSERT QUERY NO: 1029 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13324, 'Veau', ' filet', ' steak', ' grillé (sans adjonction de graisse ni sel)', 'Viande et abats/Veau', 0
);

/* INSERT QUERY NO: 1030 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10, 'Veau', ' foie', ' cru', 'Viande et abats/Veau', '', 0
);

/* INSERT QUERY NO: 1031 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
11, 'Veau', ' haché', ' cru', 'Viande et abats/Veau', '', 0
);

/* INSERT QUERY NO: 1032 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13377, 'Veau', ' jarret', ' braisé (sans adjonction de graisse ni de sel)', 'Viande et abats/Veau', '', 0
);

/* INSERT QUERY NO: 1033 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
661, 'Veau', ' jarret', ' cru', 'Viande et abats/Veau', '', 0
);

/* INSERT QUERY NO: 1034 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
674, 'Veau', ' langue', ' crue', 'Viande et abats/Veau', '', 0
);

/* INSERT QUERY NO: 1035 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
662, 'Veau', ' noix', ' escalope', ' crue', 'Viande et abats/Veau', 0
);

/* INSERT QUERY NO: 1036 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
14, 'Veau', ' pièce ronde', ' tranche', ' crue', 'Viande et abats/Veau', 0
);

/* INSERT QUERY NO: 1037 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1, 'Veau', ' poitrine', ' crue', 'Viande et abats/Veau', '', 0
);

/* INSERT QUERY NO: 1038 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1071, 'Veau', ' poitrine', ' cuite (sans adjonction de graisse ni de sel)', 'Viande et abats/Veau', '', 0
);

/* INSERT QUERY NO: 1039 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
15, 'Veau', ' ragoût', ' cru', 'Viande et abats/Veau', '', 0
);

/* INSERT QUERY NO: 1040 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
672, 'Veau', ' ris', ' cru', 'Viande et abats/Veau', '', 0
);

/* INSERT QUERY NO: 1041 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
673, 'Veau', ' rognon', ' cru', 'Viande et abats/Veau', '', 0
);

/* INSERT QUERY NO: 1042 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
514, 'Vermouth', ' 15 vol% (p.e. Martini)', 'Boissons alcoolisées/Vin', '1', 'par 100 ml', 582
);

/* INSERT QUERY NO: 1043 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1111, 'Viande (moyenne sans abats)', ' crue', 'Viande et abats/Veau;Viande et abats/Bœuf;Viande et abats/Porc;Viande et abats/Agneau', ' mouton;Viande et abats/Volaille;Viande et abats/Gibier', '', 0
);

/* INSERT QUERY NO: 1044 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1103, 'Viande de bœuf (moyenne sans abats ni côte)', ' crue', 'Viande et abats/Bœuf', '', 'par 100 g de portion comestible', 565
);

/* INSERT QUERY NO: 1045 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1102, 'Viande de porc (moyenne sans abats ni côtelette ni pied)', ' crue', 'Viande et abats/Porc', '', 'par 100 g de portion comestible', 671
);

/* INSERT QUERY NO: 1046 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1106, 'Viande de veau (moyenne sans abats ni côtelette)', ' crue', 'Viande et abats/Veau', '', 'par 100 g de portion comestible', 536
);

/* INSERT QUERY NO: 1047 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1100, 'Viande de volaille (moyenne sans abats)', ' crue', 'Viande et abats/Volaille', '', 'par 100 g de portion comestible', 563
);

/* INSERT QUERY NO: 1048 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1109, 'Viande de volaille avec peau (moyenne)', ' crue', 'Viande et abats/Volaille', '', 'par 100 g de portion comestible', 673
);

/* INSERT QUERY NO: 1049 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1108, 'Viande de volaille sans peau (moyenne sans abats)', ' crue', 'Viande et abats/Volaille', '', 'par 100 g de portion comestible', 480
);

/* INSERT QUERY NO: 1050 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1104, 'Viande émincée (moyenne de veau', ' boeuf', ' porc', ' volaille)', ' crue', 0
);

/* INSERT QUERY NO: 1051 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13317, 'Viande hachée (moyenne boeuf', ' veau', ' porc', ' poulet)', ' grillée (sans adjonction de graisse ni de sel)', 0
);

/* INSERT QUERY NO: 1052 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1105, 'Viande hachée (moyenne de veau', ' boeuf', ' porc', ' poulet)', ' crue', 0
);

/* INSERT QUERY NO: 1053 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
709, 'Viande séchée (des Grisons', ' du Tessin', ' du Valais)', 'Produits carnés et charcuterie/Produits de charcuterie crus', '', 0
);

/* INSERT QUERY NO: 1054 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10478, 'Vin blanc dilué avec de l''eau gazeuse', 'Boissons alcoolisées/Vin', '1', 'par 100 ml', '148', 36
);

/* INSERT QUERY NO: 1055 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10479, 'Vin blanc dilué avec de la limonade', 'Boissons alcoolisées/Vin', '1', 'par 100 ml', '228', 55
);

/* INSERT QUERY NO: 1056 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
551, 'Vin blanc mousseux (p.ex. Champagne)', 'Boissons alcoolisées/Vin', '1', 'par 100 ml', '293', 71
);

/* INSERT QUERY NO: 1057 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
510, 'Vin blanc', ' 11 vol%', 'Boissons alcoolisées/Vin', '1', 'par 100 ml', 291
);

/* INSERT QUERY NO: 1058 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
511, 'Vin blanc', ' 12.5 vol%', 'Boissons alcoolisées/Vin', '1', 'par 100 ml', 295
);

/* INSERT QUERY NO: 1059 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
516, 'Vin de Porto', ' 18.5 vol%', 'Boissons alcoolisées/Vin', '1', 'par 100 ml', 636
);

/* INSERT QUERY NO: 1060 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
509, 'Vin rouge', ' 12 vol%', 'Boissons alcoolisées/Vin', '1', 'par 100 ml', 287
);

/* INSERT QUERY NO: 1061 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10477, 'Vin rouge', ' 13.5 vol%', 'Boissons alcoolisées/Vin', '1', 'par 100 ml', 314
);

/* INSERT QUERY NO: 1062 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
508, 'Vin rouge', ' 9 vol%', 'Boissons alcoolisées/Vin', '1', 'par 100 ml', 224
);

/* INSERT QUERY NO: 1063 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1693, 'Vinaigre', 'Divers/Sel', ' épices et arômes', '1.0056', 'par 100 ml', 93
);

/* INSERT QUERY NO: 1064 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13455, 'Vinaigre balsamique', 'Divers/Sel', ' épices et arômes', '', 'par 100 g de portion comestible', 544
);

/* INSERT QUERY NO: 1065 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1202, 'Vinaigrette (avec huile de colza)', 'Graisses et huiles/Sauces à salade', '1.1', 'par 100 ml', '1050', 255
);

/* INSERT QUERY NO: 1066 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1680, 'Vitello tonnato avec garniture', 'Viande et abats/Veau', '', 'par 100 g de portion comestible', '719', 172
);

/* INSERT QUERY NO: 1067 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1679, 'Vitello tonnato sans garniture', 'Viande et abats/Veau', '', 'par 100 g de portion comestible', '828', 198
);

/* INSERT QUERY NO: 1068 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
56, 'Yogourt à la vanille', 'Lait et produits laitiers/Yogourt et lait acidulé', '1.1', 'par 100 g de portion comestible', '413', 98
);

/* INSERT QUERY NO: 1069 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
57, 'Yogourt au café', 'Lait et produits laitiers/Yogourt et lait acidulé', '1.1', 'par 100 g de portion comestible', '417', 99
);

/* INSERT QUERY NO: 1070 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
99, 'Yogourt au café', ' bio', 'Lait et produits laitiers/Yogourt et lait acidulé', '1.1', 'par 100 g de portion comestible', 401
);

/* INSERT QUERY NO: 1071 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
54, 'Yogourt au chocolat', 'Lait et produits laitiers/Yogourt et lait acidulé', '1.1', 'par 100 g de portion comestible', '505', 120
);

/* INSERT QUERY NO: 1072 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
53, 'Yogourt aux fraises', 'Lait et produits laitiers/Yogourt et lait acidulé', '1.1', 'par 100 g de portion comestible', '424', 101
);

/* INSERT QUERY NO: 1073 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
55, 'Yogourt aux noisettes', 'Lait et produits laitiers/Yogourt et lait acidulé', '1.1', 'par 100 g de portion comestible', '497', 119
);

/* INSERT QUERY NO: 1074 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
58, 'Yogourt bifidus', ' nature', 'Lait et produits laitiers/Yogourt et lait acidulé', '', 'par 100 g de portion comestible', 276
);

/* INSERT QUERY NO: 1075 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
588, 'Yogourt maigre aux fruits', ' édulcoré', 'Lait et produits laitiers/Yogourt et lait acidulé', '1.1', 'par 100 g de portion comestible', 206
);

/* INSERT QUERY NO: 1076 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
590, 'Yogourt maigre avec arômes', ' édulcoré', 'Lait et produits laitiers/Yogourt et lait acidulé', '1.1', 'par 100 g de portion comestible', 198
);

/* INSERT QUERY NO: 1077 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1192, 'Yogourt sucré (moyenne)', 'Lait et produits laitiers/Yogourt et lait acidulé', '1.1', 'par 100 g de portion comestible', '443', 105
);

/* INSERT QUERY NO: 1078 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
52, 'Yogourt', ' nature', 'Lait et produits laitiers/Yogourt et lait acidulé', '1.1', 'par 100 g de portion comestible', 277
);

/* INSERT QUERY NO: 1079 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
587, 'Yogourt', ' nature', ' maigre', 'Lait et produits laitiers/Yogourt et lait acidulé', '1.1', 0
);

/* INSERT QUERY NO: 1080 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
759, 'Zampone', 'Viande et abats/Porc', '', 'par 100 g de portion comestible', '1490', 361
);

/* INSERT QUERY NO: 1081 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
0, '', '', '', '', '', 0
);

/* INSERT QUERY NO: 1082 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
0, '', '', '', '', '', 0
);

/* INSERT QUERY NO: 1083 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
0, 'ID V 4.0', 'ID SwissFIR', 'Nom', 'Synonymes', 'Catégorie', 0
);

/* INSERT QUERY NO: 1084 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1251, '', '', 'Aberlour 10 years old Malt Scotch Whisky (43 vol%)', '', 'Boissons alcoolisées/Spiritueux', 0.9
);

/* INSERT QUERY NO: 1085 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1252, '', '', 'Absolut Vodka (40 vol%)', '', 'Boissons alcoolisées/Spiritueux', 0.9
);

/* INSERT QUERY NO: 1086 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1253, '', '', 'Amaro Ramazzotti (30 vol%)', '', 'Boissons alcoolisées/Autres boissons alcoolisées', 1.1
);

/* INSERT QUERY NO: 1087 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1254, '', '', 'Ballantine''s 12 years old blended Scotch Whisky (40 vol%)', '', 'Boissons alcoolisées/Spiritueux', 0.9
);

/* INSERT QUERY NO: 1088 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1255, '', '', 'Ballantine''s Finest blended Scotch Whisky (40 vol%)', '', 'Boissons alcoolisées/Spiritueux', 0.9
);

/* INSERT QUERY NO: 1089 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13428, '', '', 'Boisson d''amande', ' nature (Moyenne de produits du commerce)', '', 0
);

/* INSERT QUERY NO: 1090 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13433, '', '', 'Boisson d''amande', ' nature', ' enrichie en calcium et vitamines (Moyenne de produits du commerce)', 0
);

/* INSERT QUERY NO: 1091 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13426, '', '', 'Boisson d''avoine', ' nature (Moyenne de produits du commerce)', '', 0
);

/* INSERT QUERY NO: 1092 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13430, '', '', 'Boisson d''avoine', ' nature', ' enrichie en calcium (Moyenne de produits du commerce)', 0
);

/* INSERT QUERY NO: 1093 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13429, '', '', 'Boisson de riz', ' nature', ' enrichie en calcium (Moyenne de produits du commerce)', 0
);

/* INSERT QUERY NO: 1094 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13431, '', '', 'Boisson de soja', ' nature', ' enrichie en calcium (Moyenne de produits du commerce)', 0
);

/* INSERT QUERY NO: 1095 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13432, '', '', 'Boisson de soja', ' nature', ' enrichie en calcium et vitamines (Moyenne de produits du commerce)', 0
);

/* INSERT QUERY NO: 1096 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1145, '4060', '', 'Calanda Lager (4.8 vol%)', '', 'Boissons alcoolisées/Bière', 1
);

/* INSERT QUERY NO: 1097 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1146, '3687', '', 'Calanda Lemon (2.4 vol%)', '', 'Boissons alcoolisées/Bière', 1
);

/* INSERT QUERY NO: 1098 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1138, '3689', '', 'Cardinal Lager (4.8 vol%)', '', 'Boissons alcoolisées/Bière', 1
);

/* INSERT QUERY NO: 1099 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1155, '3562', '', 'Cardinal sans alcool (<0.5 vol%)', '', 'Boissons alcoolisées/Bière', 1
);

/* INSERT QUERY NO: 1100 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1139, '3688', '', 'Carlsberg (bière lager', ' 5 vol%)', '', 0
);

/* INSERT QUERY NO: 1101 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1156, '3587', '', 'Carlsberg sans alcool (<0.5 vol%)', '', 'Boissons alcoolisées/Bière', 1
);

/* INSERT QUERY NO: 1102 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1256, '', '', 'Chivas Regal 12 years old blended Scotch Whisky (40 vol%)', '', 'Boissons alcoolisées/Spiritueux', 0.9
);

/* INSERT QUERY NO: 1103 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1153, '4084', '', 'Clausthaler Classic (0.45 vol%)', '', 'Boissons alcoolisées/Bière', 1
);

/* INSERT QUERY NO: 1104 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1154, '4108', '', 'Clausthaler Extra Herb (0.45 vol%)', '', 'Boissons alcoolisées/Bière', 1
);

/* INSERT QUERY NO: 1105 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
538, '4276', '1001058', 'Eau minérale Adelbodner', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1106 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1171, '4623', '', 'Eau minérale Adello', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1107 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
540, '4634', '1001060', 'Eau minérale Allegra', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1108 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1096, '3929', '', 'Eau minérale Appenzell (Gontenbad)', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1109 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
73, '3968', '821054', 'Eau minérale Aproz (Aproz)', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1110 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
104, '4024', '822055', 'Eau minérale Aquella (Bouillets)', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1111 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
541, '4001', '1001061', 'Eau minérale Arkina', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1112 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1178, '4663', '', 'Eau minérale Badoit (St Galmier)', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1113 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1172, '4622', '', 'Eau minérale Cristallo (Lostorf)', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1114 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1046, '3558', '', 'Eau minérale Cristalp (Saxon)', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1115 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1044, '4237', '', 'Eau minérale Elmer', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1116 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
48, '4659', '821020', 'Eau minérale Eptinger', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1117 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
521, '4635', '1001029', 'Eau minérale Evian (Cachat)', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1118 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
522, '4003', '1001030', 'Eau minérale Henniez', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1119 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1173, '4624', '', 'Eau minérale Knutwiler', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1120 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
523, '4636', '1001032', 'Eau minérale Passugger (Theophilquelle)', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1121 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
537, '4044', '1001057', 'Eau minérale Rhäzünser', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1122 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
525, '4004', '1001035', 'Eau minérale San Pellegrino', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1123 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1095, '3612', '', 'Eau minérale Valais (Montis)', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1124 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
45, '3581', '821008', 'Eau minérale Valser Classic/Naturelle (St. Petersquelle)', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1125 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1047, '3763', '', 'Eau minérale Valser Silence (St. Paulsquelle)', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1126 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1179, '4664', '', 'Eau minérale Vichy-Célestins', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1127 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
550, '3939', '1001070', 'Eau minérale Volvic', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1128 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
548, '3940', '1001067', 'Eau minérale Zurzacher', '', 'Boissons sans alcool/Eau minérale', 1
);

/* INSERT QUERY NO: 1129 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1147, '4088', '', 'Eichhof Hubertus (bière spéciale brune', ' 6 vol%)', '', 0
);

/* INSERT QUERY NO: 1130 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1148, '4086', '', 'Eichhof Klosterbräu (biere spéciale Zwickel non filtrée', ' 5.1 vol%)', '', 0
);

/* INSERT QUERY NO: 1131 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1149, '4087', '', 'Eichhof Lager (4.8 vol%)', '', 'Boissons alcoolisées/Bière', 1
);

/* INSERT QUERY NO: 1132 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1157, '3692', '', 'Eichhof sans alcool (0.4 vol%)', '', 'Boissons alcoolisées/Bière', 1
);

/* INSERT QUERY NO: 1133 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13436, '', '', 'Energy drink', ' avec édulcorants (Moyenne de produits du commerce)', '', 0
);

/* INSERT QUERY NO: 1134 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1140, '4063', '', 'Feldschlösschen 2.4 (bière légère', ' 2.4 vol%)', '', 0
);

/* INSERT QUERY NO: 1135 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1141, '4062', '', 'Feldschlösschen Bügel (bière lager', ' 4.8 vol%)', '', 0
);

/* INSERT QUERY NO: 1136 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1142, '4089', '', 'Feldschlösschen Hopfenperle (bière spéciale blonde', ' 5.2 vol%)', '', 0
);

/* INSERT QUERY NO: 1137 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1143, '4061', '', 'Feldschlösschen Original (bière lager', ' 4.8 vol%)', '', 0
);

/* INSERT QUERY NO: 1138 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1158, '3586', '', 'Feldschlösschen sans alcool (<0.5 vol%)', '', 'Boissons alcoolisées/Bière', 1
);

/* INSERT QUERY NO: 1139 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1144, '4059', '', 'Feldschlösschen Urtrüb (bière aux trois céréales non filtrée', ' 5 vol%)', '', 0
);

/* INSERT QUERY NO: 1140 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1257, '', '', 'Four Roses Bourbon (40 vol%)', '', 'Boissons alcoolisées/Spiritueux', 0.9
);

/* INSERT QUERY NO: 1141 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1258, '', '', 'Glenlivet 12 years old Malt Scotch Whisky (40 vol%)', '', 'Boissons alcoolisées/Spiritueux', 0.9
);

/* INSERT QUERY NO: 1142 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1259, '', '', 'Grappa Fior di Vite Ramazzotti (40 vol%)', '', 'Boissons alcoolisées/Spiritueux', 0.9
);

/* INSERT QUERY NO: 1143 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1260, '', '', 'Havana Club Anejo Reserva (40 vol%)', '', 'Boissons alcoolisées/Spiritueux', 0.9
);

/* INSERT QUERY NO: 1144 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1150, '4085', '', 'Heineken Lager (5 vol%)', '', 'Boissons alcoolisées/Bière', 1
);

/* INSERT QUERY NO: 1145 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1151, '3563', '', 'Ittinger (bière spéciale ambre', ' 5.6 vol%)', '', 0
);

/* INSERT QUERY NO: 1146 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1261, '', '', 'Jameson Irish Whiskey (40 vol%)', '', 'Boissons alcoolisées/Spiritueux', 0.9
);

/* INSERT QUERY NO: 1147 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1262, '', '', 'Malibu Coconut (21 vol%)', '', 'Boissons alcoolisées/Autres boissons alcoolisées', 1.052
);

/* INSERT QUERY NO: 1148 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
11525, '', '', 'Naturaplan Bio Bière non filtrée sans alcool <0.5 vol% (Coop)', '', 'Boissons alcoolisées/Bière', 1
);

/* INSERT QUERY NO: 1149 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1263, '', '', 'Pastis 51 de Marseille (45 vol%)', '', 'Boissons alcoolisées/Autres boissons alcoolisées', 0.947
);

/* INSERT QUERY NO: 1150 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1264, '', '', 'Sandeman Ruby Porto (20 vol%)', '', 'Boissons alcoolisées/Vin', 1.0202
);

/* INSERT QUERY NO: 1151 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13424, '', '', 'Sauce Worcester (Moyenne de produits du commerce)', '', 'Divers/Sauces', 1
);

/* INSERT QUERY NO: 1152 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13421, '', '', 'Sucre vanillé (Moyenne de produits du commerce)', '', 'Sucreries/Sucres et édulcorants', 0
);

/* INSERT QUERY NO: 1153 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1265, '', '', 'Suze (20 vol%)', '', 'Boissons alcoolisées/Autres boissons alcoolisées', 1.036
);

/* INSERT QUERY NO: 1154 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1266, '', '', 'Wodka Wyborowa (40 vol%)', '', 'Boissons alcoolisées/Spiritueux', 0.9
);

/* INSERT QUERY NO: 1155 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13425, '', '', 'Yogourt', ' à la grecque', ' avec crème', 0
);

/* INSERT QUERY NO: 1156 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
0, '', '', '', '', '', 0
);

/* INSERT QUERY NO: 1157 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
0, '', '', '', '', '', 0
);

/* INSERT QUERY NO: 1158 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
0, 'Sources', '', '', '', '', 0
);

/* INSERT QUERY NO: 1159 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2, 'Aargauer Zentralmolkerei AG', ' Suhr', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1160 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
3, 'Agroscope Liebefeld-Posieux', ' Liebefeld', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1161 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
5, 'Banca dati di composizione degli ALIMENTi per studi epidemiologici in Italia', '', '', '', '', 0
);

/* INSERT QUERY NO: 1162 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
7, 'Bischofszell Nahrungsmittel AG', ' Bischofszell', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1163 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
8, 'Bundeslebensmittelschlüssel', ' BLS II.3.1', ' Karlsruhe', ' Deutschland', '', 0
);

/* INSERT QUERY NO: 1164 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
9, 'Bundeslebensmittelschlüssel', ' Karlsruhe', ' Deutschland', '', '', 0
);

/* INSERT QUERY NO: 1165 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
10, 'Canadian Nutrient File', ' version 2005. http://webprod.hc-sc.gc.ca/cnf-fce/start-debuter.do?lang=eng', '', '', '', 0
);

/* INSERT QUERY NO: 1166 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
12, 'Coop Schweiz', ' Zentrallabor', ' Pratteln', ' Schweiz', '', 0
);

/* INSERT QUERY NO: 1167 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
13, 'Danish food composition table', '', '', '', '', 0
);

/* INSERT QUERY NO: 1168 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
16, 'Emmi Schweiz AG', ' Emmen', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1169 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
17, 'Feldschlösschen Getränke AG', ' Rheinfelden', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1170 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
18, 'Haco AG', ' Gümlingen', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1171 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
22, 'Institut für Lebensmittel- und Ernährungswissenschaften', ' ETH Zürich', ' Schweiz 1', '', '', 0
);

/* INSERT QUERY NO: 1172 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
23, 'Institut für Lebensmittel- und Ernährungswissenschaften', ' ETH Zürich', ' Schweiz 2', '', '', 0
);

/* INSERT QUERY NO: 1173 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
24, 'Institut für Nutztierwissenschaften', ' ETH Zürich', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1174 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
25, 'Institute of Nutrition', ' Nakorn Pathom', ' Thailand', '', '', 0
);

/* INSERT QUERY NO: 1175 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
28, 'Kantonales Labor Zürich', ' Schweiz', '', '', '', 0
);

/* INSERT QUERY NO: 1176 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
31, 'Midor AG', ' Meilen', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1177 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
32, 'Mifa AG', ' Frenkendorf', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1178 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
34, 'Møller et al. Danish Food Composition Databank', ' revision 6.0. Food Informatics', ' Department of Nutrition', ' Danish Institute for Food and Veterinary Research. June 2005. www.foodcomp.dk/', '', 0
);

/* INSERT QUERY NO: 1179 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
35, 'Nährwerttabellen für Milch und Milchprodukte', ' Renner & Renz-Schauen', ' Giessen', ' Deutschland', '', 0
);

/* INSERT QUERY NO: 1180 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
36, 'Nährwerttabellen', ' Souci Fachmann Kraut', ' Garching', ' Deutschland', '', 0
);

/* INSERT QUERY NO: 1181 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
37, 'Nestlé Suisse SA', ' Hirzel', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1182 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
38, 'Nestlé Suisse SA', ' Vevey', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1183 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
41, 'Nutrilait SA', ' Plan les Ouates', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1184 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
43, 'Répértoire général des ALIMENTs', ' Paris', ' Frankreich', '', '', 0
);

/* INSERT QUERY NO: 1185 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
44, 'Rivella AG', ' Rothrist', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1186 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
46, 'Schokoladefabriken Lindt & Sprüngli AG', ' Produktinformationen Schokolade', ' Kilchberg', ' Schweiz', ' 2008.', 0
);

/* INSERT QUERY NO: 1187 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
47, 'Schweizerisches Vitamininstitut', ' Basel', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1188 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
49, 'Swiss Mill', ' Zürich', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1189 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
50, 'Swiss Quality Testing Services SQTS', ' Dietikon', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1190 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
51, 'SwissFIR', ' DAGRL', ' ETH Zürich', ' Schweiz', '', 0
);

/* INSERT QUERY NO: 1191 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
53, 'The composition of foods', ' McCance & Widdowson', '', '', '', 0
);

/* INSERT QUERY NO: 1192 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
54, 'UFAG Laboratorien AG', ' Sursee', ' Schweiz', '', '', 0
);

/* INSERT QUERY NO: 1193 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
56, 'USDA National Nutrient Database for Standard Reference', ' Release 16', ' Beltsville', ' USA', '', 0
);

/* INSERT QUERY NO: 1194 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
57, 'USDA National Nutrient Database for Standard Reference', ' Release 19', ' Beltsville', ' USA. www.nal.usda.gov/fnic/foodcomp/search/', '', 0
);

/* INSERT QUERY NO: 1195 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
61, 'AFSSA/CIQUAL French food composition table version 2008. www.afssa.fr/TableCIQUAL/', '', '', '', '', 0
);

/* INSERT QUERY NO: 1196 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
65, 'Banca Dati di Composizione degli ALIMENTi INRAN', ' 2007. www.inran.it/646/tabelle_di_composizione_degli_ALIMENTi.html', '', '', '', 0
);

/* INSERT QUERY NO: 1197 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
66, 'Barros et al. Chemical Composition and Biological Properties of Portuguese Wild Mushrooms: A Comprehensive Study. J. Agric. Food Chem. 56(10):3856-3862', ' 2008.', '', '', '', 0
);

/* INSERT QUERY NO: 1198 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
67, 'Borges et al. Nutritional quality of chestnut  (Castanea sativa Mill.) cultivars from Portugal. Food Chemistry 106:976-984', ' 2008.', '', '', '', 0
);

/* INSERT QUERY NO: 1199 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
69, 'Bureau et al. HPLC Determination of Carotenoids in Fruits and Vegetables in the United States. Journal of Food Science 51: 128-130', ' 1986.', '', '', '', 0
);

/* INSERT QUERY NO: 1200 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
71, 'Cabrera et al. Mineral content in legumes and nuts: contribution to the Spanish dietary intake. The science of the Total Enviroment 308:1-14', ' 2003.', '', '', '', 0
);

/* INSERT QUERY NO: 1201 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
72, 'Cardozo', ' Li. Total Dietary Fiber Content of Selected Nuts by Two Enzymatic-Gravimetric Methods. Journal of Food Composition and Analysis 7: 37-43', ' 1994.', '', '', 0
);

/* INSERT QUERY NO: 1202 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
74, 'De Oliveira', ' Rodriguez-Amaya. Processed and prepared corn products as sources of lutein and zeaxanthin: compositional variation in the food chain. J.Food Sci. 72(1):S79-S85', ' 2007.', '', '', 0
);

/* INSERT QUERY NO: 1203 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
75, 'Dias et al. Carotenoids in traditional Portuguese fruits and vegetables. Food Chemistry 113:808-815', ' 2009.', '', '', '', 0
);

/* INSERT QUERY NO: 1204 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
78, 'EL-Qudah. Identification and Quantification of Major Carotenoids in Some Vegetables. American Journal of Applied Sciences 6:492-497', ' 2009.', '', '', '', 0
);

/* INSERT QUERY NO: 1205 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
79, 'Elleuch et al. Quality characteristics of sesame seeds and by-products. Food Chemistry 103:641-650', ' 2007.', '', '', '', 0
);

/* INSERT QUERY NO: 1206 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
81, 'Food Composition Database for Epidemiological Studies in Italy by Gnagnarella P', ' Salvini S', ' Parpinel M. Version 1.2008', ' www.ieo.it/bda', '', 0
);

/* INSERT QUERY NO: 1207 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
83, 'Gambelli et al. Constituents of nutritional relevance in fermented milk products in Italy. Food Chemistry 66', ' 353-359', ' 1999.', '', '', 0
);

/* INSERT QUERY NO: 1208 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
84, 'Garcia-Linares et al. Microbiological and nutritional quality of sous vide or traditionally processed fish: Influence of fat content. J.Food Qual. 27(5):371-387', ' 2004.', '', '', '', 0
);

/* INSERT QUERY NO: 1209 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
85, 'Gardner et al. The relative contributions of vitamin C', ' carotenoids and phenolics to the antioxidant potential of fruit juices. Food Chemistry 68:471-474', ' 2000.', '', '', 0
);

/* INSERT QUERY NO: 1210 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
87, 'Granado et al. Carotenoid composition in raw and cooked Spanish vegetables. Journal of Agriculture and Food Chemistry 40:2135-2140', ' 1992.', '', '', '', 0
);

/* INSERT QUERY NO: 1211 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
88, 'Haldimann et al. Iodine content of food groups. Journal of Food Composition and Analysis 18:461-471', ' 2005.', '', '', '', 0
);

/* INSERT QUERY NO: 1212 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
89, 'Hart et al. Development and evaluation of an HPLC method for the analysis of carotenoids in foods', ' measurement of carotenoid content of vegetables and fruits consumed in UK. Food Chemistry 54:101-111', ' 1995.', '', '', 0
);

/* INSERT QUERY NO: 1213 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
90, 'Heinonen et al. Carotenoids in Finnish foods: vegetables', ' fruits', ' and berries. Journal of Food Composition and Analysis 37:655-659', ' 1989. ', '', 0
);

/* INSERT QUERY NO: 1214 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
91, 'Heinonen et al. Carotenoids and retinoids in Finnish foods: cereal and bakery products. Cereal Chem. 66(4):270-273', ' 1989.', '', '', '', 0
);

/* INSERT QUERY NO: 1215 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
92, 'Heinonen et al. Carotenoids and retinoids in Finnish foods: dietary fats. J.Food Compos.Anal. 1(4):334-340', ' 1988.', '', '', '', 0
);

/* INSERT QUERY NO: 1216 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
94, 'Högberg et al. Muscle lipids', ' vitamins E and A', ' and lipid oxidation as affected by diet and RN genotype in female and castrated male Hampshire crossbreed pigs. Meat Science 60 (4):411-420', ' 2002.', '', 0
);

/* INSERT QUERY NO: 1217 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
95, 'Holden et al. Carotenoid Content of U.S. Foods: An Update of the Database. Journal of Food Composition and Analysis 12:169-199', ' 1999. ', '', '', '', 0
);

/* INSERT QUERY NO: 1218 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
96, 'Homnava et al. Provitamin A Activity of Specialty Fruit Marketed in the United States. Journal of Food Composition and Analysis 3:119-133', ' 1990.', '', '', '', 0
);

/* INSERT QUERY NO: 1219 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
97, 'Hoppner et al. Total Folate', ' Pantothenic Acid and Biotin Content of Yogurt Products', ' Can. Inst. Sci. Technol. J. ', ' 23: 223-225', ' 1990', 0
);

/* INSERT QUERY NO: 1220 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
98, 'Hulshof et al. Variation in retinol and carotenoid content of milk and milk products in The Netherlands. Journal of Food Composition and Analysis 19:67-75', ' 2006.', '', '', '', 0
);

/* INSERT QUERY NO: 1221 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
99, 'Kandlakunta et al. Carotene content of some common (cereals', ' pulses', ' vegetables', ' spices and condiments) and unconventional sources of plant origin. Food Chem. 106(1):85-89', ' 2008.', 0
);

/* INSERT QUERY NO: 1222 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
100, 'Kessler', ' Morel. Vitamin A Konzentration in Kalbslebern: Eine Praxiserhebung. Agrarforschung 5 (5):225-227', ' 1998.', '', '', 0
);

/* INSERT QUERY NO: 1223 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
102, 'Köksal et al. Nutrient composition of hazelnut (Corylus avellana L.) varieties cultivated in Turkey. Food Chemistry 99:509-515', ' 2006.', '', '', '', 0
);

/* INSERT QUERY NO: 1224 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
103, 'Kornsteiner et al. Tocopherols and total phenolics in 10 different nut types. Food Chemistry 98:381-387', ' 2006.', '', '', '', 0
);

/* INSERT QUERY NO: 1225 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
104, 'Kumar', ' Aalbersberg. Nutrient retention in foods after earth-oven cooking compared to other forms of domestic cooking. 2. Vitamins. Journal of Food Composition and Analysis 19:311-320', ' 2006.', '', '', 0
);

/* INSERT QUERY NO: 1226 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
105, 'Kurz et al. HPLC-DAD-MS characterisation of carotenoids from apricots and pumpkins for the evaluation of fruit product authenticity. Food Chemistry 110:522-530', ' 2008.', '', '', '', 0
);

/* INSERT QUERY NO: 1227 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
107, 'Leonhardt et al. Vitamin E content of different animal products: Influence of animal nutrition. Zeitschrift für Ernährungswissenschaft 36:23-27', ' 1997.', '', '', '', 0
);

/* INSERT QUERY NO: 1228 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
108, 'Leonhardt', ' Wenk. Animal species and muscle related differences in thiamine and riboflavin contents of Swiss meat. Food Chemistry 59:449-452', ' 1997.', '', '', 0
);

/* INSERT QUERY NO: 1229 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
109, 'Leth et al. The intake of carotenoids in Denmark. European Journal of Lipid Science Technology 128-132', ' 2000. ', '', '', '', 0
);

/* INSERT QUERY NO: 1230 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
110, 'Livsmedelsdatabas - Swedish Food Composition Database', ' Schweden. Version: 07.10.2008', '', '', '', 0
);

/* INSERT QUERY NO: 1231 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
111, 'Lo Fiego et al. Effect of dietary supplementation of vitamins C and E in rabbits. Meat Science 67:319-327', ' 2004.', '', '', '', 0
);

/* INSERT QUERY NO: 1232 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
112, 'Lombardi-Boccia et al. Aspects of meat quality: trace elements and B vitamins in raw and cooked meats. Journal of Food Composition and Analysis 18:39-46', ' 2005.', '', '', '', 0
);

/* INSERT QUERY NO: 1233 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
115, 'Majchrzak et al. Vitamin A content (retinol and retinyl esters) in livers of different animals. Food Chem. 98(4):704-710', ' 2006.', '', '', '', 0
);

/* INSERT QUERY NO: 1234 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
116, 'Mangels et al. Carotenoid content of fruits and vegetables: An evaluation of analytic data. Journal American Dietetic Association 93:284-296', ' 1993.', '', '', '', 0
);

/* INSERT QUERY NO: 1235 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
117, 'Mattila et al. Contents of Cholecalciferol', ' Ergocalciferol', ' and Their 25-Hydroxylated Metabolites in Milk Products and Raw Meat and Liver As Determined by HPLC. Journal of Agriculture and Food Chemistry 43:2394-2399', ' 1995.', '', 0
);

/* INSERT QUERY NO: 1236 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
118, 'Melendez-Martinez et al. Provitamin A carotenoids and ascorbic acid contents of the different types of orange juices marketed in Spain. Food Chemistry 101:177-184', ' 2007.', '', '', '', 0
);

/* INSERT QUERY NO: 1237 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
120, 'Moreiras et al. Tablas de composicion de ALIMENTos', ' Piramide', ' 2005.', '', '', 0
);

/* INSERT QUERY NO: 1238 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
121, 'Müller et al. Determination of the carotenoid content in selected vegetabels and fruit by HPLC and photodiode array detection. Z. Lebensm. Unters. Forsch. A. 204:88-94', ' 1997.', '', '', '', 0
);

/* INSERT QUERY NO: 1239 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
122, 'Müller et al. Einfluss der Verarbeitung auf die Carotinoidgehalte von Gemüsesäften. Babynahrung und Tiefkühlprodukten', ' Deutsche Gesellschaft für Qualitätsforschung 155-160', ' 1997.', '', '', 0
);

/* INSERT QUERY NO: 1240 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
123, 'Müller. Die tägliche Aufnahme von Carotinoiden aus Gesamtnahrungsproben und die Carotinoidgehalte ausgewählter Gemüse-und Obstarten. Z. Ernährungswissenschaft 35:45-50', ' 1996.', '', '', '', 0
);

/* INSERT QUERY NO: 1241 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
124, 'Munzuroglu et al. The vitamin and selenium contents of apricot fruit of different verieties cultivated in different geographical regions. Food Chem. 83:205-212', ' 2003.', '', '', '', 0
);

/* INSERT QUERY NO: 1242 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
125, 'Murkovic et al. Development of an Austrian Carotenoid Database. Journal of Food Composition and Analysis 13:435-440', ' 2000.', '', '', '', 0
);

/* INSERT QUERY NO: 1243 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
127, 'Nährwerttabellen für Milch und Milchprodukte', ' Renner & Renz-Schauen', ' Giessen', ' Deutschland', ' 1994', 0
);

/* INSERT QUERY NO: 1244 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
128, 'National Public Health Institute', ' Nutrition Unit. Fineli. Finnish food composition database. Release 9. Helsinki 2008. www.ktl.fi/fineli/', '', '', '', 0
);

/* INSERT QUERY NO: 1245 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
130, 'Niizu et al.', ' New data on the carotenoid composition of raw salad vegetables. Journal of Food Composition and Analysis 18:739-749', ' 2005.', '', '', 0
);

/* INSERT QUERY NO: 1246 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
131, 'O''Neill et al. A European carotenoid database to assess carotenoid intakes and its use in five-country comparative study. British Journal of Nutrition 85:499-507', ' 2001.', '', '', '', 0
);

/* INSERT QUERY NO: 1247 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
132, 'Oliveira et al. Chemical composition', ' and antioxidant and antimicrobial activities of three hazelnut (Corylus avellana L.) cultivars. Food and Chemical Toxicology 46:1801-1807', ' 2008.', '', '', 0
);

/* INSERT QUERY NO: 1248 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
133, 'Ollilainen et al. Retinoids and carotenoids in Finnish foods: fish and fish products. J.Food Compos.Anal. 2(2):93-103', ' 1989.', '', '', '', 0
);

/* INSERT QUERY NO: 1249 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
134, 'Olmedilla et al. Quantitation of provitamin-A and non-Provitamin-A carotenoids in the fruits most commonly consumed in Spain. Food and Cancer Prevention 141-145', ' 1993.', '', '', '', 0
);

/* INSERT QUERY NO: 1250 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
136, 'Orban et al. Nutritional quality and safety of whitefish (Coregonus lavaretus) from Italian lakes. J.Food Compos.Anal. 19(6-7):737-746', ' 2006.', '', '', '', 0
);

/* INSERT QUERY NO: 1251 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
137, 'Penã-Mendez et al. Characterization of various chestnut cultivars by means of chemometrics approach. Food Chemistry 107:537-544', ' 2008.', '', '', '', 0
);

/* INSERT QUERY NO: 1252 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
141, 'Plessi et al. Dietary Fiber and Some Elements in Nuts and Wheat Brans. Journal of Food Composition and Analysis 12:91-96', ' 1999.', '', '', '', 0
);

/* INSERT QUERY NO: 1253 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
143, 'Purchas et al. Concentrations of vitamin D3 and 25-hydroxyvitamin D3 in raw and cooked New Zealand beef and lamb. J.Food Compos.Anal. 20 (2):90-98', ' 2007.', '', '', '', 0
);

/* INSERT QUERY NO: 1254 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
145, 'Saxholt', ' Christensen', ' Møller', ' Hartkopp', ' Hess Ygil', 0
);

/* INSERT QUERY NO: 1255 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
146, 'Schweizerische Nährwerttabelle für Fleisch und Fleischwaren. Wissenschaftliche Fassung.', '', '', '', '', 0
);

/* INSERT QUERY NO: 1256 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
147, 'Scott', ' Bishop. Nutrient Content of Milk and Milk Products: Vitamins of the B Complex and Vitamin C in Retail Creams', ' Ice Creams and Milk Shakes', ' J. Sci. Foood Agric.', ' 1988', 0
);

/* INSERT QUERY NO: 1257 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
149, 'Setiawan et al. Carotenoid Content of Selected Indonesian Fruits. Journal of Food Composition and Analysis 14:169-176', ' 2001.', '', '', '', 0
);

/* INSERT QUERY NO: 1258 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
150, 'Singh et al. Antioxidant phytochemicals in cabbage (Brassica oleracea L. var. Capitata). Scientia Horticulturae 108:233-237', ' 2006.', '', '', '', 0
);

/* INSERT QUERY NO: 1259 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
151, 'Singh et al. Variability of carotenes', ' vitamin C', ' E and phenolics in Brassica vegetables. Journal of Food Composition and  Analysis 20:106-112', ' 2007.', '', 0
);

/* INSERT QUERY NO: 1260 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
152, 'Su et al. Identification and quantitation of major carotenoids in selected components of the Mediterranean diet: green leafy vegetables', ' figs and olive oil. European Journal of Clinical Nutrition 56:1149-1154', ' 2002.', '', '', 0
);

/* INSERT QUERY NO: 1261 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
153, 'SwissFIR', ' DAGRL', ' ETH Zürich', ' Inhaltsstoffe Wasser', ' berechnet aus Analysedaten der grössten Schweizer Wasserversorger', 0
);

/* INSERT QUERY NO: 1262 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
155, 'The Norwegian Food Safety Authority', ' The Norwegian Directorate of Health and the University of Oslo. The Norwegian Food Composition Table 2006. www.matportalen.no/matvaretabellen ', '', '', '', 0
);

/* INSERT QUERY NO: 1263 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
156, 'U.S. Department of Agriculture', ' Agricultural Research Service. 2007. USDA National Nutrient Database for Standard Reference', ' Release 21. www.nal.usda.gov/fnic/foodcomp/search/', '', '', 0
);

/* INSERT QUERY NO: 1264 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
159, 'Van Heerden et al. Nutrient Content of South African Chickens. Journal of Food Composition and Analysis 15:47-64', ' 2002.', '', '', '', 0
);

/* INSERT QUERY NO: 1265 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
160, 'Van Heerden et al. The nutrient composition of South African lamb (A2 grade). Journal of Food Composition and Analysis 20:671-680', ' 2007.', '', '', '', 0
);

/* INSERT QUERY NO: 1266 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
162, 'Welna et al. Investigation of major and trace elements and their distributions between lipid and non-lipid fractions in Brazil nuts by inductively coupled plasma atomic optical spectrometry. Food Chemistry 111:1012-1015', ' 2008.', '', '', '', 0
);

/* INSERT QUERY NO: 1267 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
163, 'Williams et al. Composition of Australian red meat 2002. 3. Nutrient profile', ' Food Australia 59(7)', ' 331-341', ' 2007.', '', 0
);

/* INSERT QUERY NO: 1268 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
164, 'Yano et al. Quantitation of Carotenoids in Raw and Processed Fruits in Japan. Food Sci. Technol. Res. 11:13-18', ' 2005.', '', '', '', 0
);

/* INSERT QUERY NO: 1269 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
176, 'Sieber et al. Beitrag zur Kenntnis der Zusammensetzung von schweizerischem Voll-', ' Halb- und Kaffeerahm', ' Mitt. Gebiete Lebensm. Hyg. 87:103-110', ' 1996.', '', 0
);

/* INSERT QUERY NO: 1270 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
177, 'Sieber et al. Beitrag zur Kenntnis der Zusammensetzung von schweizerischer konsumreifer Emmentaler', ' Greyerzer', ' Sbrinz', ' Appenzeller und Tilsiter', ' Schweiz. Milchw. Forschung 17:109-118', 0
);

/* INSERT QUERY NO: 1271 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
178, 'Sieber et al. Beitrag zur Kenntnis der Zusammensetzung von schweizerischem Joghurt', ' Mitt. Gebiete Lebensm. Hyg. 87:743-754', ' 1996.', '', '', 0
);

/* INSERT QUERY NO: 1272 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
181, 'Sieber et al. Beitrag zur Kenntnis der Zusammensetzung von schweizerischer Milch', ' Mitt. Gebiete Lebensm. Hyg. 90:135-148', ' 1999.', '', '', 0
);

/* INSERT QUERY NO: 1273 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
182, 'Sieber et al. Beitrag zur Kenntnis der Zusammensetzung von schweizerischer Butter', ' Mitt. Gebiete Lebensm. Hyg. 89:84-96', ' 1998.', '', '', 0
);

/* INSERT QUERY NO: 1274 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
183, 'Sieber et al. Beitrag zur Kenntnis der Zusammensetzung von schweizerischem Quark und Hüttenkäse', ' Mitt. Gebiete Lebensm. Hyg. 90:662-669', ' 1999.', '', '', 0
);

/* INSERT QUERY NO: 1275 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
184, 'Sieber et al. Beitrag zur Kenntnis der Zusammensetzung schweizerischer konsumreifer Weich- und Halbhartkäse', ' Mitt. Gebierte Lebensm. Hyg. 85:366-381', ' 1994.', '', '', 0
);

/* INSERT QUERY NO: 1276 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
185, 'Sieber et al. Beitrag zur Kenntnis der Zusammensetzung von schweizerischem Ziger', ' Mitt. Gebiete Lebensm. Hyg. 89:294-300', ' 1998.', '', '', 0
);

/* INSERT QUERY NO: 1277 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
186, 'Sieber et al. Beitrag zur Kenntnis der Zusammensetzung von Glarner Kräuterkäse (Schabziger)', ' FAM-Info. 432', ' 2002.', '', '', 0
);

/* INSERT QUERY NO: 1278 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
311, 'SwissMill', ' Produktinformationen Weizenmehl (Ruchmehl) Typ 1100', ' Zürich', ' Schweiz', ' 2008.', 0
);

/* INSERT QUERY NO: 1279 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
312, 'SwissMill', ' Produktinformationen Weizenmehl (Weissmehl) Typ 400', ' Zürich', ' Schweiz', ' 2008.', 0
);

/* INSERT QUERY NO: 1280 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
315, 'SwissMill', ' Produktinformationen Weizenmehl (Vollkornmehl) Typ 1700', ' Zürich', ' Schweiz', ' 2008.', 0
);

/* INSERT QUERY NO: 1281 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
318, 'Forschungsanstalt Agroscope Changins-Wädenswil ACW', ' Analysedaten Leadergemüse', ' Wädenswil', ' Schweiz', ' 2003.', 0
);

/* INSERT QUERY NO: 1282 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
319, 'Forschungsanstalt Agroscope Changins-Wädenswil ACW', ' Analysedaten Karotte', ' Wädenswil', ' Schweiz', ' 2004.', 0
);

/* INSERT QUERY NO: 1283 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
993, 'National Public Health Institute', ' Nutrition Unit. Fineli. Finnish food composition database. Release 11. Helsinki 2010. www.fineli.fi', '', '', '', 0
);

/* INSERT QUERY NO: 1284 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
994, 'Danish Food Composition Databank', ' version 7.0', ' 2008. www.foodcomp.dk', '', '', 0
);

/* INSERT QUERY NO: 1285 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
996, 'ISGEM', ' The Icelandic Food Composition Database', ' January 2011. www.matis.is/ISGEM/en/', '', '', 0
);

/* INSERT QUERY NO: 1286 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
998, 'Dutch Food Composition Database', ' NEVO online version 2010/2.0', ' RIVM', ' Bilthoven. www.rivm.nl/nevo_en/', '', 0
);

/* INSERT QUERY NO: 1287 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
999, 'Canadian Nutrient File', ' Version 2010. http://webprod.hc-sc.gc.ca/cnf-fce/index-eng.jsp', '', '', '', 0
);

/* INSERT QUERY NO: 1288 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1000, 'Souci Fachmann Kraut', ' Nährwertdatenbank', ' Garchung', ' Deutschland', ' January 2011. www.sfk-online.net/', 0
);

/* INSERT QUERY NO: 1289 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1002, 'U.S. Department of Agriculture', ' Agricultural Research Service. 2011. USDA National Nutrient Database for Standard Reference', ' Release 24. http://ndb.nal.usda.gov/', '', '', 0
);

/* INSERT QUERY NO: 1290 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1003, 'Schweizerische Gesellschaft für Ernährung SGE', ' Bern', ' Schweiz', ' 2012', '', 0
);

/* INSERT QUERY NO: 1291 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1004, 'IG Dinkel', ' Laborbericht Urdinkelvollkornmehl', ' 2010', '', '', 0
);

/* INSERT QUERY NO: 1292 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1005, 'IG Dinkel', ' Laborbericht Urdinkelruchmehl', ' 2010', '', '', 0
);

/* INSERT QUERY NO: 1293 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1006, 'IG Dinkel', ' Laborbericht Urdinkelweissmehl', ' 2010', '', '', 0
);

/* INSERT QUERY NO: 1294 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1007, 'Saxholt', ' Christensen', ' Møller', ' Hartkopp', ' Hess Ygil', 0
);

/* INSERT QUERY NO: 1295 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1008, 'Agence nationale de sécurité sanitaire de l''ALIMENTation', ' de l''environment et du travail (anses)', ' Table CIQUAL 2008 (www.afssa.fr/TableCIQUAL/)', '', '', 0
);

/* INSERT QUERY NO: 1296 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1009, 'Souci Fachmann Kraut', ' Die Zusammensetzung der Lebensmittel - Nährwert-Tabellen', ' 7. revidierte und ergänzte Auflage', ' Wissenschaftliche Verlagsgesellschaft mbH', ' 2008', 0
);

/* INSERT QUERY NO: 1297 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1010, 'Schmid et al. Die Zusammensetzung diverser Schweizer Rohpökelwaren. Fleischwirtschaft', ' 1: 84-88', ' 2011', '', '', 0
);

/* INSERT QUERY NO: 1298 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1011, 'Schmid et al. Die Zusammensetzung von Brühwürsten Schweizer Herkunft. Fleischwirtschaft', ' 10: 98-102', ' 2009', '', '', 0
);

/* INSERT QUERY NO: 1299 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1013, 'Verband Schweizerischer Mineralquellen und Soft-Drink-Produzenten SMS', ' Mineralisierungstabelle Schweiz (Stand September 2011)', ' www.mineralwasser.ch', '', '', 0
);

/* INSERT QUERY NO: 1300 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1017, 'Valser Mineralquellen', ' Mineralisierungstabellen der Valser Mineralquellen', ' Vals', ' Schweiz', ' 2011', 0
);

/* INSERT QUERY NO: 1301 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1018, 'Ramseier Suisse AG', ' Elmer Mineral', ' Sursee', ' Schweiz', ' 2012', 0
);

/* INSERT QUERY NO: 1302 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1023, 'Nestlé Waters', ' Mineralisierung Mineralwasser', ' Henniez', ' Schweiz', ' 2012', 0
);

/* INSERT QUERY NO: 1303 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1024, 'Mineralquelle Gontenbad', ' Mineralisierung Appenzell Mineralwasser', ' Gontenbad', ' Schweiz', ' 2012', 0
);

/* INSERT QUERY NO: 1304 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1025, 'Aproz Sources Minérales', ' Mineralisierung Mineralwasser', ' Aproz', ' Schweiz', ' 2012', 0
);

/* INSERT QUERY NO: 1305 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1027, 'Florin Switzerland', ' Produktinformation Schweizer HOLL-Rapsöl', ' 2012', ' www.florin-ag.ch', '', 0
);

/* INSERT QUERY NO: 1306 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1028, 'Sabo', ' Produktspezifikation Raffiniertes HO Sonnenblumenöl', ' 2012', ' www.sabo-oil.com', '', 0
);

/* INSERT QUERY NO: 1307 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1029, 'Pistor', ' Produktedeklarationsblatt HOLL Rapsöl', ' 2012', ' www.pistorone.ch', '', 0
);

/* INSERT QUERY NO: 1308 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1030, 'Banca Dati di Composizione degli ALIMENTi per Studi epidemiologici in Italia BDA', ' 2008', ' www.ieo.it/bda2008/homepage.aspx ', '', '', 0
);

/* INSERT QUERY NO: 1309 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1031, 'Adelbodner Mineral- und Heilquellen AG', ' Prüfbericht Adelbodner Mineral', ' Adelboden', ' Schweiz', ' 2012', 0
);

/* INSERT QUERY NO: 1310 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1032, 'Schmid. Zusammensetzung von Fleischprodukten Schweizerischer Herkunft (Technisch-wissenschaftliche Informationen)', ' ALP science Nr. 542', ' Agroscope Liebefeld-Posieux', ' 2012', '', 0
);

/* INSERT QUERY NO: 1311 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1033, 'The Norwegian Food Safety Authority', ' The Norwegian Directorate of Health and the University of Oslo. The Norwegian Food Composition Table 2012. www.matvaretabellen.no', '', '', '', 0
);

/* INSERT QUERY NO: 1312 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1045, 'Heineken Switzerland AG. Prüfberichte für Hubertus', ' Klosterbräu', ' Ittinger', ' Heineken Lager', ' Eichhof Lager und Calanda Lager. Chur', 0
);

/* INSERT QUERY NO: 1313 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1046, 'Heineken Switzerland AG. Prüfberichte für Eichhof Alkoholfrei und Calanda Lemon. Chur', ' 2011', '', '', '', 0
);

/* INSERT QUERY NO: 1314 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1047, 'Heineken Switzerland AG. Alkohol- und Stammwürze-Gehalt von Heineken Lager', ' Calanda Lager', ' Eichhof Lager', ' Ittinger', ' Eichhof Klosterbräu und Eichhof Hubertus. Persönliche Kommunikation (Email vom 26.10.2011).', 0
);

/* INSERT QUERY NO: 1315 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1048, 'Heineken Switzerland AG. Alkohol- und Stammwürze-Gehalt von Eichhof Alkoholfrei und Calanda Lemon. Persönliche Kommunikation (Email vom 8.11.2011).', '', '', '', '', 0
);

/* INSERT QUERY NO: 1316 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1049, 'Feldschlösschen Getränke AG. Produktbeschreibung von Feldschlösschen Original. Reinfelden', ' 2010', '', '', '', 0
);

/* INSERT QUERY NO: 1317 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1050, 'Feldschlösschen Getränke AG. Produktbeschreibung von Feldschlösschen 2.4. Reinfelden', ' 2010', '', '', '', 0
);

/* INSERT QUERY NO: 1318 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1051, 'Feldschlösschen Getränke AG. Produktbeschreibung von Feldschlösschen Hopfenperle. Reinfelden', ' 2010', '', '', '', 0
);

/* INSERT QUERY NO: 1319 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1052, 'Feldschlösschen Getränke AG. Produktbeschreibung von Feldschlösschen Alkoholfrei. Reinfelden', ' 2010', '', '', '', 0
);

/* INSERT QUERY NO: 1320 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1053, 'Feldschlösschen Getränke AG. Produktbeschreibung von Feldschlösschen Urtrüb. Reinfelden', ' 2010', '', '', '', 0
);

/* INSERT QUERY NO: 1321 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1054, 'Feldschlösschen Getränke AG. Produktbeschreibung von Feldschlösschen Bügel. Reinfelden', ' 2010', '', '', '', 0
);

/* INSERT QUERY NO: 1322 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1055, 'Feldschlösschen Getränke AG. Produktbeschreibung von Cardinal Lager. Reinfelden', ' 2010', '', '', '', 0
);

/* INSERT QUERY NO: 1323 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1056, 'Feldschlösschen Getränke AG. Produktbeschreibung von Cardinal sans alcool. Reinfelden', ' 2010', '', '', '', 0
);

/* INSERT QUERY NO: 1324 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1057, 'Feldschlösschen Getränke AG. Produktbeschreibung von Carlsberg. Reinfelden', ' 2010', '', '', '', 0
);

/* INSERT QUERY NO: 1325 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1058, 'Feldschlösschen Getränke AG. Produktbeschreibung von Carlsberg Alkoholfrei. Reinfelden', ' 2010', '', '', '', 0
);

/* INSERT QUERY NO: 1326 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1059, 'Chivas Brothers Limited. Certificate of analysis (Aberlour 10YO Malt Scotch Whisky). Paisley', ' 2010', '', '', '', 0
);

/* INSERT QUERY NO: 1327 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1061, 'Chivas Brothers Limited. Certificate of analysis (Ballantine''s 12YO blended Scotch Whisky). Paisley', ' 2011', '', '', '', 0
);

/* INSERT QUERY NO: 1328 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1062, 'Chivas Brothers Limited. Certificate of analysis (Ballantine''s Finest blended Scotch Whisky). Paisley', ' 2011', '', '', '', 0
);

/* INSERT QUERY NO: 1329 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1063, 'Chivas Brothers Limited. Certificate of analysis (Chivas Regal 12YO blended Scotch Whisky). Paisley', ' 2011', '', '', '', 0
);

/* INSERT QUERY NO: 1330 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1064, 'Pernod Ricard Italia. Certificate of analysis (Grappa Fior di Vite Ramazzotti). Milano', ' 2011', '', '', '', 0
);

/* INSERT QUERY NO: 1331 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1065, 'Chivas Brothers Limited. Certificate of analysis (Four Roses Bourbon). Paisley', ' 2011', '', '', '', 0
);

/* INSERT QUERY NO: 1332 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1066, 'Chivas Brothers Limited. Certificate of analysis (Glenlivet 12YO Malt Scotch Whisky). Paisley', ' 2011', '', '', '', 0
);

/* INSERT QUERY NO: 1333 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1067, 'Havana Club International. Informe de resultados (Havana Club Anejo Reserva). Ciudad de La Habana', ' 2011', '', '', '', 0
);

/* INSERT QUERY NO: 1334 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1068, 'Irish Distillers Limited. Certificate of ingredients (Jameson Irish Whiskey). Cork', ' 2011', '', '', '', 0
);

/* INSERT QUERY NO: 1335 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1069, 'Pernod Ricard. Technical Product Specification (Malibu Coconut). Ontario', ' 2011', '', '', '', 0
);

/* INSERT QUERY NO: 1336 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1070, 'Pernod Ricard. Certificat produit  (Pastis de Marseille). Creteil Cedex', ' 2011', '', '', '', 0
);

/* INSERT QUERY NO: 1337 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1071, 'Sogrape Vinhos SA. Analysis Certificate (Sandeman Porto). Avintes', ' 2011', '', '', '', 0
);

/* INSERT QUERY NO: 1338 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1072, 'Pernod Ricard Italia. Certificate of analysis (Amaro Ramazzotti). Milano', ' 2011', '', '', '', 0
);

/* INSERT QUERY NO: 1339 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1073, 'Pernod Ricard. Certificat produit (Suze). Creteil Cedex', ' 2011', '', '', '', 0
);

/* INSERT QUERY NO: 1340 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1074, 'Wyborowa SA. Certificate of analysis (Wodka Wyborowa). Poznan', ' 2011', '', '', '', 0
);

/* INSERT QUERY NO: 1341 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1075, 'Sieber', ' R. Zusammensetzung von Milch und Milchprodukten Schweizerischer Herkunft (Technisch-wissenschaftliche Informationen). Agroscope Liebefeld-Posieux ALP. Bern', ' 2011. www.agroscope.admin.ch/data/publikationen/1314099178_as_538_web.pdf (2.8.2012)', '', '', 0
);

/* INSERT QUERY NO: 1342 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1077, 'Clausthaler', ' Wissen - Online Journal (Ausgabe 1)', ' www.clausthaler.de/downloads/clt_pdf_fitmacher_de.pdf (2.8.2012)', '', '', 0
);

/* INSERT QUERY NO: 1343 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1078, 'Allegra Passugger Mineralquellen AG', ' Untersuchungsbericht Mineralwasser Allegra', ' Passugg', ' Schweiz', ' 2012', 0
);

/* INSERT QUERY NO: 1344 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1079, 'Allegra Passugger Mineralquellen AG', ' Untersuchungsbericht Mineralwasser Passugger', ' Passugg', ' Schweiz', ' 2012', 0
);

/* INSERT QUERY NO: 1345 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1080, 'Adelbodner Mineral- und Heilquellen AG', ' Prüfbericht Adello Quelle', ' Adelboden', ' Schweiz', ' 2012', 0
);

/* INSERT QUERY NO: 1346 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1129, 'Schweizerische Gesellschaft für Ernährung SGE', ' Bern', ' Schweiz', ' 2013', '', 0
);

/* INSERT QUERY NO: 1347 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1333, 'Bundesamt für Gesundheit', ' Jod Monitoring', ' Bern', ' Schweiz', ' 2012', 0
);

/* INSERT QUERY NO: 1348 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1399, 'Bundesamt für Gesundheit', ' Jod Monitoring', ' Bern', ' Schweiz', ' 2011', 0
);

/* INSERT QUERY NO: 1349 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1404, 'Agence nationale de sécurité sanitaire de l''ALIMENTation', ' de l''environment et du travail (anses)', ' Table de composition nutritionnelle CIQUAL 2012 (www.afssa.fr/TableCIQUAL/)', '', '', 0
);

/* INSERT QUERY NO: 1350 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1406, 'Gerber', ' The role of meat in human nutrition for the supply with nutrients', ' particularly functional long-chain n-3 fatty acids', ' Dissertation (No. 17232)', ' Eidgenössische Technische Hochschule', 0
);

/* INSERT QUERY NO: 1351 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1408, 'Schweizerische Gesellschaft für Ernährung SGE', ' Bern', ' Schweiz', ' 2014', '', 0
);

/* INSERT QUERY NO: 1352 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1410, 'Wauwiler Champignons AG', ' UFAG Prüfbericht Champignons geschnitten', ' Wauwil', ' Schweiz 2011', '', 0
);

/* INSERT QUERY NO: 1353 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1411, 'Schweizer Rheinsalinen', ' Spezifikation für JuraSel Speisesalz mit Iod und Fluor', ' Prattelen', ' Schweiz', ' 2014', 0
);

/* INSERT QUERY NO: 1354 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1412, 'Schweizer Rheinsalinen', ' Spezifikation für JuraSel Tafelsalz mit Iod', ' Prattelen', ' Schweiz', ' 2014', 0
);

/* INSERT QUERY NO: 1355 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1413, 'Schweizer Rheinsalinen', ' Spezifikation für JuraSel Speisesalz ohne Iod und Fluor', ' Prattelen', ' Schweiz', ' 2012', 0
);

/* INSERT QUERY NO: 1356 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1438, 'SwissMill', ' Spezifikation Halbweissmehl aus Weizen', ' Zürich', ' Schweiz', ' 2013', 0
);

/* INSERT QUERY NO: 1357 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1439, 'SwissMill', ' Spezifikation Ruchmehl aus Weizen', ' Zürich', ' Schweiz', ' 2013', 0
);

/* INSERT QUERY NO: 1358 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1440, 'SwissMill', ' Spezifikation Vollkornmehl aus Weizen', ' Zürich', ' Schweiz', ' 2013', 0
);

/* INSERT QUERY NO: 1359 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1441, 'SwissMill', ' Spezifikation Backmehl aus Weizen (Typ 550)', ' Zürich', ' Schweiz', ' 2013', 0
);

/* INSERT QUERY NO: 1360 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1442, 'SwissMill', ' Spezifikation Weissmehl aus Weizen (Typ 400)', ' Zürich', ' Schweiz', ' 2013', 0
);

/* INSERT QUERY NO: 1361 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1462, 'Thai Ministry of Public Health', ' Nutrition Division', ' Nutritive values of Thai foods', ' 2001', '', 0
);

/* INSERT QUERY NO: 1362 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1463, 'Presshefefabrik Stettfurt AG', ' UFAG Prüfbericht Backhefe Bio Knospe', ' Stettfurt', ' Schweiz', ' 2006', 0
);

/* INSERT QUERY NO: 1363 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1473, 'Food Composition Database of Sugiyama University', ' Standard Tables of Food Composition in Japan', ' 5th revised edition', ' 2000', ' http://database.food.sugiyama-u.ac.jp/index_asia.php', 0
);

/* INSERT QUERY NO: 1364 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1476, 'Morga AG', ' Produktinformation Agavensirup', ' Ebnat-Kappel', ' Schweiz', ' www.morga.ch (29.7.2014)', 0
);

/* INSERT QUERY NO: 1365 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1477, 'Eden Reform GmbH', ' Produktblatt Agavendicksaft', ' www.eden.de (29.7.2014)', '', '', 0
);

/* INSERT QUERY NO: 1366 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1480, 'Coop', ' Produktinformation zu Saitaku Wasabi Paste', ' www.coopathome (29.7.2014)', '', '', 0
);

/* INSERT QUERY NO: 1367 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1481, 'Blue Dragon UK', ' Blue Dragon Wasabi Paste', ' www.bluedragon.co.uk (29.7.2014)', '', '', 0
);

/* INSERT QUERY NO: 1368 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1523, 'Coop Schweiz', ' Nährwertinformationen', ' Basel', ' Schweiz', ' 2014', 0
);

/* INSERT QUERY NO: 1369 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1528, 'Bundeslebensmittelschlüssel', ' BLS 3.02', ' Karlsruhe', ' Deutschland', '', 0
);

/* INSERT QUERY NO: 1370 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1530, 'Schweizerische Gesellschaft für Ernährung SGE', ' Bern', ' Schweiz', ' 2015', '', 0
);

/* INSERT QUERY NO: 1371 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1531, 'Agence nationale de sécurité sanitaire de l''ALIMENTation', ' de l''environment et du travail (anses)', ' Table de composition nutritionnelle CIQUAL 2013 (www.afssa.fr/TableCIQUAL/)', '', '', 0
);

/* INSERT QUERY NO: 1372 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1542, 'Bundesamt für Lebensmittelsicherheit und Veterinärwesen', ' Bestimmung von mineralischen Elementen und Spurenelementen in Lebensmitteln für die Nährwertdatenbank (Analyseresultate)', ' Bern', ' Schweiz', ' 2015', 0
);

/* INSERT QUERY NO: 1373 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1544, 'Bundesamt für Gesundheit', ' Selen Monitoring', ' Bern', ' Schweiz', ' 2010', 0
);

/* INSERT QUERY NO: 1374 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1631, 'U.S. Department of Agriculture', ' Agricultural Research Service. 2015. USDA National Nutrient Database for Standard Reference', ' Release 28. http://ndb.nal.usda.gov/', '', '', 0
);

/* INSERT QUERY NO: 1375 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1632, 'Schweizerische Gesellschaft für Ernährung SGE', ' Bern', ' Schweiz', ' 2016', '', 0
);

/* INSERT QUERY NO: 1376 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1637, 'Sollberg H.', ' Schaeren W.', ' Collomb M.', ' Badertscher R.', ' Bütikofer U.', 0
);

/* INSERT QUERY NO: 1377 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1638, 'Maurer J.', ' Schaeren W.', ' Badertscher R.', ' Bütikofer U.', ' Collomb M.', 0
);

/* INSERT QUERY NO: 1378 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1640, 'Souci Fachmann Kraut', ' Die Zusammensetzung der Lebensmittel - Nährwert-Tabellen', ' 8. revidierte und ergänzte Auflage', ' Wissenschaftliche Verlagsgesellschaft mbH', ' 2016', 0
);

/* INSERT QUERY NO: 1379 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1641, 'McCance and Widdowson''s composition of foods integrated dataset', ' Public Health England', ' 2015', '', '', 0
);

/* INSERT QUERY NO: 1380 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1642, 'Swiss Vitamin Institute', ' Bestimmung von Vitaminen in Cerealien und Hülsenfrüchten für die Nährwertdatenbank (Analyseresultate)', ' Épalinges ', ' Schweiz', ' 2016', 0
);

/* INSERT QUERY NO: 1381 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1643, 'Table de composition nutritionnelle Ciqual (2016)', '', '', '', '', 0
);

/* INSERT QUERY NO: 1382 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1648, 'Schweizerische Gesellschaft für Ernährung SGE', ' Bern', ' Schweiz', ' 2017', '', 0
);

/* INSERT QUERY NO: 1383 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1649, 'FAO. 2017. FAO/INFOODS Global Food Composition Database for Pulses Version 1.0 - uPulses1.0. Rome', ' FAO', '', '', '', 0
);

/* INSERT QUERY NO: 1384 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1650, 'U.S. Department of Agriculture', ' Agricultural Research Service', ' USDA National Nutrient Database for Standard Reference', ' Release 28 slightly revised May', ' 2016. http://ndb.nal.usda.gov/', 0
);

/* INSERT QUERY NO: 1385 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1651, 'Banca Dati di Composizione degli ALIMENTi per Studi epidemiologici in Italia BDA', ' 2015', ' http://www.bda-ieo.it/wordpress/', '', '', 0
);

/* INSERT QUERY NO: 1386 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1652, 'Frida Food Data (http://frida.fooddata.dk)', ' version 2', ' 2016', ' National Food Institute', ' Technical University of Denmark', 0
);

/* INSERT QUERY NO: 1387 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1653, 'Swiss Vitamin Institute', ' Bestimmung von Vitaminen in Milch und Milchprodukte für die Nährwertdatenbank (Analyseresultate)', ' Epalinges', ' Schweiz', ' 2017', 0
);

/* INSERT QUERY NO: 1388 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1659, 'Swiss Vitamin Institute', ' Bestimmung von Vitaminen in Käse für die Nährwertdatenbank (Analyseresultate)', ' Epalinges', ' Schweiz', ' 2017', 0
);

/* INSERT QUERY NO: 1389 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1660, 'Anses - Table de composition nutritionnelle des ALIMENTs Ciqual 2017', '', '', '', '', 0
);

/* INSERT QUERY NO: 1390 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1661, 'Frida Food Data (http://frida.fooddata.dk)', ' version 3', ' 2017', ' National Food Institute', ' Technical University of Denmark', 0
);

/* INSERT QUERY NO: 1391 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1662, 'Schweizerische Gesellschaft für Ernährung SGE', ' Bern', ' Schweiz', ' 2018', '', 0
);

/* INSERT QUERY NO: 1392 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1663, 'Fichier canadien sur les éléments nutritifs FCEN', ' 2015', '', '', '', 0
);

/* INSERT QUERY NO: 1393 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1665, 'Bundesamt für Lebensmittelsicherheit und Veterinärwesen', ' Bestimmung von mineralischen Elementen und Spurenelementen in Lebensmitteln für die Nährwertdatenbank (Analyseresultate)', ' Bern', ' Schweiz', ' 2018', 0
);

/* INSERT QUERY NO: 1394 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1666, 'Livsmedelsverket', ' Swedish National Food Agency food database', ' version 2017-12-15', '', '', 0
);

/* INSERT QUERY NO: 1395 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1667, 'Swiss Vitamin Institute', ' determination of vitamin in oil and fat for swiss food composition database (analysis results)', ' Epalinges', ' Switzerland', ' 2017', 0
);

/* INSERT QUERY NO: 1396 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1669, 'Swiss Vitamin Institute', ' determination of vitamin in vegetables for swiss food composition database (analysis results)', ' Epalinges', ' Switzerland', ' 2017-2018', 0
);

/* INSERT QUERY NO: 1397 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1670, 'Swiss Vitamin Institute', ' determination of vitamin in fruits for swiss food composition database (analysis results)', ' Epalinges', ' Switzerland', ' 2018', 0
);

/* INSERT QUERY NO: 1398 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1671, 'Swiss Vitamin Institute', ' determination of vitamin in potatoes for swiss food composition database (analysis results)', ' Epalinges', ' Switzerland', ' 2017-2018', 0
);

/* INSERT QUERY NO: 1399 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1672, 'Swiss Vitamin Institute', ' determination of vitamin in nuts for swiss food composition database (analysis results)', ' Epalinges', ' Switzerland', ' 2018', 0
);

/* INSERT QUERY NO: 1400 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1675, 'Walther B', ' Wechsler D.', ' Schlegel P.', ' Haldimann M.', ' Iodine in Swiss milk depending on production (conventional versus organic) and on processing (raw versus UHT) and the contribution of milk to the human iodine supply', 0
);

/* INSERT QUERY NO: 1401 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1676, 'TürKomp', ' Turkish Food Composition Database', ' version 1.0. Food Institute', ' TÜBİTAK Marmara Research Center', ' Gebze / Kocaeli', 0
);

/* INSERT QUERY NO: 1402 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1677, 'Geschätzter Wert / Valeur estimée / Valore stimato / Estimated value  ', '', '', '', '', 0
);

/* INSERT QUERY NO: 1403 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1678, 'Berechneter Wert / valeur calculée / valore calcolato / calculated value', '', '', '', '', 0
);

/* INSERT QUERY NO: 1404 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1679, 'NEVO online version 2016/5.0', ' RIVM', ' Bilthoven. https://nevo-online.rivm.nl', '', '', 0
);

/* INSERT QUERY NO: 1405 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1680, 'Verband Schweizerischer Mineralquellen und Soft-Drink-Produzenten SMS', ' Mineralisierungstabellen Schweiz (Stand January 2017) und Ausland (Stand Oktober 2017)', ' www.mineralwasser.ch', '', '', 0
);

/* INSERT QUERY NO: 1406 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1682, 'Schweizerische Gesellschaft für Ernährung SGE', ' Datensammlung auf dem Schweizerlebensmittelmarkt', ' Bern', ' 2018', '', 0
);

/* INSERT QUERY NO: 1407 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1690, 'Swiss Vitamin Institute', ' determination of vitamin in meat and eggs for swiss food composition database (analysis results)', ' Epalinges', ' Switzerland', ' 2018', 0
);

/* INSERT QUERY NO: 1408 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1691, 'Eurofins Scientific AG', ' Bestimmung von Vitaminen in Chicorée für die Nährwertdatenbank (Analyseresultate)', ' Schönenwerd ', ' Schweiz', ' 2018', 0
);

/* INSERT QUERY NO: 1409 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1693, 'Eurofins Scientific AG', ' Bestimmung von Vitaminen in Rotkohl für die Nährwertdatenbank (Analyseresultate)', ' Schönenwerd ', ' Schweiz', ' 2018', 0
);

/* INSERT QUERY NO: 1410 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1694, 'Eurofins Scientific AG', ' Bestimmung von Vitaminen in Rapsöl für die Nährwertdatenbank (Analyseresultate)', ' Schönenwerd ', ' Schweiz', ' 2018', 0
);

/* INSERT QUERY NO: 1411 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1696, 'Eurofins Scientific AG', ' Bestimmung von Vitaminen in Karotten für die Nährwertdatenbank (Analyseresultate)', ' Schönenwerd ', ' Schweiz', ' 2018', 0
);

/* INSERT QUERY NO: 1412 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1697, 'Eurofins Scientific AG', ' Bestimmung von Vitaminen in Vorzugsbutter für die Nährwertdatenbank (Analyseresultate)', ' Schönenwerd ', ' Schweiz', ' 2018', 0
);

/* INSERT QUERY NO: 1413 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1698, 'Schweizerische Gesellschaft für Ernährung SGE', ' Bern', ' Schweiz', ' 2019', '', 0
);

/* INSERT QUERY NO: 1414 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1699, 'US Department of Agriculture (USDA)', ' Agricultural Research Service', ' Nutrient Data Laboratory. USDA National Nutrient Database for Standard Reference', ' Legacy. Version Current: April 2018. Internet: http://www.ars.usda.gov/nutrientdata', '', 0
);

/* INSERT QUERY NO: 1415 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1700, 'Consorzio del Formaggio Parmigiano Reggiano', ' valori nutrizionali del Parmigiano Reggiano', ' website www.parmigianoreggiano.it', ' January 2019', '', 0
);

/* INSERT QUERY NO: 1416 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1703, 'Brunner K.', ' Bestimmung von trockengehalt und Wassergehalt von Tofu-Produkten für Nährwertdatenbank (Analyseresultate)', ' Bundesamt für Lebensmittelsicherheit und Veterinärwesen', ' Bern', ' Schweiz', 0
);

/* INSERT QUERY NO: 1417 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1704, 'Frida Food Data (http://frida.fooddata.dk)', ' version 3a', ' 2018', ' National Food Institute', ' Technical University of Denmark', 0
);

/* INSERT QUERY NO: 1418 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
1705, 'Public Health England', ' Nutrient analysis survey of fresh and processed fruit and vegetables with respect to fibre', ' analytical report', ' London 2017', '', 0
);

/* INSERT QUERY NO: 1419 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2238, 'Frida Food Data (http://frida.fooddata.dk)', ' version 4', ' 2019', ' National Food Institute', ' Technical University of Denmark', 0
);

/* INSERT QUERY NO: 1420 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2239, 'McCance and Widdowson''s composition of foods integrated dataset', ' Public Health England', ' 2019', '', '', 0
);

/* INSERT QUERY NO: 1421 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2240, 'Ministry of Education', ' Culture', ' Sports', ' Science and Technology (MEXT)', ' Standard Tables of Food Composition in Japan', 0
);

/* INSERT QUERY NO: 1422 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2241, 'Swiss Vitamin Institute', ' determination of vitamin in eggs for swiss food composition database (analysis results)', ' Epalinges', ' Switzerland', ' 2019', 0
);

/* INSERT QUERY NO: 1423 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2242, 'J. Jakobsen', ' A. Bysted', ' E. Saxholt', ' C. Wirenfeldt Nielsen', ' K. Hess Ygil & E. Trolle', 0
);

/* INSERT QUERY NO: 1424 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2243, 'Kunchit Judprasong', ' Prapasri Puwastien', ' Nipa Rojroongwasinkul', ' Anadi Nitithamyong', ' Piyanut Sridonpai', 0
);

/* INSERT QUERY NO: 1425 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2245, 'Schweizerische Gesellschaft für Ernährung SGE', ' Datensammlung auf dem Schweizerlebensmittelmarkt', ' Bern', ' 2019', '', 0
);

/* INSERT QUERY NO: 1426 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2247, 'Swiss Vitamin Institute', ' determination of vitamin in Mustards for swiss food composition database (analysis results)', ' Epalinges', ' Switzerland', ' 2019', 0
);

/* INSERT QUERY NO: 1427 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2252, 'FAO', ' Food and Agriculture Organization of the United Nations. West African Food Composition Table. Rome', ' 2012', '', '', 0
);

/* INSERT QUERY NO: 1428 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2256, 'National Institute for Health and Welfare', ' Public Health Promotion Unit. Fineli. Finnish food composition database. Release 20. Helsinki 2019. www.fineli.fi', '', '', '', 0
);

/* INSERT QUERY NO: 1429 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2265, 'Schweizerische Gesellschaft für Ernährung SGE', ' Bern', ' Schweiz', ' 2020', '', 0
);

/* INSERT QUERY NO: 1430 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2268, 'Bundesamt für Lebensmittelsicherheit und Veterinärwesen BLV', ' Trinkwasser Monitoring', ' Bern', ' Schweiz', ' 2020', 0
);

/* INSERT QUERY NO: 1431 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2269, 'Bundesamt für Lebensmittelsicherheit und Veterinärwesen', ' Bestimmung von mineralischen Elementen und Spurenelementen in Eiern für die Nährwertdatenbank (Analyseresultate)', ' Bern', ' Schweiz', ' 2020', 0
);

/* INSERT QUERY NO: 1432 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2272, 'Infanger E', ' Haldimann M', ' Report on the composition of prevalent salt varieties', ' Federal Food Safety and Veterinary Office FSVO', ' Berne', 0
);

/* INSERT QUERY NO: 1433 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2275, 'Roe M.', ' Pinchen H.', ' Church S.', ' Finglas P.', ' Nutrient analysis of eggs', 0
);

/* INSERT QUERY NO: 1434 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2276, 'Norwegian Food Composition Database 2019. Norwegian Food Safety Authority. www.matvaretabellen.no', '', '', '', '', 0
);

/* INSERT QUERY NO: 1435 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2277, 'Anses - Table de composition nutritionnelle des ALIMENTs Ciqual 2020', '', '', '', '', 0
);

/* INSERT QUERY NO: 1436 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2278, 'Swiss Vitamin Institute', ' determination of vitamin in oil and fat', ' nuts and tofu for swiss food composition database (analysis results)', ' Epalinges', ' Switzerland', 0
);

/* INSERT QUERY NO: 1437 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2279, 'Swiss Vitamin Institute', ' determination of vitamin in fruits for swiss food composition database (analysis results)', ' Epalinges', ' Switzerland', ' 2018-2020', 0
);

/* INSERT QUERY NO: 1438 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2283, 'Livsmedelsverket', ' The Swedish Food Agency food database', ' version 2020-01-16', '', '', 0
);

/* INSERT QUERY NO: 1439 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2289, 'Verband Schweizerischer Mineralquellen und Soft-Drink-Produzenten SMS', ' Mineralisierungstabellen Schweiz und Ausland (Stand January 2020)', ' www.mineralwasser.ch', '', '', 0
);

/* INSERT QUERY NO: 1440 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2290, 'T.Longvah', ' R. Ananthan', ' K. Bhaskarachary', ' K. Venkaiah', ' Indian Food Composition Tables', 0
);

/* INSERT QUERY NO: 1441 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2578, 'Swiss Vitamin Institute', ' determination of vitamin in vegetables for swiss food composition database (analysis results)', ' Epalinges', ' Switzerland', ' 2018-2019', 0
);

/* INSERT QUERY NO: 1442 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2579, 'Swiss Vitamin Institute', ' determination of vitamin in vegetables for swiss food composition database (analysis results)', ' Epalinges', ' Switzerland', ' 2018-2020', 0
);

/* INSERT QUERY NO: 1443 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2580, 'Schweizerische Gesellschaft für Ernährung SGE', ' Bern', ' Schweiz', ' 2021', '', 0
);

/* INSERT QUERY NO: 1444 */
INSERT INTO ALIMENT(Id, Nom, Categorie, Densit, Unite, energie, calories)
VALUES
(
2581, 'Swiss Vitamin Institute', ' determination of vitamin in nuts and dried fruits for swiss food composition database (analysis results)', ' Epalinges', ' Switzerland', ' 2020', 0
);

INSERT INTO WELL_BEING(calories,water,sleep,size,weight,imc,date,id_user)
VALUES(
100,2,8,180,80,25,'2021-03-04 14:59:07',3
);