from datetime import datetime
import sqlite3
import click

from flask import Flask, g, json, request, jsonify
from werkzeug.security import generate_password_hash, check_password_hash
from datetime import datetime

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
    if (len(role) == 0):
        return json.dumps({"message": "Cet utilisateur n'existe pas"})
    return json.dumps({"role": role})


@app.route("/login", methods={"POST"})
def login():
    if request.method == "POST":
        content = request.get_json()
        username = content["username"]
        pswd = content["password"]
        db = get_db()
        mdp = login(username)
        # conditions to check password and mail
        if len(mdp) == 0:
            return json.dumps({"message": "Username incorrect"})
        elif check_password_hash(mdp[0]['password'], pswd):
            if (len(get_well_being(username)) == 0):
                create_well_being(get_id_user(username), get_size_user(get_id_user(username)))
            return json.dumps({"message": "Connexion réussie", "user": username})  # return token
        else:
            return json.dumps({"message": "Mot de passe incorrect"})

@app.route("/user/weight/today/<string:username>", methods={"POST"})
def weight_Of_The_Day_Empty(username:str):
    if request.method == "POST":
        content = request.get_json()
        date = content
        print(date)
        id_user = get_id_user(username)[0]["id_user"]
        weight = get_weight(id_user,date)
        print(weight)
        if (len(weight) > 0) :
            bool = True
            return json.dumps({"exist": bool})
        elif (len(weight) == 0) :
            print("je suis faux")
            bool = False
            return json.dumps({"exist": bool})

@app.route("/user/water/today/<string:username>", methods={"POST"})
def water_Of_The_Day_Empty(username:str):
    if request.method == "POST":
        content = request.get_json()
        date = content
        id_user = get_id_user(username)[0]["id_user"]
        water = get_water(id_user,date)
        print(water)
        if (len(water) > 0) :
            bool = True
            print("je suis vraie")
            return json.dumps({"exist": bool})
        elif (len(water) == 0) :
            print("je suis faux mais je dois etre vrai")
            bool = False
            return json.dumps({"exist": bool})

@app.route("/user/sleep/today/<string:username>", methods={"POST"})
def sleep_Of_The_Day_Empty(username:str):
    if request.method == "POST":
        content = request.get_json()
        date = content
        id_user = get_id_user(username)[0]["id_user"]
        sleep = get_sleep(id_user,date)
        if (len(sleep) > 0) :
            bool = True
            return json.dumps({"exist": bool})
        elif (len(sleep) == 0) :
            print("je suis faux")
            bool = False
            return json.dumps({"exist": bool})



#Insert a new user

# Insert a new user
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
        # if username already used
        elif len(testUsername) != 0:
            return json.dumps({"message": "Username déjà utilisé"})
        else:
            register(username, pswd1, email, age, sexe)
            return json.dumps({"message": "Inscription réussie"})


@app.route("/user/<string:username>", methods={"POST"})
def update_profil(username: str):
    content = request.get_json()['user']
    new_username = content['username']
    password = content['password']
    print(content)
    print(username)
    if not password:
        update_username(new_username, username)
        return json.dumps({"message": "Pseudonyme mis à jour."})
    else:
        password = generate_password_hash(password)
        update_username_and_password(new_username, username, password)
        return json.dumps({"message": "Le pseudonyme et le mot de passe ont été mis à jour."})


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
        if (len(get_feedback(id)) == 0):
            return json.dumps({"message": "Ce feedback n'existe pas"})
        return json.dumps({"feedbacks": feedbacks})


# Supprimer une feedback
@app.route("/feedbacksdetails/delete", methods={"POST"})
def suggestionbugtrackerDelete():
    content = request.get_json()
    username = content['username']
    idFeedback = content['idFeedback']
    if 0 < len(get_role_user(username)):
        if get_role_user(username)[0]["isAdmin"] == 1:
            delete_feedback(idFeedback)
            return json.dumps({"message": "Action réussie"})
        else:
            return json.dumps({"message": "Impossible de supprimer si vous n'êtes pas admin"})
    return json.dumps({"message": "L'utilisateur n'existe pas"})


