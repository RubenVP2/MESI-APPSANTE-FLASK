import sqlite3
import click

from flask import Flask, g, json
from flask.cli import with_appcontext

app = Flask(__name__)


@app.route("/")
def index():
    return json.dumps({"username": "ruebn"})


# Cette route ne sert qu'a montrer comment faire. Eviter de l'utiliser surtout quand y'aura beaucoup d'utilisateur !!!
# Explication : https://medium.com/@PyGuyCharles/python-sql-to-json-and-beyond-3e3a36d32853
# Moyen de faciliter les requetes ici en modifiant correctement la fonction make_query (voir avec Ruben)


@app.route("/test/allUsers")
def all_users():
    """ Return in JSON informations about all the user """
    users = make_query(
        f"SELECT username, password, mail, sexe, age, reminderweight, remindermeasurements FROM USER ",
        0,
        isAll=1,
    )
    return json.dumps({"users": users})


"""
    Partie BDD
"""


def make_query(query: str, needCommit: bool, isAll: bool = None):
    """ Execute la requête passé en paramètre """
    db = get_db()
    cur = db.cursor()
    results = cur.execute(query)
    # needCommit permet de spécifier si la database doit persister les données ( mettre a True si c'est un Update / INSERT / DELETE )
    if needCommit:
        db.commit()
        return "DONE"
    # Spécifie si on doit retourner un tableau avec tout les éléments ( True si c'est un select et que l'on attend plusieurs valeurs )
    if isAll:
        items = [dict(zip([key[0] for key in cur.description], row)) for row in results]
        return items
    # Si needCommit et isAll sont à False alors ça retourne le seul élément du select ( à utiliser par exemple pour sélectionner un utilisateur précis)
    item = [dict(zip([key[0] for key in cur.description], row)) for row in results]
    return item


def get_db():
    """ Get DB """
    if "db" not in g:
        g.db = sqlite3.connect("instance/bdd.db", detect_types=sqlite3.PARSE_DECLTYPES)
        g.db.row_factory = sqlite3.Row
    return g.db


def close_db(e=None):
    """ Close DB """
    db = g.pop("db", None)
    if db is not None:
        db.close()


def init_db():
    """ Initialise DB """
    db = get_db()
    with app.open_resource("schema.sql") as f:
        # Pour éxécuter du script SQL
        db.executescript(f.read().decode("utf8"))


@click.command("init-db")
@with_appcontext
def init_db_command():
    """Clear the existing data and create new tables."""
    init_db()
    click.echo("Initialized the database.")


app.teardown_appcontext(close_db)
app.cli.add_command(init_db_command)