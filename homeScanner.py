#!/usr/bin/python

from bottle import route, run, template, static_file
import re, sqlite3
from datetime import datetime

"""
Script for the Webserver which creates the Index.html with the data from the database
"""

#Responsible for the CSS files
@route('/static/<filename:path>')
def send_static(filename):
    return static_file(filename, root='./static/')

#Host the Index.html at the root of your server
@route('/')
def index():
        
    con = sqlite3.connect('Client.db')
    cur = con.cursor()
    
    clientOnline = len(cur.execute('SELECT * FROM client WHERE online = "Ja"').fetchall())
    allClient = cur.execute('SELECT * FROM client').fetchall()

    try:
        return template('index.tpl',clientOnline = clientOnline, ipStephan = cur.execute('select ip from client where id="1"').fetchone()[0] , homeStephan = cur.execute('select online from client where id="1"').fetchone()[0], onlineStephan = cur.execute('select time from client where id="1"').fetchone()[0], ipAnita = cur.execute('select ip from client where id="2"').fetchone()[0], homeAnita = cur.execute('select online from client where id="2"').fetchone()[0], onlineAnita = cur.execute('select time from client where id="2"').fetchone()[0], ipNicole = cur.execute('select ip from client where id="3"').fetchone()[0], homeNicole = cur.execute('select online from client where id="3"').fetchone()[0], onlineNicole = cur.execute('select time from client where id="3"').fetchone()[0], ipBernd = cur.execute('select ip from client where id="4"').fetchone()[0], homeBernd = cur.execute('select online from client where id="4"').fetchone()[0], onlineBernd = cur.execute('select time from client where id="4"').fetchone()[0], ipTim = cur.execute('select ip from client where id="5"').fetchone()[0], homeTim = cur.execute('select online from client where id="5"').fetchone()[0], onlineTim = cur.execute('select time from client where id="5"').fetchone()[0], ipFelina = cur.execute('select ip from client where id="6"').fetchone()[0], homeFelina = cur.execute('select online from client where id="6"').fetchone()[0], onlineFelina = cur.execute('select time from client where id="6"').fetchone()[0],ipRene = cur.execute('select ip from client where id="7"').fetchone()[0], homeRene = cur.execute('select online from client where id="7"').fetchone()[0], onlineRene = cur.execute('select time from client where id="7"').fetchone()[0],ipNadine = cur.execute('select ip from client where id="8"').fetchone()[0], homeNadine = cur.execute('select online from client where id="8"').fetchone()[0], onlineNadine = cur.execute('select time from client where id="8"').fetchone()[0],lastReload = datetime.now().strftime("%H:%M - %d.%m.%Y"))
    except ValueError:
        return template('<p>Please reload the page!</p>')
    
    con.close()

#Host the Webserver on the local private IP the Raspberry got (e.g. 192.168.0.100:8080)
run(host='0.0.0.0', port=8080, debug='True', reloader='True')


