FROM python:3.8.12-alpine

ENV FLASK_APP "app.py"
ENV FLASK_DEBUG True

WORKDIR /opt/python-tp

COPY . .

RUN pip install flask
RUN pip install -U flask-cors

EXPOSE 5000

CMD flask run --host=0.0.0.0