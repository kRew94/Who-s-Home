#!/usr/bin/python

##############################
########  Add Client  ########
##############################

import sqlite3

print("Please fill the following entries")

name = input("Name: ")
ip = input("IP-address: ")
mac = input("MAC-address: ")

if mac == "":
    mac = "N/A"

conn = sqlite3.connect('Client.db')
cur = conn.cursor()

cur.execute('''INSERT INTO client (name, ip, online, time, mac) VALUES (?, ?, ?, ?, ?)''',
            (name, ip, "No", "N/A", mac))

conn.commit()
conn.close()
