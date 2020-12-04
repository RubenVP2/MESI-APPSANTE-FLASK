FROM python:3.7.1-alpine

ENV FLASK_APP "app.py"
ENV FLASK_DEBUG True

WORKDIR /opt/python-tp

COPY . .

RUN pip install flask

EXPOSE 5000

CMD flask run --host=0.0.0.0