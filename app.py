import sqlite3
import click
from flask import Flask, g, render_template
from flask.cli import with_appcontext
from flask.json import jsonify

app = Flask(__name__)


@app.route("/")
def index():
    return jsonify({"name": "ruben", "email": "ruben.veloso@outlook.com"})


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