# Modifier une feedback
@app.route("/feedbacksdetails/update", methods={"POST"})
def suggestionbugtrackerUpdate():
    content = request.get_json()
    username = content['username']
    idFeedback = content['idFeedback']
    state = content['state']
    if 0 < len(get_role_user(username)):
        if get_role_user(username)[0]["isAdmin"] == 1:
            update_feedback(idFeedback, state)
            return json.dumps({"message": "Action réussie"})
        else:
            return json.dumps({"message": "Impossible de modifier si vous n'êtes pas admin"})
    return json.dumps({"message": "L'utilisateur n'existe pas"})


# Ajoute une feedback
@app.route("/feedbacksdetails/add", methods={"POST"})
def suggestionbugtrackerAdd():
    if request.method == "POST":
        content = request.get_json()
        nature = content['nature']
        title = content['title']
        description = content['description']
        username = content['username']
        if (username == None):
            add_feedback_without_user(nature, title, description)
            return json.dumps({"message": "Feedback envoyé"})
        id_user = get_id_user(username)
        if len(id_user) == 0:
            return json.dumps({"message": "L'utilisateur n'existe pas"})
        db = get_db()
        add_feedback(nature, title, description, id_user)
        return json.dumps({"message": "Feedback envoyé"})


# Récupération de tout les exercices
@app.route("/exercices")
def exercices():
    exercices = get_all_exercices()
    return json.dumps({"exercices": exercices})


# Récupération d'un exercice par id
@app.route("/exercicesdetails", methods={"POST"})
def exercices_by_id_details():
    content = request.get_json()
    id = content['id_exercice']
    exercice = get_exercice(id)
    if (len(get_exercice(id)) == 0):
        return json.dumps({"message": "Cette exercice n'existe pas"})
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
    add_exercice(title, imagehelp, nbreps, nbseries, restseries, restexercice, id_muscle, id_sports_program)
    return json.dumps({"message": "Exercice créer"})


# Update d'un exercice
@app.route("/exercice/update", methods={"POST"})
def exerciceUpdate():
    content = request.get_json()
    id_exercice = content['id_exercice']
    username = content['username']
    id_user = get_id_user(username)
    nbreps = content['nbreps']
    nbseries = content['nbseries']
    restseries = content['restseries']
    restexercice = content['restexercice']
    db = get_db()
    update_exercice(id_exercice, id_user, nbreps, nbseries, restseries, restexercice)
    return json.dumps({"message": "Action réussie"})


# Suppresion d'un exercice
@app.route("/exercice/delete", methods={"POST"})
def exerciceDelete():
    content = request.get_json()
    id_exercice = content['id_exercice']
    username = content['username']
    id_user = get_id_user(username)
    db = get_db()
    exercice = get_exercice(id_exercice)
    if (len(exercice) == 0):
        return json.dumps({"message": "Cette exercice n'existe pas"})
    delete_exercice(id_exercice, id_user)
    return json.dumps({"message": "Action réussie"})


# Affichage des cinq derniers résultats
@app.route("/result", methods={"POST"})
def result():
    content = request.get_json()
    id_exercice = content['id_exercice']
    username = content['username']
    id_user = get_id_user(username)
    results = get_result(id_exercice, id_user)
    return json.dumps({"results": results})


# Créer un résultat
@app.route("/result/add", methods={"POST"})
def resultAdd():
    content = request.get_json()
    id_exercice = content['id_exercice']
    username = content['username']
    weight = content['weight']
    id_user = get_id_user(username)
    results = add_result(id_exercice, id_user, weight)
    return json.dumps({"message": "Le résultat a été créer"})


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
        return json.dumps({"message": "Cette utilisateur n'existe pas"})
    sportsprogram = get_sportsprogram_of_user(id_user)
    return json.dumps({"sportsprogram": sportsprogram})


# Affichage des détails d'un programme
@app.route("/sportsprogramdetails", methods={"POST"})
def sportsprogramdetails():
    content = request.get_json()
    id_sports_program = content['id_sports_program']
    sportsprogram = get_sportsprogram_withid(id_sports_program)
    exercice = get_exercice_withidsportsprogram(id_sports_program)
    if (len(get_sportsprogram_withid(id_sports_program)) == 0):
        return json.dumps({"message": "Ce programme sportif n'existe pas"})
    return json.dumps({"sportsprogram": sportsprogram, "exercice": exercice})


