#!/usr/bin/python

from bottle import route, run, template, static_file
import re, sqlite3
from datetime import datetime
import subprocess

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
        ssid = subprocess.Popen(["sudo", "iwgetid", "-r"], stdout = subprocess.PIPE).communicate()[0].rstrip()
        return template('index.tpl',ssid = ssid, clientOnline = clientOnline, allClient ,lastReload = datetime.now().strftime("%H:%M - %d.%m.%Y"))
    except ValueError:
        return template('<p>Please reload the page!</p>')

    con.close()

#Host the Webserver on the local private IP the Raspberry got (e.g. 192.168.0.100:8080)
run(host='0.0.0.0', port=8080, debug='True', reloader='True')
