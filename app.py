import sqlite3
import click

from flask import Flask, g, json, request, jsonify
from werkzeug.security import generate_password_hash, check_password_hash

# from flask_cors import CORS
from flask.cli import with_appcontext

app = Flask(__name__)
# cors = CORS(app)


"""
Enable CORS. Disable it if you don't need CORS
https://parzibyte.me/blog
"""


@app.after_request
def after_request(response):
    response.headers[
        "Access-Control-Allow-Origin"
    ] = "*"  # <- You can change "*" for a domain for example "http://localhost"
    response.headers["Access-Control-Allow-Credentials"] = "true"
    response.headers["Access-Control-Allow-Methods"] = "POST, GET, OPTIONS, PUT, DELETE"
    response.headers[
        "Access-Control-Allow-Headers"
    ] = "Accept, Content-Type, Content-Length, Accept-Encoding, X-CSRF-Token, Authorization"
    return response


@app.route("/")
def index():
    return json.dumps({"username": "ruebn"})

@app.route('/login', methods={"POST"})
def login():
    if request.method == "POST":
        content = request.get_json()
        username = content['username']
        pswd = content['password']
        db = get_db()
        mdp = login(username)
        # conditions to check password and mail
        if (len(mdp) == 0):
            return json.dumps({"message": "Username incorrect"})
        elif check_password_hash(mdp[0]['password'], pswd):
            return json.dumps({"message": "Connexion réussie", "user" : username}) #return token
        else:
            return json.dumps({"message": "Mot de passe incorrect"})

#Insert a new user
@app.route("/register", methods={"POST"})
def inscription():
    if request.method == "POST":
        content = request.get_json()
        username = content['username']
        email = content['mail']
        age = content['age']
        sexe = content['sexe']
        # For the registration we generate a hash for the password.
        pswd1 = generate_password_hash(content['password'])
        db = get_db()
        # check if one user already uses this email
        testEmail = tryEmail(email)
        testUsername = tryUsername(username)
        # if email already used
        if len(testEmail) != 0:
            return json.dumps({"message": "Email déjà utilisé"})
        #if username already used
        elif len(testUsername) != 0:
            return json.dumps({"message": "Username déjà utilisé"})
        else :
            register(username, pswd1, email, age, sexe)
            return json.dumps({"message": "Inscription réussie"})
    
# Récupére toutes les feedbacks
@app.route("/suggestionbugtracker", methods={"POST", "GET"})
def allsuggestionbugtracker():
    if request.method == "GET":
        feedbacks = get_all_feedback()
        return json.dumps({"feedbacks": feedbacks})

# Récupéré une feedback
# param : id(int)
@app.route("/suggestionbugtrackerdetails/<int:id>", methods={"GET"})
def suggestionbugtracker(id: int):
    if request.method == "GET":
        feedbacks = get_feedback(id)
        return json.dumps({"feedbacks": feedbacks})

# Supprimer une feedback
@app.route("/suggestionbugtrackerdetails/delete", methods={"POST"})
def suggestionbugtrackerDelete():
    content = request.get_json()
    username = content['username']
    idFeedback = content['idFeedback']
    if 0 < len(get_role_user(username)) :
        if get_role_user(username)[0]["isAdmin"] == 1:
            delete_feedback(idFeedback)
            return json.dumps({"message" : "Suppresion réussie"})
        else :
            return json.dumps({"message" : "Impossible de supprimer si vous n'êtes pas admin"})
    return json.dumps({"message" : "L'utilisateur n'existe pas"})

# Modifier une feedback
@app.route("/suggestionbugtrackerdetails/update", methods={"POST"})
def suggestionbugtrackerUpdate():
    content = request.get_json()
    username = content['username']
    idFeedback = content['idFeedback']
    state = content['state']
    if 0 < len(get_role_user(username)) :
        if get_role_user(username)[0]["isAdmin"] == 1:
            update_feedback(idFeedback,state)
            return json.dumps({"message" : "Modification réussie"})
        else :
            return json.dumps({"message" : "Impossible de modifier si vous n'êtes pas admin"})
    return json.dumps({"message" : "L'utilisateur n'existe pas"})

