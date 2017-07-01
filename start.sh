#!/bin/bash

##############################
#####  Start Who's Home  #####
##############################

# Starts the main script which updates the data from the DB every 60 seconds
python main_script.py &
# Start the actual server where the website will be hosted to (default: 0.0.0.0:8080)
python whosHome.py &