# Création d'un programme
@app.route("/sportsprogramdetails/add", methods={"POST"})
def sportsprogramadd():
    content = request.get_json()
    title = content['title']
    description = content['description']
    level = content['level']
    creator = content['creator']
    username = content['username']
    id_user = get_id_user(username)[0]['id_user']
    add_sportsprogram(title, description, level, creator, id_user)
    return json.dumps({"message": "Programme créer"})


# Suppresion d'un programme
@app.route("/sportsprogramdetails/delete", methods={"POST"})
def sportsprogramdelete():
    content = request.get_json()
    id_sports_program = content['id_sports_program']
    delete_sportsprogram(id_sports_program)
    return json.dumps({"message": "Suppresion réussie"})


# Update d'un programme
@app.route("/sportsprogramdetails/update", methods={"POST"})
def sportsprogramupdate():
    content = request.get_json()
    title = content['title']
    description = content['description']
    level = content['level']
    id_sports_program = content['id_sports_program']
    update_sportsprogram(id_sports_program, title, description, level)
    return json.dumps({"message": "Modification réussie"})

# Insert a new value of water
@app.route("/addWater", methods={"POST"})
def addWaterHistorique():
    if request.method == "POST":
        content = request.get_json()
        water = content['water']
        date = content['date']
        calories = content['calories']
        username = content['username']
        id_user = get_id_user(username)[0]["id_user"]
        if calories > 0:
            make_query(
                f'UPDATE WELL_BEING SET calories = calories + {calories} WHERE id_user="{id_user}" and date="{date}";',
                True)
            return json.dumps({"message": "Ajout des calories réussi."})
        """SI LA LIGNE EXISTE MAIS WATER A NULL"""
        if (len(get_user_water_waterIsEmpty(id_user,date)) > 0 and len(get_user_water_waterIsNotEmpty(id_user,date))==0) :
            make_query(f'UPDATE WELL_BEING SET water = "{water}" WHERE id_user="{id_user}" and date="{date}"', True)
            print("premier if")
            return json.dumps({"message": "Insertion réussie"})
        elif (len(get_user_water_waterIsEmpty(id_user,date)) == 0 and len(get_user_water_waterIsNotEmpty(id_user,date))==0):
            make_query(f'INSERT INTO WELL_BEING (id_user,water,date) VALUES("{id_user}","{water}","{date}")', True)
            print("deuxieme if")
            return json.dumps({"message": "Insertion réussie pour ce jour ! N'oubliez pas d'ajouter vos mensurations pour ce jour"})
        else:
            print("troisième if")
            return json.dumps({"message": "Insertion déjà existante, veuillez la modifier dans le menu"})

@app.route("/addWeight", methods={"POST"})
def addWeightHistorique():
    if request.method == "POST":
        content = request.get_json()
        weight = content['weight']
        date = content['date']
        username = content['username']
        id_user = get_id_user(username)[0]["id_user"]
        """SI LA LIGNE EXISTE MAIS WATER A NULL"""
        if (len(get_user_weight_weightIsEmpty(id_user,date)) > 0 and len(get_user_weight_weightIsNotEmpty(id_user,date))==0) :
            make_query(f'UPDATE WELL_BEING SET weight = "{weight}" WHERE id_user="{id_user}" and date="{date}"', True)
            return json.dumps({"message": "Insertion réussie"})
        elif (len(get_user_weight_weightIsEmpty(id_user,date)) == 0 and len(get_user_weight_weightIsNotEmpty(id_user,date))==0):
            make_query(f'INSERT INTO WELL_BEING (calories,id_user,weight,date) VALUES(0, "{id_user}","{weight}","{date}")', True)
            return json.dumps({"message": "Insertion réussie pour ce jour"})
        else:
            return json.dumps({"message": "Insertion déjà existante pour cette date, veuillez la modifier dans le menu"})


# Update a new value of water
@app.route("/updateWater/<int:idWaterOfWellBeing>", methods={"POST"})
def updateWaterHistorique(idWaterOfWellBeing: int):
    if request.method == "POST":
        content = request.get_json()
        water = content['water']
        print(water)
        print(idWaterOfWellBeing)
        make_query(f'UPDATE WELL_BEING set water="{water}" WHERE id_well_being="{idWaterOfWellBeing}" ', True)
        return json.dumps({"message": "Update réussie"})

