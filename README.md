# MESI-APPSANTE-FLASK
Api de l'application APPSANTE pour le projet MESI.  

[![Publish Docker image](https://github.com/RubenVP2/MESI-APPSANTE-FLASK/actions/workflows/docker-ci.yaml/badge.svg)](https://github.com/RubenVP2/MESI-APPSANTE-FLASK/actions/workflows/docker-ci.yaml)
[![CI](https://github.com/RubenVP2/MESI-APPSANTE-FLASK/actions/workflows/main.yml/badge.svg)](https://github.com/RubenVP2/MESI-APPSANTE-FLASK/actions/workflows/main.yml)
[![Bugs](https://sonarcloud.io/api/project_badges/measure?project=Mesi-flask&metric=bugs)](https://sonarcloud.io/dashboard?id=Mesi-flask)
[![Lines of Code](https://sonarcloud.io/api/project_badges/measure?project=Mesi-flask&metric=ncloc)](https://sonarcloud.io/dashboard?id=Mesi-flask)
[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=Mesi-flask&metric=sqale_rating)](https://sonarcloud.io/dashboard?id=Mesi-flask)

## Installation

1. Créer son environnement virtuel :  
`python3 -m venv venv`
2. Activer l'environnement  
Windows : `env\Scripts\activate.bat` 
Linux/MacOS : `source myvenv/bin/activate`
4. Installer les dépendances
`pip install flask`
6. Mettre en place les variables d'environnement FLASK_APP et FLASK_ENV
7. Initialiser la bdd
  - Lancer une première fois l'application : ` flask run`
  - Lancer la commande pour l'initialisation de la bdd : ` flask init-db`
  - Lancer la commande pour l'injection des données : ` flask init-data`
