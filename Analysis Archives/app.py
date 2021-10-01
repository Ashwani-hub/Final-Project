from flask import Flask, render_template, redirect, url_for
from flask_pymongo import PyMongo
import scraping

app = Flask(__name__)

# Use flask_pymongo to set up mongo connection
app.config["MONGO_URI"] = "mongodb://localhost:27017/income_app"
mongo = PyMongo(app)

@app.route("/")
def index():
   income = mongo.db.mars.find_one()
   return render_template("index.html", income=income)

@app.route("/scrape")
def scrape():
   income = mongo.db.income
   income_data = scraping.scrape_all()
   income.update({}, income_data, upsert=True)
   return redirect('/', code=302)

if __name__ == "__main__":
   app.run()
