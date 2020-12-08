import sqlite3
import click

from flask import Flask, g, json
from flask_cors import CORS
from flask.cli import with_appcontext

app = Flask(__name__)
cors = CORS(app)


@app.route("/")
def index():
    return json.dumps({"username": "ruebn"})


# Cette route ne sert qu'a montrer comment faire. Eviter de l'utiliser surtout quand y'aura beaucoup d'utilisateur !!!

@app.route("/test/user/all")
def all_users():
    """ Return in JSON informations about all the user """
    users = get_all_users()
    return json.dumps({"users": users})


@app.route("/test/user/<int:idUser>")
def user(idUser: int):
    """ Return in JSON informations about the user """
    user = get_user(idUser)
    return json.dumps({"user": user})


"""
    Partie BDD
"""

def get_all_users():
    """ Return information of all the user """
    return make_query(
        f"""
        SELECT username, password, mail, sexe, age, reminderweight, remindermeasurements
        FROM USER""",
        0,
    )

def get_user(idUser: int):
    """ Return information of the user """
    return make_query(
        f"""
        SELECT username, password, mail, sexe, age, reminderweight, remindermeasurements
        FROM USER
        WHERE id_user = {idUser}""",
        0,
    )

def make_query(query: str, needCommit: bool):
    """ Execute la requête passé en paramètre """
    db = get_db()
    cur = db.cursor()
    results = cur.execute(query)
    # needCommit permet de spécifier si la database doit persister les données ( mettre a True si c'est un Update / INSERT / DELETE )
    if needCommit:
        db.commit()
        return "DONE"
    items = [dict(zip([key[0] for key in cur.description], row)) for row in results]
    return items


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