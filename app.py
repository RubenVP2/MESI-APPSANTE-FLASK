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

# Envoie le role de l'utilisateur
@app.route('/isAdmin', methods={"POST"})
def isAdmin():
    content = request.get_json()
    username = content['username']
    db = get_db()
    role = get_role_user(username)
    if (len(role) == 0) :
        return json.dumps({"message" : "Cet utilisateur n'existe pas"})
    return json.dumps({"role": role})


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
@app.route("/feedbacks", methods={"POST", "GET"})
def allsuggestionbugtracker():
    if request.method == "GET":
        feedbacks = get_all_feedback()
        return json.dumps({"feedbacks": feedbacks})

# Récupéré une feedback
# param : id(int)
@app.route("/feedbacksdetails/<int:id>", methods={"GET"})
def suggestionbugtracker(id: int):
    if request.method == "GET":
        feedbacks = get_feedback(id)
        if (len(get_feedback(id)) == 0) :
            return json.dumps({"message" : "Ce feedback n'existe pas"})
        return json.dumps({"feedbacks": feedbacks})

# Supprimer une feedback
@app.route("/feedbacksdetails/delete", methods={"POST"})
def suggestionbugtrackerDelete():
    content = request.get_json()
    username = content['username']
    idFeedback = content['idFeedback']
    if 0 < len(get_role_user(username)) :
        if get_role_user(username)[0]["isAdmin"] == 1:
            delete_feedback(idFeedback)
            return json.dumps({"message" : "Action réussie"})
        else :
            return json.dumps({"message" : "Impossible de supprimer si vous n'êtes pas admin"})
    return json.dumps({"message" : "L'utilisateur n'existe pas"})

# Modifier une feedback
@app.route("/feedbacksdetails/update", methods={"POST"})
def suggestionbugtrackerUpdate():
    content = request.get_json()
    username = content['username']
    idFeedback = content['idFeedback']
    state = content['state']
    if 0 < len(get_role_user(username)) :
        if get_role_user(username)[0]["isAdmin"] == 1:
            update_feedback(idFeedback,state)
            return json.dumps({"message" : "Action réussie"})
        else :
            return json.dumps({"message" : "Impossible de modifier si vous n'êtes pas admin"})
    return json.dumps({"message" : "L'utilisateur n'existe pas"})

# Ajoute une feedback
@app.route("/feedbacksdetails/add", methods={"POST"})
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
    exercices = get_all_exercices()
    return json.dumps({"exercices": exercices})


# Récupération d'un exercice par id
@app.route("/exercices/<int:id>")
def exercices_by_id(id: int):
    exercice = get_exercice(id)
    if (len(get_exercice(id)) == 0) :
        return json.dumps({"message" : "Cette exercice n'existe pas"})
    return json.dumps({"exercice": exercice})

# Création d'un exercice
@app.route("/exercices/add", methods={"POST"})
def exercicesAdd():
    content = request.get_json()
    title = content['title']
    imagehelp = content['imagehelp']
    nbreps = content['nbreps']
    nbseries = content['nbseries']
    restseries = content['restseries']
    restexercice = content['restexercice']
    muscle = content['muscle']    
    id_sports_program = content['id_sports_program']
    id_muscle = get_id_muscle(muscle)
    db = get_db()
    add_exercice(title,imagehelp,nbreps,nbseries, restseries, restexercice, id_muscle, id_sports_program)
    return json.dumps({"message": "Exercice créer"})   

# Affichage de tout les programmes
@app.route("/sportsprogram")
def sportsprogram():
    sportsprogram = get_all_sportsprogram()
    return json.dumps({"sportsprogram": sportsprogram})

# Affichage des programmes de l'utilisateur
@app.route("/sportsprogramofuser", methods={"POST"})
def sportsprogramofuser():
    content = request.get_json()
    username = content['username']
    id_user = get_id_user(username)
    if (len(get_id_user(username)) == 0):
        return json.dumps({"message" : "Cette utilisateur n'existe pas"})
    sportsprogram = get_sportsprogram_of_user(id_user)
    return json.dumps({"sportsprogram": sportsprogram})

# Affichage des détails d'un programme
@app.route("/sportsprogramdetails", methods={"POST"})
def sportsprogramdetails():
    content = request.get_json()
    id_sports_program = content['id_sports_program']
    sportsprogram = get_sportsprogram_withid(id_sports_program)
    exercice = get_exercice_withidsportsprogram(id_sports_program)
    if (len(get_sportsprogram_withid(id_sports_program)) == 0) :
        return json.dumps({"message" : "Ce programme sportif n'existe pas"})
    return json.dumps({"sportsprogram": sportsprogram, "exercice" : exercice})

# Création d'un programme
@app.route("/sportsprogramdetails/add", methods={"POST"})
def sportsprogramadd():
    content = request.get_json()
    title = content['title']
    description = content['description']
    level = content['level']
    creator = content['creator']
    username = content['username']
    id_user = get_id_user(username)
    add_sportsprogram(title, description, level, creator, id_user)
    return json.dumps({"message" : "Programme créer"})

# Suppresion d'un programme
@app.route("/sportsprogramdetails/delete", methods={"POST"})
def sportsprogramdelete():
    content = request.get_json()
    id_sports_program = content['id_sports_program']
    delete_sportsprogram(id_sports_program)
    return json.dumps({"message" : "Suppresion réussie"})