# Update a new value of water
@app.route("/updateWeight/<int:idWeightOfWellBeing>", methods={"POST"})
def updateWeightHistorique(idWeightOfWellBeing: int):
    if request.method == "POST":
        content = request.get_json()
        weight = content['weight']
        make_query(f'UPDATE WELL_BEING set weight="{weight}" WHERE id_well_being="{idWeightOfWellBeing}" ', True)
        return json.dumps({"message": "Update réussie"})

@app.route("/user/weight/pageable/<string:username>")
def userWeightsPageable(username: str):
    limit, offset = request.args.get('limit', type=int), request.args.get('offset', type=int)
    """Return in JSON Informations about user water"""
    userWeight = get_weightsOfUserPageable(username,limit, offset)
    number_elements = count_all_weightOfUser(username)[0]['total']
    return json.dumps({"userWeight": userWeight, "total": number_elements})

@app.route("/user/weight/<string:username>")
def userWeights(username: str):
    print("JE SUIS LA")
    """Return in JSON Informations about user water"""
    userWeight = get_weightsOfUser(username)
    return json.dumps({"userWeight": userWeight})


@app.route("/user/weight/<string:username>/filter", methods=["POST"])
def userWeightsFilter(username: str):
    if request.method == "POST":
        limit, offset = request.args.get('limit', type=int), request.args.get('offset', type=int)
        number_elements = count_all_weightOfUser(username)[0]['total']
        content = request.get_json()
        dateStart = content['dateStart']
        dateEnd = content['dateEnd']
        userWeight = get_weightsOfUserFilter(username, dateStart, dateEnd,limit, offset)
        return json.dumps({"message": "Filtrage réussie", "userWeight": userWeight,"total": number_elements})

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


# Récupération d'un exercice par id ou nom
@app.route("/exercice", methods=["GET"])
def exercices_by_id_or_names():
    """
    Cette méthode renvoie l'exercice voulu par l'id ou le nom spécifié en paramètre pour rappel : ?name= ou ?id=
    """
    if request.method == "GET":
        if request.args.get("id"):
            id = request.args.get("id")
            exercice = make_query(
                f"SELECT * FROM exercice WHERE id_exercice = {id};", 0
            )
        else:
            title = request.args.get("title").lower()
            exercice = make_query(
                f"SELECT * FROM exercice WHERE LOWER(title) = '{title}' ;", 0
            )

@app.route("/user/water/pageable/<string:username>")
def userWatersPageable(username: str):
    """Return in JSON Informations about user water"""
    print("JE DOIS M'AFFICHER")
    limit, offset = request.args.get('limit', type=int), request.args.get('offset', type=int)
    number_elements = count_all_waterOfUser(username)[0]['total']
    userWater = get_watersOfUserPageable(username,limit, offset)
    return json.dumps({"userWater": userWater, 'total': number_elements,"total": number_elements})

@app.route("/user/water/<string:username>")
def userWaters(username: str):
    """Return in JSON Informations about user water"""
    userWater = get_watersOfUser(username)
    return json.dumps({"userWater": userWater})


@app.route("/user/water/<string:username>/filter", methods=["POST"])
def userWatersFilter(username: str):
    if request.method == "POST":
        content = request.get_json()
        dateStart = content['dateStart']
        dateEnd = content['dateEnd']
        userWater = get_watersOfUserFilter(username, dateStart, dateEnd)
        return json.dumps({"message": "Filtrage réussie", "userWater": userWater})


# Récupération d'un exercice par id
@app.route("/exercices/<int:id>")
def exercices_by_id(id: int):
    exercice = make_query(f"SELECT * FROM exercice WHERE id_exercice = {id};", 0)
    return json.dumps({"exercice": exercice})


@app.route("/wellBeing/<string:username>", methods=["GET"])
def get_well_being(username: str):
    data = make_query(
        f"SELECT wb.* fROM user u INNER JOIN WELL_BEING wb ON u.id_user = wb.id_user WHERE u.username = '{username}' ORDER BY wb.date;",
        needCommit=False)
    return json.dumps({'well_being': data})


