-- A FAIRE ! ! ! ! ! Changer les types de variables 
CREATE TABLE "MADE_WORK" (
    "id_muscle" VARCHAR(42),
    "id_exercice" VARCHAR(42),
    PRIMARY KEY ("id_muscle", "id_exercice"),
    FOREIGN KEY ("id_muscle") REFERENCES "MUSCLE" ("id_muscle"),
    FOREIGN KEY ("id_exercice") REFERENCES "EXERCICE" ("id_exercice")
);
CREATE TABLE "MUSCLE" (
    "id_muscle" VARCHAR(42),
    "name" VARCHAR(42),
    PRIMARY KEY ("id_muscle")
);
CREATE TABLE "PROFIL" (
    "id_profil" VARCHAR(42),
    "food" VARCHAR(42),
    "activitysport" VARCHAR(42),
    "activitypro" VARCHAR(42),
    "date" VARCHAR(42),
    "id_user" VARCHAR(42),
    PRIMARY KEY ("id_profil"),
    FOREIGN KEY ("id_user") REFERENCES "USER" ("id_user")
);
CREATE TABLE "EXERCICE" (
    "id_exercice" VARCHAR(42),
    "title" VARCHAR(42),
    "imagehelp" VARCHAR(42),
    "nbreps" VARCHAR(42),
    "nbseries" VARCHAR(42),
    "restseries" VARCHAR(42),
    "restexercice" VARCHAR(42),
    PRIMARY KEY ("id_exercice")
);
CREATE TABLE "USED" (
    "id_user" VARCHAR(42),
    "id_exercice" VARCHAR(42),
    "weight" VARCHAR(42),
    "date" VARCHAR(42),
    PRIMARY KEY ("id_user", "id_exercice"),
    FOREIGN KEY ("id_user") REFERENCES "USER" ("id_user"),
    FOREIGN KEY ("id_exercice") REFERENCES "EXERCICE" ("id_exercice")
);
CREATE TABLE "WELL_BEING" (
    "id_well_being" VARCHAR(42),
    "calories" VARCHAR(42),
    "water" VARCHAR(42),
    "sleep" VARCHAR(42),
    "size" VARCHAR(42),
    "weight" VARCHAR(42),
    "imc" VARCHAR(42),
    "date" VARCHAR(42),
    "id_user" VARCHAR(42),
    PRIMARY KEY ("id_well_being"),
    FOREIGN KEY ("id_user") REFERENCES "USER" ("id_user")
);
CREATE TABLE "HAVE" (
    "id_sports_program" VARCHAR(42),
    "id_exercice" VARCHAR(42),
    PRIMARY KEY ("id_sports_program", "id_exercice"),
    FOREIGN KEY ("id_sports_program") REFERENCES "SPORTS_PROGRAM" ("id_sports_program"),
    FOREIGN KEY ("id_exercice") REFERENCES "EXERCICE" ("id_exercice")
);
CREATE TABLE "MAY_HAVE_A" (
    "id_user" VARCHAR(42),
    "id_sports_program" VARCHAR(42),
    "date" VARCHAR(42),
    PRIMARY KEY ("id_user", "id_sports_program"),
    FOREIGN KEY ("id_user") REFERENCES "USER" ("id_user"),
    FOREIGN KEY ("id_sports_program") REFERENCES "SPORTS_PROGRAM" ("id_sports_program")
);
CREATE TABLE "USER" (
    "id_user" VARCHAR(42),
    "username" VARCHAR(42),
    "password" VARCHAR(42),
    "mail" VARCHAR(42),
    "sexe" VARCHAR(42),
    "age" VARCHAR(42),
    "reminderweight" VARCHAR(42),
    "remindermeasurements" VARCHAR(42),
    "id_goal" VARCHAR(42),
    PRIMARY KEY ("id_user"),
    FOREIGN KEY ("id_goal") REFERENCES "GOAL" ("id_goal")
);
CREATE TABLE "FEEDBACK" (
    "id" VARCHAR(42),
    "title" VARCHAR(42),
    "description" VARCHAR(42),
    "date" VARCHAR(42),
    "id_user" VARCHAR(42),
    PRIMARY KEY ("id"),
    FOREIGN KEY ("id_user") REFERENCES "USER" ("id_user")
);
CREATE TABLE "SPORTS_PROGRAM" (
    "id_sports_program" VARCHAR(42),
    "title" VARCHAR(42),
    "description" VARCHAR(42),
    "level" VARCHAR(42),
    "creator" VARCHAR(42),
    PRIMARY KEY ("id_sports_program")
);
CREATE TABLE "MEANSUREMENTS" (
    "id_meansurements" VARCHAR(42),
    "typemeansurements" VARCHAR(42),
    "valuemeansurements" VARCHAR(42),
    "id_user" VARCHAR(42),
    PRIMARY KEY ("id_meansurements"),
    FOREIGN KEY ("id_user") REFERENCES "USER" ("id_user")
);
CREATE TABLE "GOAL" (
    "id_goal" VARCHAR(42),
    "calories" VARCHAR(42),
    "water" VARCHAR(42),
    "sleep" VARCHAR(42),
    "weight" VARCHAR(42),
    "imc" VARCHAR(42),
    "goaltype" VARCHAR(42),
    PRIMARY KEY ("id_goal")
);