# Ajoute une feedback
@app.route("/suggestionbugtrackerdetails/add", methods={"POST"})
def suggestionbugtrackerAdd():
    if request.method == "POST":
        content = request.get_json()
        nature = content['nature']
        title = content['title']
        description = content['description']
        username = content['username']
        if (username == None) :
            add_feedback_without_user(nature, title, description)
            return json.dumps({"message": "Feedback envoyé"})
        id_user = get_id_user(username)
        if len(id_user)==0 :
            return json.dumps({"message" : "L'utilisateur n'existe pas"})
        db = get_db()
        add_feedback(nature, title, description, id_user)
        return json.dumps({"message": "Feedback envoyé"})   

# Récupération de tout les exercices
@app.route("/exercices")
def exercices():
    exercices = make_query("SELECT * FROM exercice;", 0)
    return json.dumps({"exercices": exercices})


# Récupération d'un exercice par id
@app.route("/exercices/<int:id>")
def exercices_by_id(id: int):
    exercice = make_query(f"SELECT * FROM exercice WHERE id_exercice = {id};", 0)
    return json.dumps({"exercice": exercice})

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
        SELECT username, password,isAdmin, mail, sexe, age, reminderweight, remindermeasurements
        FROM USER""",
        0,
    )

def get_role_user(username: str):
    """ Return role of the user """
    return make_query(
        f"""
        SELECT isAdmin 
        FROM USER
        WHERE username = '{username}' """,
        0,
    )

def get_all_feedback():
    """ Return information of all the feedbacks """
    return make_query(
        f"""
        SELECT id, nature, title, description, date, etat, feedback.id_user, user.username, user.mail
        FROM feedback
        LEFT JOIN user on user.id_user = feedback.id_user""",
        0,
    )

def get_feedback(idFeedback: int):
    """ Return information of one feedback """
    return make_query(
        f"""
        SELECT id, nature, title, description, date, etat, feedback.id_user, user.username, user.mail
        FROM feedback
        LEFT JOIN user on user.id_user = feedback.id_user
        WHERE id = {idFeedback}""",
        0,
    )

def delete_feedback(idFeedback: int):
    """ Delete the feedback """
    return make_query(
        f""" DELETE from feedback 
        WHERE id = {idFeedback}""",
        1,
    )

def add_feedback_without_user(nature: str, title: str, description: str):
    """ Add the feedback """
    return make_query(
        f'INSERT INTO feedback (nature,title,description,date,etat) VALUES("{nature}","{title}","{description}",datetime(\'now\',\'+1 hours\'),"Ouvert")',1
    )

def add_feedback(nature: str, title: str, description: str, id_user: int):
    """ Add the feedback """
    return make_query(
        f'INSERT INTO feedback (nature,title,description,date,etat, id_user) VALUES("{nature}","{title}","{description}",datetime(\'now\',\'+1 hours\'),"Ouvert", "{id_user[0]["id_user"]}")',1
    )

def update_feedback(idFeedback: int, state: str):
    """ Update the feedback """
    return make_query(
        f""" UPDATE feedback
        SET etat = '{state}'
        WHERE id = {idFeedback}""",
        1,
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

def get_id_user(username: str):
    """ Return information of the user """
    return make_query(
        f"""
        SELECT id_user
        FROM USER
        WHERE username = '{username}'""",
        0,
    )

def login(username: str):
    """ Return password of the username """
    return make_query(
        f'SELECT password FROM user WHERE username = "{username}"',0
    )

def register(username: str, pswd1: str, email: str, age: int, sexe: str):
    """ add user """
    return make_query(
        f'INSERT INTO user (username,password,mail,age,sexe) VALUES("{username}","{pswd1}","{email}","{age}","{sexe}")',True
    )

def tryEmail(email: str):
    """ return id_user if the mail exist """
    return make_query(
        f'SELECT id_user FROM user WHERE mail = "{email}"',0
    )

def tryUsername(username: str):
    """ return id_user if the username exist """
    return make_query(
        f'SELECT password FROM user WHERE username = "{username}"',0
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