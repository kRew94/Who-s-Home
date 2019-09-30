![Who's Home](https://github.com/kRew94/Who-s-Home/blob/master/static/img/long_logo_3.png)

Who's Home is a simple to install webpage which displays who is at your house.

1. [Requierments](#requirements)
2. [Installation/Usage](#installation/usage)
3. [Features](#features)
4. [Screenshot](#screenshot)
5. [License](#license)

## Requierments

**Tested on a Raspberry Pi 2/3 with Raspbian Jessie and on a Raspberry Pi 3b+ with Raspian Buster**

You need the following things installed on your Raspberry Pi

- [Python 3.x](https://www.python.org/downloads/)
- [Bottle: Python Web Framework](http://bottlepy.org/docs/dev/index.html)
- [SQLite3](https://www.sqlite.org/download.html)
- [Arping](https://packages.debian.org/en/stretch/arping)
- [Git](https://git-scm.com/download/linux)

## Installation/Usage

**⚠️ BEWARE IF YOU USE A RASPBERRY PI 3! YOU NEED TO DEACTIVATE THE POWER MANAGEMENT OF THE WIFI CHIP AS SEEN [HERE](https://www.raspberrypi.org/forums/viewtopic.php?t=46569&p=647343) ⚠️**

- Use a fresh install of Raspian from [here](https://www.raspberrypi.org/downloads/raspbian/)
- After booting your machine up for the first time, make sure to connect to your main WiFi-network or connect the Raspberry Pi via LAN to your network. For further instructions you can have a look up [here](https://www.raspberrypi.org/documentation/configuration/wireless/wireless-cli.md)
- Next make sure you install all the requierted packages listed above.
    * Python 3.x should already be installed (otherwise ```sudo apt-get install python3```)
    * Bottle ```sudo apt-get install python-bottle```
    * SQLite3 ```sudo apt-get install sqlite3```
    * Arping ```sudo apt-get install apring```
    * Git ```sudo apt-get install git```
- After everything is setup you should be ready to install Who's Home
- Get Who's Home by typing the following ```git clone https://github.com/kRew94/Who-s-Home.git```
- Go to the unziped folder
- First you need to create the DB, use the createDB.py with the following command ```python3 createDB.py```
- Now you need to add clients to your database
- To do this you need to run the following command ```python3 addClient.py```
- Finally you can start Who's Home with the following command ```sh start.sh```
- Now open up your favorite favorite browser (Chrome, Firefox, Safari, etc.) on another host in your network
- Navigate to your local IP-address (default is set to <ip_of_raspberry_pi>:8080)
- Have fun!

#### To add more clients you need to do the following:
- Navigate to the Who's Home folder
- Run the following command ```python3 addClient.py```
- That's it! You can add as many clients as you please

## Features

Who's Home offers the following features:
* Nice and clean UI
* Uses SQLite3 for data storing
* Dynamic website to show your clients

## Screenshot

<img src="http://i.imgur.com/45QU3hT.png" alt="Overview" width="512">
<img src="https://i.imgur.com/9GkLR6q.jpg" alt="Overview" width="512">


## License

The MIT License (MIT)

Copyright (c) 2019 [Stephan Marschner](http://krewarts.de/)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
