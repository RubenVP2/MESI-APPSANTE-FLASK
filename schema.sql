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
DROP TABLE IF EXISTS ALIMENT;
-- A FAIRE ! ! ! ! ! Confirmer les typages
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
CREATE TABLE ALIMENT(
    Id DOUBLE,
    Nom VARCHAR(100),
    Categorie VARCHAR(100),
    Densit VARCHAR(100),
    Unite VARCHAR(100),
    energie VARCHAR(100),
    calories DOUBLE
);