@app.route("/wellBeing/<string:username>/stats", methods=["GET"])
def get_well_being_stats(username: str):
    print(username)
    data = get_well_being(username)
    data_avg = get_well_being_stats(username)
    return json.dumps({'well_being_stats': data, 'well_being_avg': data_avg})


@app.route("/aliments")
def get_all_aliments():
    limit, offset = request.args.get('limit', type=int), request.args.get('offset', type=int)
    data = get_all_aliments_from_bdd(limit, offset)
    number_elements = count_all_aliments()[0]['total']
    return json.dumps({'aliments': data, 'total': number_elements})

@app.route("/sleeps", methods={"POST"})
def weightAndSleep():
    content = request.get_json()
    username = content['username']
    sleeps = get_well_being_for_sleep(username)
    return json.dumps({"sleeps" : sleeps})

@app.route("/sleeps/addSleep", methods={"POST"})
def addSleep():
    content = request.get_json()
    username = content['username']
    date = content['date']
    data = make_query(f"SELECT wb.* fROM user u INNER JOIN WELL_BEING wb ON u.id_user = wb.id_user WHERE u.username = '{username}' ORDER BY wb.date DESC;", needCommit=False)
    sleep = float(content['sleep'])
    for i in data:
        if(date == i['date']) :
            return json.dumps({"message": "Sommeil déjà saisi pour cette date!"})
    insert_well_being(data[0]['calories'],data[0]['water'],sleep,data[0]['weight'],data[0]['size'],data[0]['imc'],data[0]['id_user'],date)
    return json.dumps({"message": "insertion réussie"})
    


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
        f'INSERT INTO feedback (nature,title,description,date,etat) VALUES("{nature}","{title}","{description}",datetime(\'now\',\'+1 hours\'),"Ouvert")',
        1
    )

def add_feedback(nature: str, title: str, description: str, id_user: int):
    """ Add the feedback """
    return make_query(
        f'INSERT INTO feedback (nature,title,description,date,etat, id_user) VALUES("{nature}","{title}","{description}",datetime(\'now\',\'+1 hours\'),"Ouvert", "{id_user[0]["id_user"]}")',
        1
    )

