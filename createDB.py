#!/usr/bin/python

##############################
########  Create DB   ########
##############################

import sqlite3

conn = sqlite3.connect('Client.db')
print "Opened database successfully"

conn.execute('''CREATE TABLE IF NOT EXISTS client
       (id INTEGER PRIMARY KEY AUTOINCREMENT,
       name TEXT,
       ip TEXT,
       online TEXT,
       time TEXT,
       mac TEXT);''')
print "Table created successfully"

conn.close()
