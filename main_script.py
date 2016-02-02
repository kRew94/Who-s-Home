#!/usr/bin/python

##############################
#######  Main Script  ########
##############################

import subprocess
import time
from datetime import datetime
import sqlite3


def checkIfHome(ip):
    output = subprocess.Popen(
        ["sudo", "arping", "-c", "3", ip], stdout=subprocess.PIPE, shell=False)
    check = output.communicate()[0]
    check = output.returncode

    return check

def updateClient(clientID, cur):

    home = checkIfHome(cur.execute(
        '''SELECT ip FROM client WHERE id = ?''', (clientID,)).fetchone()[0])
    time = cur.execute(
        '''SELECT time FROM client WHERE id = ?''', (clientID,)).fetchone()[0]

    if home == 0:
        time = datetime.now().strftime("%I:%M %p - %d.%m.%Y")
        cur.execute('''UPDATE client SET online = ? WHERE id = ?''',
                    ("Yes", clientID))
        cur.execute('''UPDATE client SET time = ? WHERE id = ?''',
                    (time, clientID))
    else:
        cur.execute('''UPDATE client SET online = ? WHERE id = ?''',
                    ("No", clientID))
        cur.execute('''UPDATE client SET time = ? WHERE id = ?''',
                    (time, clientID))

sleepTime = 60
run = True

try:
    while(run):
        conn = sqlite3.connect('Client.db')
        cur = conn.cursor()

        cur.execute('''SELECT id FROM client''')
        clients = cur.fetchall()

        for client in clients:
            updateClient(client[0], cur)

        conn.commit()
        conn.close()
        time.sleep(sleepTime)

except KeyboardInterrupt:
    print "Fertig"
