from flask import Flask
from flask_sqlalchemy import SQLAlchemy
import os

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = os.getenv('DATABASE_URL')
db = SQLAlchemy(app)

from app import routes, models

from flask_migrate import Migrate

migrate = Migrate(app, db)

# Автоматические миграции
@app.before_first_request
def create_tables():
    db.create_all()