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


-- A FAIRE ! ! ! ! ! Confirmer les typages + Rajouter AUTOINCREMENT

CREATE TABLE "MADE_WORK" (
    "id_muscle" INT,
    "id_exercice" INT,
    PRIMARY KEY ("id_muscle", "id_exercice"),
    FOREIGN KEY ("id_muscle") REFERENCES "MUSCLE" ("id_muscle"),
    FOREIGN KEY ("id_exercice") REFERENCES "EXERCICE" ("id_exercice")
);
CREATE TABLE "MUSCLE" (
    "id_muscle" INT(42),
    "name" VARCHAR,
    PRIMARY KEY ("id_muscle")
);
CREATE TABLE "PROFIL" (
    "id_profil" INT,
    "food" VARCHAR,
    "activitysport" VARCHAR,
    "activitypro" VARCHAR,
    "date" DATETIME,
    "id_user" BIGINT,
    PRIMARY KEY ("id_profil"),
    FOREIGN KEY ("id_user") REFERENCES "USER" ("id_user")
);
CREATE TABLE "EXERCICE" (
    "id_exercice" INT,
    "title" VARCHAR,
    "imagehelp" VARCHAR,
    "nbreps" SMALLINT,
    "nbseries" SMALLINT,
    "restseries" VARCHAR,
    "restexercice" VARCHAR,
    PRIMARY KEY ("id_exercice")
);
CREATE TABLE "USED" (
    "id_user" BIGINT,
    "id_exercice" INT,
    "weight" REAL,
    "date" DATETIME,
    PRIMARY KEY ("id_user", "id_exercice"),
    FOREIGN KEY ("id_user") REFERENCES "USER" ("id_user"),
    FOREIGN KEY ("id_exercice") REFERENCES "EXERCICE" ("id_exercice")
);
CREATE TABLE "WELL_BEING" (
    "id_well_being" BIGINT,
    "calories" INT,
    "water" REAL,
    "sleep" REAL,
    "size" REAL,
    "weight" REAL,
    "imc" REAL,
    "date" DATETIME,
    "id_user" BIGINT,
    PRIMARY KEY ("id_well_being"),
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
    "mail" VARCHAR(250),
    "sexe" VARCHAR(50),
    "age" INT,
    "reminderweight" INT,
    "remindermeasurements" INT,
    "id_goal" INT,
    FOREIGN KEY ("id_goal") REFERENCES "GOAL" ("id_goal")
);
CREATE TABLE "FEEDBACK" (
    "id" INT,
    "title" VARCHAR(50),
    "description" VARCHAR,
    "date" DATETIME,
    "id_user" BIGINT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("id_user") REFERENCES "USER" ("id_user")
);
CREATE TABLE "SPORTS_PROGRAM" (
    "id_sports_program" INT,
    "title" VARCHAR(50),
    "description" VARCHAR,
    "level" VARCHAR,
    "creator" VARCHAR,
    PRIMARY KEY ("id_sports_program")
);
CREATE TABLE "MEANSUREMENTS" (
    "id_meansurements" INT,
    "typemeansurements" VARCHAR,
    "valuemeansurements" VARCHAR,
    "id_user" BIGINT,
    PRIMARY KEY ("id_meansurements"),
    FOREIGN KEY ("id_user") REFERENCES "USER" ("id_user")
);
CREATE TABLE "GOAL" (
    "id_goal" INT,
    "calories" INT,
    "water" REAL,
    "sleep" REAL,
    "weight" REAL,
    "imc" REAL,
    "goaltype" VARCHAR,
    PRIMARY KEY ("id_goal")
);


INSERT INTO USER (username, password, mail,  sexe, age, reminderweight, remindermeasurements)
VALUES
  ('ruben','lesuperbemotdepassederuben', 'ruben@gmail.com', 'Homme', 20, 5, 60),
  ('antoine','monmotdepassimpossibleatrouver', 'antoinebouardain@gmail.com', 'Homme', 20, 2, 30);