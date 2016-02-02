#!/usr/bin/python

##############################
########  Add Client  ########
##############################

import sqlite3

print("Please fill the following entries")

name = raw_input("Name: ")
ip = raw_input("IP-address: ")
mac = raw_input("MAC-address: ")

conn = sqlite3.connect('Client.db')
cur = conn.cursor()

cur.execute('''INSERT INTO client (name, ip, online, time, mac) VALUES (?, ?, ?, ?, ?)''',
            (name, ip, "No", "N/A", mac))

conn.commit()
conn.close()
