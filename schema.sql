-- Delete table if exists
DROP TABLE IF EXISTS MADE_WORK;
DROP TABLE IF EXISTS MUSCLE;
DROP TABLE IF EXISTS PROFIL;
DROP TABLE IF EXISTS EXERCICE;
DROP TABLE IF EXISTS USED;
DROP TABLE IF EXISTS WELL_BEING;
DROP TABLE IF EXISTS HAVE;
DROP TABLE IF EXISTS MAY_HAVE_A;
DROP TABLE IF EXISTS USER;
DROP TABLE IF EXISTS FEEDBACK;
DROP TABLE IF EXISTS SPORTS_PROGRAM;
DROP TABLE IF EXISTS MEANSUREMENTS;
DROP TABLE IF EXISTS GOAL;
-- TODO : Confirmer les typages 
-- Creation des tables 
CREATE TABLE "MADE_WORK" (
    "id_muscle" INT,
    "id_exercice" INT,
    PRIMARY KEY ("id_muscle", "id_exercice"),
    FOREIGN KEY ("id_muscle") REFERENCES "MUSCLE" ("id_muscle"),
    FOREIGN KEY ("id_exercice") REFERENCES "EXERCICE" ("id_exercice")
);
CREATE TABLE "MUSCLE" (
    "id_muscle" INTEGER PRIMARY KEY AUTOINCREMENT,
    "name" VARCHAR
);
CREATE TABLE "PROFIL" (
    "id_profil" INTEGER PRIMARY KEY AUTOINCREMENT,
    "food" VARCHAR,
    "activitysport" VARCHAR,
    "activitypro" VARCHAR,
    "date" DATETIME,
    "id_user" BIGINT,
    FOREIGN KEY ("id_user") REFERENCES "USER" ("id_user")
);
CREATE TABLE "EXERCICE" (
    "id_exercice" INTEGER PRIMARY KEY AUTOINCREMENT,
    "title" VARCHAR,
    "imagehelp" VARCHAR,
    "nbreps" SMALLINT,
    "nbseries" SMALLINT,
    "restseries" VARCHAR,
    "restexercice" VARCHAR
);
CREATE TABLE "USED" (
    "id_user" BIGINT,
    "id_exercice" INT,
    "weight" REAL,
    "date" DATETIME,
    PRIMARY KEY ("id_user", "id_exercice", "date"),
    FOREIGN KEY ("id_user") REFERENCES "USER" ("id_user"),
    FOREIGN KEY ("id_exercice") REFERENCES "EXERCICE" ("id_exercice")
);
CREATE TABLE "WELL_BEING" (
    "id_well_being" INTEGER PRIMARY KEY AUTOINCREMENT,
    "calories" INT,
    "water" REAL,
    "sleep" REAL,
    "size" REAL,
    "weight" REAL,
    "imc" REAL,
    "date" DATETIME,
    "id_user" BIGINT,
    FOREIGN KEY ("id_user") REFERENCES "USER" ("id_user")
);
CREATE TABLE "HAVE" (
    "id_sports_program" INT,
    "id_exercice" INT,
    PRIMARY KEY ("id_sports_program", "id_exercice"),
    FOREIGN KEY ("id_sports_program") REFERENCES "SPORTS_PROGRAM" ("id_sports_program"),
    FOREIGN KEY ("id_exercice") REFERENCES "EXERCICE" ("id_exercice")
);
CREATE TABLE "MAY_HAVE_A" (
    "id_user" BIGINT,
    "id_sports_program" INT,
    "date" DATETIME,
    PRIMARY KEY ("id_user", "id_sports_program"),
    FOREIGN KEY ("id_user") REFERENCES "USER" ("id_user"),
    FOREIGN KEY ("id_sports_program") REFERENCES "SPORTS_PROGRAM" ("id_sports_program")
);
CREATE TABLE "USER" (
    "id_user" INTEGER PRIMARY KEY AUTOINCREMENT,
    "username" VARCHAR(50),
    "password" VARCHAR,
    "isAdmin" BOOLEAN,
    "mail" VARCHAR(250),
    "sexe" VARCHAR(50),
    "age" INT,
    "reminderweight" INT,
    "remindermeasurements" INT,
    "id_goal" INT,
    FOREIGN KEY ("id_goal") REFERENCES "GOAL" ("id_goal")
);
CREATE TABLE "FEEDBACK" (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "nature" VARCHAR,
    "title" VARCHAR(50),
    "description" VARCHAR,
    "date" DATETIME,
    "etat" VARCHAR,
    "id_user" BIGINT,
    FOREIGN KEY ("id_user") REFERENCES "USER" ("id_user")
);
CREATE TABLE "SPORTS_PROGRAM" (
    "id_sports_program" INTEGER PRIMARY KEY AUTOINCREMENT,
    "title" VARCHAR(50),
    "description" VARCHAR,
    "level" VARCHAR,
    "creator" VARCHAR
);
CREATE TABLE "MEANSUREMENTS" (
    "id_meansurements" INTEGER PRIMARY KEY AUTOINCREMENT,
    "typemeansurements" VARCHAR,
    "valuemeansurements" VARCHAR,
    "id_user" BIGINT,
    FOREIGN KEY ("id_user") REFERENCES "USER" ("id_user")
);
CREATE TABLE "GOAL" (
    "id_goal" INTEGER PRIMARY KEY AUTOINCREMENT,
    "calories" INT,
    "water" REAL,
    "sleep" REAL,
    "weight" REAL,
    "imc" REAL,
    "goaltype" VARCHAR
);
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
        'lesuperbemotdepassederuben',
        0,
        'ruben@gmail.com',
        'Homme',
        20,
        5,
        60
    ),
    (
        'antoine',
        'monmotdepassimpossibleatrouver',
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
VALUES ("Séance Facile", "Séance pour les débutants", "Facile", "antoine"),
       ("Séance Dificile", "Séance pour les experts", "Difficile", "Ruben");

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