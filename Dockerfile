FROM python:3.8
COPY . /app
WORKDIR /app
RUN pip install -r requirements
EXPOSE $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0 app:app

#guicorn required when you want to deploy webapp on heroku cloud, workers 4 means 4 machine for load balancing,
# bind 0.0.0.0 is the base port for Heroku and app.py is my file and app is name of my flask app 