def update_feedback(idFeedback: int, state: str):
    """ Update the feedback """
    return make_query(
        f""" UPDATE feedback
        SET etat = '{state}'
        WHERE id = {idFeedback}""",
        1,
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


def get_watersOfUserPageable(username: str,limit, offset):
    """return les enregistrements en eau d'un user"""
    userId = get_id_user(username)[0]["id_user"]
    return make_query(
        f"""
        SELECT id_well_being,date,water, weight
        FROM WELL_BEING
        WHERE id_user = {userId} order by date desc LIMIT {limit} OFFSET {offset}""",
        0,
    )

def get_watersOfUser(username: str):
    """return les enregistrements en eau d'un user"""
    userId = get_id_user(username)[0]["id_user"]
    return make_query(
        f"""
        SELECT id_well_being,date,water, weight,calories
        FROM WELL_BEING
        WHERE id_user = {userId} order by date desc""",
        0,
    )


def get_watersOfUserFilter(username: str, dateStart: datetime, dateEnd: datetime):
    """return les enregistrements en eau d'un user"""
    userId = get_id_user(username)[0]["id_user"]
    return make_query(
        f"""
        SELECT id_well_being,date,water, weight,calories
        FROM WELL_BEING
        WHERE id_user = {userId} and date between '{dateStart}' and '{dateEnd}' order by date desc""",
        0,
    )


def get_weightsOfUserPageable(username: str,limit, offset):
    """return les enregistrements en eau d'un user"""
    userId = get_id_user(username)[0]["id_user"]
    return make_query(
        f"""
        SELECT id_well_being,date,water, weight
        FROM WELL_BEING
        WHERE id_user = {userId} order by date desc  LIMIT {limit} OFFSET {offset}""",
        0,)

def get_weightsOfUser(username: str):
    """return les enregistrements en eau d'un user"""
    userId = get_id_user(username)[0]["id_user"]
    print(userId)
    return make_query(
        f"""
        SELECT id_well_being,date,water, weight
        FROM WELL_BEING
        WHERE id_user = {userId} order by date desc""",
        0,)

def get_weightsOfUserFilter(username: str, dateStart: datetime, dateEnd: datetime,limit, offset):
    """return les enregistrements en eau d'un user"""
    userId = get_id_user(username)[0]["id_user"]
    return make_query(
        f"""
        SELECT id_well_being,date,water, weight
        FROM WELL_BEING
        WHERE id_user = {userId} and date between '{dateStart}' and '{dateEnd}' order by date desc  LIMIT {limit} OFFSET {offset}""",
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




def login(username: str):
    """ Return password of the username """
    return make_query(
        f'SELECT password FROM user WHERE username = "{username}"', 0
    )


def register(username: str, pswd1: str, email: str, age: int, sexe: str):
    """ add user """
    return make_query(
        f'INSERT INTO user (username,password,mail,age,sexe) VALUES("{username}","{pswd1}","{email}","{age}","{sexe}")',
        True
    )


def tryEmail(email: str):
    """ return id_user if the mail exist """
    return make_query(
        f'SELECT id_user FROM user WHERE mail = "{email}"', 0
    )


def tryUsername(username: str):
    """ return id_user if the username exist """
    return make_query(
        f'SELECT password FROM user WHERE username = "{username}"', 0
    )


def get_result(id_exercice: int, id_user: int):
    """ return the five last result of an exercice and user """
    return make_query(
        f""" SELECT * 
        FROM used
        WHERE id_user = {id_user[0]["id_user"]} and id_exercice = {id_exercice}
        ORDER BY date DESC
        LIMIT 5""", 0
    )


def add_result(id_exercice: int, id_user: int, weight: int):
    """ add a result on a exercice for a user """
    return make_query(
        f""" INSERT INTO used(id_user, id_exercice, weight, date) 
        VALUES ({id_user[0]["id_user"]}, {id_exercice}, {weight}, datetime(\'now\',\'+1 hours\'))""", 1
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


def get_water(id_user: int, date: datetime):
    """ return one exercice with muscle that made work """
    return make_query(
        f"""SELECT id_well_being 
                    FROM WELL_BEING
                    WHERE id_user = {id_user} and date = '{date}' and water is not null;""", 0
    )
def get_weight(id_user: int, date: datetime):
    """ return one exercice with muscle that made work """
    return make_query(
        f"""SELECT id_well_being 
                    FROM WELL_BEING
                    WHERE id_user = {id_user} and date = '{date}' and weight is not null;""", 0
    )
def get_sleep(id_user: int, date: datetime):
    """ return one exercice with muscle that made work """
    return make_query(
        f"""SELECT id_well_being 
                    FROM WELL_BEING
                    WHERE id_user = {id_user} and date = '{date}' and sleep is not null;""", 0
    )

def delete_exercice(id_exercice: int, id_user: int):
    """ delete one exercice """
    return make_query(
        f""" DELETE FROM exercice
        WHERE id_exercice = {id_exercice}""", 1
    )


def update_exercice(id_exercice: int, id_user: int, nbreps: int, nbseries: int, restseries: str, restexercice: str):
    """ update one exerice"""
    return make_query(
        f""" UPDATE exercice
            SET nbreps = '{nbreps}', nbseries = '{nbseries}', restseries = '{restseries}', restexercice = '{restexercice}'
            WHERE id_exercice = {id_exercice}""", 1
    )


def get_id_muscle(muscle: str):
    """ return muscle with his id """
    return make_query(
        f""" SELECT id_muscle
        FROM muscle
        WHERE name = '{muscle}'""", 0
    )


def add_exercice(title: str, imagehelp: str, nbreps: int, nbseries: int, restseries: int, restexercice: int,
                 id_muscle: int, id_sports_program: int):
    """ create an exercice with the muscle that made work """
    make_query(
        f""" INSERT INTO exercice (title,imagehelp,nbreps,nbseries,restseries, restexercice) 
        VALUES("{title}","{imagehelp}","{nbreps}","{nbseries}","{restseries}", "{restexercice}") """, 1
    )
    make_query(
        f""" INSERT INTO have (id_sports_program, id_exercice)
        VALUES("{id_sports_program}",(SELECT max(id_exercice) from EXERCICE))""", 1
    )
    return make_query(
        f""" INSERT INTO made_work(id_muscle, id_exercice) 
        VALUES("{id_muscle[0]["id_muscle"]}",(SELECT max(id_exercice) from EXERCICE))""", 1)


def get_all_sportsprogram():
    """ get all the sports program """
    return make_query(
        f""" SELECT * 
        FROM sports_program""", 0
    )


def get_sportsprogram_of_user(id_user: int):
    """ get the sports program of the user """
    return make_query(
        f""" SELECT sports_program.id_sports_program, creator, description, level, title
        FROM sports_program
        LEFT JOIN may_have_a
        ON sports_program.id_sports_program = may_have_a.id_sports_program
        LEFT JOIN user
        ON may_have_a.id_user = user.id_user
        WHERE may_have_a.id_user = {id_user[0]["id_user"]}""", 0
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
        WHERE sports_program.id_sports_program = {id_sports_program} """, 0
    )


def get_exercice_withidsportsprogram(id_sports_program: int):
    """ get the exercices of the sports program """
    return make_query(
        f""" SELECT exercice.id_exercice, exercice.title, imagehelp, nbreps, nbseries, restseries, restexercice, muscle.name
        FROM exercice
        LEFT JOIN have
        ON exercice.id_exercice = have.id_exercice
        LEFT JOIN sports_program
        ON sports_program.id_sports_program = have.id_sports_program
        LEFT JOIN made_work
        on made_work.id_exercice = exercice.id_exercice
        LEFT JOIN muscle
        on muscle.id_muscle = made_work.id_muscle
        WHERE have.id_sports_program = {id_sports_program} """, 0
    )


def add_sportsprogram(title: str, description: str, level: str, creator: str, id_user: int):
    """ create a empty sportprogram """
    make_query(
        f""" INSERT INTO sports_program (title, description, level, creator)
        VALUES ("{title}", "{description}", "{level}", "{creator}")""", 1
    )
    return make_query(
        f""" INSERT INTO may_have_a (id_user, id_sports_program, date)
        VALUES ({id_user}, (SELECT max(id_sports_program) from sports_program), datetime(\'now\',\'+1 hours\'))""",
        1
    )


def delete_sportsprogram(id_sports_program: int):
    """ delete a sportprogram """
    make_query(
        f""" DELETE FROM may_have_a 
        WHERE id_sports_program = {id_sports_program}""", 1
    )
    return make_query(
        f""" DELETE FROM sports_program
        WHERE id_sports_program = {id_sports_program}""", 1
    )


def update_sportsprogram(id_sports_program: int, title: str, description: str, level: str):
    """ update a sportprogram """
    print(f"""UPDATE sports_program
        SET title = '{title}', description = '{description}', level = '{level}'
        WHERE id_sports_program = {id_sports_program}""")
    return make_query(
        f""" UPDATE sports_program
        SET title = '{title}', description = '{description}', level = '{level}'
        WHERE id_sports_program = {id_sports_program}""", 1
    )


def get_well_being(username: str):
    return make_query(
        f"""SELECT wb.calories, wb.water, wb.sleep, wb.date
            fROM user u INNER JOIN WELL_BEING wb ON u.id_user = wb.id_user
            WHERE u.username = '{username}' ORDER BY wb.date DESC LIMIT 10;""", needCommit=False)

def get_well_being_for_sleep(username: str):
    return make_query(
            f"""SELECT wb.weight, wb.sleep, wb.date
            fROM user u INNER JOIN WELL_BEING wb ON u.id_user = wb.id_user
            WHERE u.username = '{username}' ORDER BY wb.date DESC LIMIT 10;""", needCommit=False)

def get_well_being_stats(username: str):
    return make_query(
        f"""SELECT round(round(avg(wb.calories)), 0) as 'avgCalories', round(avg(wb.water),1) as 'avgWater', round(avg(wb.sleep)) as 'avgSleep'
                        FROM WELL_BEING wb INNER JOIN USER u on wb.id_user = u.id_user
                        WHERE u.username = '{username}' ORDER BY wb.date DESC LIMIT 5;
            """, False
    )
def get_user_water_waterIsNotEmpty(id_user: str, date: datetime):
    """ Return information of the user """
    return make_query(
        f"""
                    SELECT id_well_being 
                    FROM WELL_BEING
                    WHERE id_user = {id_user} and date = '{date}' and water is not null""",
        0)

def get_user_water_waterIsEmpty(id_user: str, date: datetime):
    """ Return information of the user """
    return make_query(
        f"""
                    SELECT id_well_being 
                    FROM WELL_BEING
                    WHERE id_user = {id_user} and date = '{date}' and water is null""",
        0)

def get_user_weight_weightIsNotEmpty(id_user: str, date: datetime):
    """ Return information of the user """
    return make_query(
        f"""
                    SELECT id_well_being 
                    FROM WELL_BEING
                    WHERE id_user = {id_user} and date = '{date}' and weight is not null""",
        0)

def get_user_weight_weightIsEmpty(id_user: str, date: datetime):
    """ Return information of the user """
    return make_query(
        f"""
                    SELECT id_well_being 
                    FROM WELL_BEING
                    WHERE id_user = {id_user} and date = '{date}' and weight is null""",
        0)

def get_size_user(id: str):
    return make_query(
        f""" SELECT max(size) as size
        FROM well_being
        WHERE id_user = {id[0]["id_user"]}""", 0
    )

def get_well_being_withdate(username: str):
    return make_query(
            f"""SELECT wb.calories, wb.water, wb.sleep, wb.date
            fROM user u 
            INNER JOIN WELL_BEING wb 
            ON u.id_user = wb.id_user
            WHERE u.username = '{username}' 
            AND wb.date = date(\'now\',\'+1 hours\')
            ORDER BY wb.date DESC LIMIT 10;""", 0
    )


def create_well_being(id: str, size: str):
    print(len({size[0]["size"]}))
    if (len({size[0]["size"]}) == 1):
        return make_query(
            f""" INSERT INTO well_being(date, id_user, calories)
            VALUES (date(\'now\',\'+1 hours\'), {id[0]["id_user"]}, 0 )""", 1
        )
    else:
        return make_query(
            f""" INSERT INTO well_being(date, id_user, size, calories)
            VALUES (date(\'now\',\'+1 hours\'), {id[0]["id_user"]},  {size[0]["size"]}, 0)""", 1
        )


def update_username(username: str, old_username: str):
    make_query(f"""UPDATE USER SET username = '{username}' WHERE username = '{old_username}';""", needCommit=True)


def update_username_and_password(username: str, old_username: str, password: str):
    make_query(
        f"""UPDATE USER SET username = '{username}', password = '{password}' WHERE username = '{old_username}';""",
        needCommit=True)


def get_all_aliments_from_bdd(limit, offset):
    return make_query(f"SELECT * FROM aliment WHERE calories is not null and calories <> 0 LIMIT {limit} OFFSET {offset};", needCommit=False)


def count_all_aliments():
    return make_query(f"SELECT count(Id) as 'total' FROM aliment;", needCommit=False)

def count_all_waterOfUser(username:str):
    userId = get_id_user(username)[0]["id_user"]
    return make_query(f"SELECT count(id_well_being) as 'total' FROM WELL_BEING where id_user = {userId};", needCommit=False)

def count_all_weightOfUser(username:str):
    userId = get_id_user(username)[0]["id_user"]
    return make_query(f"SELECT count(id_well_being) as 'total' FROM WELL_BEING where id_user = {userId};", needCommit=False)


def insert_well_being(calories : float, water : float , sleep : float , weight : float,  size : float, imc : float, id_user : int, date : str):
    return make_query(
        f"""INSERT INTO WELL_BEING(calories,water,sleep,size,weight,imc,date,id_user) 
        VALUES(0,'{water}','{sleep}','{size}','{weight}','{imc}','{date}','{id_user}');
            """, True
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


def init_data():
    """ Injection des données dans la base """
    db = get_db()
    with app.open_resource("data.sql") as f:
        db.executescript(f.read().decode("utf-8-sig"))


@click.command("init-data")
@with_appcontext
def init_data_command():
    """ Execute script insert des données """
    init_data()
    click.echo("Data set.")


app.teardown_appcontext(close_db)
app.cli.add_command(init_db_command)
app.cli.add_command(init_data_command)
