import os
from flask import Flask, redirect,request,render_template,session
import sqlite3
import random
from datetime import datetime
import json
app=Flask(__name__)
db= 'personalDB.db'
try:
    with open('views.json','r') as f:
        views=json.loads(f.read())
except:
    
    views = 12
    with open('views.json','w') as f:
        json.dump(views,f)
def increment():
    global views
    views += 1
    with open('views.json','w') as f:
        json.dump(views,f)
@app.route('/')
def gohome():
    return redirect('home')
@app.route('/home')
def home():
    increment()
    return render_template('home.html')
@app.route('/plushies')
def plushies():
    if request.method =='GET':
        conn = sqlite3.connect(db)
        cur = conn.cursor()
        cur.execute('select * from Plushies order by dateObtained desc')
        plushie = cur.fetchall()
        print(plushie[0])
        return render_template('plushies.html',plosh=plushie)



if __name__ == '__main__':
    app.run(debug=True)