# Update d'un programme
@app.route("/sportsprogramdetails/update", methods={"POST"})
def sportsprogramupdate():
    content = request.get_json()
    title = content['title']
    description = content['description']
    level = content['level']
    id_sports_program = content['id_sports_program']
    update_sportsprogram(id_sports_program, title,description, level)
    return json.dumps({"message" : "Modification réussie"})

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

def get_all_exercices():
    """ return all exercices with muscle that made work """
    return make_query(
        f"""SELECT * 
        FROM exercice 
        LEFT JOIN made_work 
        ON exercice.id_exercice = made_work.id_exercice 
        LEFT JOIN muscle 
        ON made_work.id_muscle = muscle.id_muscle""", 0
    )

def get_exercice(id: int):
    """ return one exercice with muscle that made work """
    return make_query(
        f"""SELECT * 
        FROM exercice 
        LEFT JOIN made_work 
        ON exercice.id_exercice = made_work.id_exercice 
        LEFT JOIN muscle 
        ON made_work.id_muscle = muscle.id_muscle
        WHERE exercice.id_exercice = {id};""", 0
    )

def get_id_muscle(muscle: str):
    """ return muscle with his id """
    return make_query(
        f""" SELECT id_muscle
        FROM muscle
        WHERE name = '{muscle}'""",0
    )

def add_exercice(title: str, imagehelp: str, nbreps: int, nbseries: int, restseries: int, restexercice: int, id_muscle: int, id_sports_program: int):
    """ create an exercice with the muscle that made work """
    make_query(
        f""" INSERT INTO exercice (title,imagehelp,nbreps,nbseries,restseries, restexercice) 
        VALUES("{title}","{imagehelp}","{nbreps}","{nbseries}","{restseries}", "{restexercice}") """,1
    )
    make_query(
        f""" INSERT INTO have (id_sports_program, id_exercice)
        VALUES("{id_sports_program}",(SELECT max(id_exercice) from EXERCICE))""",1
    )
    return make_query(
        f""" INSERT INTO made_work(id_muscle, id_exercice) 
        VALUES("{id_muscle[0]["id_muscle"]}",(SELECT max(id_exercice) from EXERCICE))""",1)

def get_all_sportsprogram():
    """ get all the sports program """
    return make_query(
        f""" SELECT * 
        FROM sports_program""",0
    )

def get_sportsprogram_of_user(id_user: int):
    """ get the sports program of the user """
    return make_query(
        f""" SELECT creator, description, level, title
        FROM sports_program
        LEFT JOIN may_have_a
        ON sports_program.id_sports_program = may_have_a.id_sports_program
        LEFT JOIN user
        ON may_have_a.id_user = user.id_user
        WHERE may_have_a.id_user = {id_user[0]["id_user"]}""",0
    )

def get_sportsprogram_withid(id_sports_program: int):
    """ get the sports program of the id """
    return make_query(
        f""" SELECT creator, description, level, sports_program.title
        FROM sports_program
        LEFT JOIN have
        ON sports_program.id_sports_program = have.id_sports_program
        LEFT JOIN exercice
        ON have.id_exercice = exercice.id_exercice
        WHERE sports_program.id_sports_program = {id_sports_program} """,0
    )

def get_exercice_withidsportsprogram(id_sports_program: int):
    """ get the exercices of the sports program """
    return make_query(
        f""" SELECT exercice.title, imagehelp, nbreps, nbseries, restseries, restexercice, muscle.name
        FROM exercice
        LEFT JOIN have
        ON exercice.id_exercice = have.id_exercice
        LEFT JOIN sports_program
        ON sports_program.id_sports_program = have.id_sports_program
        LEFT JOIN made_work
        on made_work.id_exercice = exercice.id_exercice
        LEFT JOIN muscle
        on muscle.id_muscle = made_work.id_muscle
        WHERE have.id_sports_program = {id_sports_program} """,0
    )

def add_sportsprogram(title: str, description: str, level: str, creator: str, id_user: int):
    """ create a empty sportprogram """
    make_query(
        f""" INSERT INTO sports_program (title, description, level, creator)
        VALUES ('{title}', '{description}', '{level}', '{creator}')""",1
    )
    return make_query(
        f""" INSERT INTO may_have_a (id_user, id_sports_program, date)
        VALUES ({id_user[0]["id_user"]}, (SELECT max(id_sports_program) from sports_program), datetime(\'now\',\'+1 hours\'))""",1
    )

def delete_sportsprogram(id_sports_program: int):
    """ delete a sportprogram """
    make_query(
        f""" DELETE FROM may_have_a 
        WHERE id_sports_program = {id_sports_program}""",1
    )
    return make_query(
        f""" DELETE FROM sports_program
        WHERE id_sports_program = {id_sports_program}""",1
    )

def update_sportsprogram(id_sports_program: int, title: str, description: str, level: str):
    """ update a sportprogram """
    print(f"""UPDATE sports_program
        SET title = '{title}', description = '{description}', level = '{level}'
        WHERE id_sports_program = {id_sports_program}""")
    return make_query(
        f""" UPDATE sports_program
        SET title = '{title}', description = '{description}', level = '{level}'
        WHERE id_sports_program = {id_sports_program}""",1
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