import sqlite3
import click
from flask import Flask, g, render_template, json, request
from flask.cli import with_appcontext
from flask.json import jsonify

app = Flask(__name__)


@app.route("/")
def index():
    return jsonify({"name": "ruben", "email": "ruben.veloso@outlook.com"})

# Cette route ne sert qu'a montrer comment faire. Eviter de l'utiliser surtout quand y'aura beaucoup d'utilisateur !!! 
# Explication : https://medium.com/@PyGuyCharles/python-sql-to-json-and-beyond-3e3a36d32853
# Moyen de faciliter les requetes ici en modifiant correctement la fonction make_query (voir avec Ruben)

@app.route("/test/allUsers")
def all_users():
    """ Return in JSON informations about all the user """
    users = get_all_users()
    usersJSON = []
    for row in users:
            usersJSON.append({'username': row[0], 'password': row[1], 'mail': row[2], 'sexe': row[3], 'age': row[4], 'reminderweight': row[5], 'remindermeasurements': row[6]})

    return json.dumps({'users' : usersJSON})


"""
    Partie BDD
"""


def make_query(query: str, needCommit: bool, isAll: bool = None):
    """ Execute query and make commit if necessary return fetchall if passed in params """
    db = get_db()
    cur = db.cursor()
    cur.execute(query)
    if needCommit:
        db.commit()
        return "DONE"
    if isAll:
        return cur.fetchall()
    return cur.fetchone()

# Cette fonction ne sert qu'a montrer comment faire. Eviter de l'utiliser surtout quand y'aura beaucoup d'utilisateur !!!

def get_all_users():
    """ Return information of all the user """
    return make_query(
        f"""
        SELECT username, password, mail, sexe, age, reminderweight, remindermeasurements
        FROM USER""",
        0,
        1,
    )


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