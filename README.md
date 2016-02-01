#![Who's Home](https://github.com/kRew94/Who-s-Home/blob/master/static/img/long_logo.png)

Who's Home is a simple to install Webpage which displays who is at your house.

1. [Requierments](#requirements)
2. [Installation](#installation)
3. [Usage](#usage)
4. [Features](#features)
5. [Screenshot](#screenshot)
5. [License](#license)

## Requierments

**Tested on a Raspberry Pi 2 with Raspbian Jessie**

You need the following things installed on your Raspberry Pi

- [Python 2.7.11 or above](https://www.python.org/downloads/)
- [Bottle: Python Web Framework](http://bottlepy.org/docs/dev/index.html)
- [SQLite3](https://www.sqlite.org/download.html)

##Installation

To use Who's Home you need to download the .zip and extract the contents wherever you want. You can also clone the repo by typing

```
git clone https://github.com/kRew94/Who-s-Home.git
```


##Usage

- Go to the Unziped Folder
- First you need to create the DB, use the createDB.py with the following command ```python createDB.py```
- Now you need to add clients to your database
- Use the command ```sqlite3 Client.db```
- Now there should be a new view ```sqlite>  ```
- Now type ```INSERT INTO client VALUES (<id(INTEGER)>, <name(STRING)>, <ip-address(STRING)>, <online(STRING)>, <time(STRING)>, <mac-address(STRING)>);``` e.g. ```INSERT INTO client VALUES (1, "Apple Seed", "192.168.0.2", "No", "07:35 AM - 01.02.2016", "00:14:22:01:23:45");```
- After this you need to exit the sqlite shell with the ```.exit``` command
- Next you need to start the main\_script.py with the command ```python main_script.py &```
- Finally you start the server with the following line of goodness ```python whosHome.py```
- Now open up your favorite favorite Webbrowser (Chrome, Firefox, Safari, etc.)
- Navigate to your local IP-Address (e.g. 192.168.0.100:8080)
- Have fun!

To add more clients you need to do the following:
- Navigate to the Who's Home folder
- Use the command ```sqlite3 Client.db```
- Now there should be a new view ```sqlite>  ```
- Now type ```INSERT INTO client VALUES (<id(INTEGER)>, <name(STRING)>, <ip-address(STRING)>, <online(STRING)>, <time(STRING)>, <mac-address(STRING)>);``` e.g. ```INSERT INTO client VALUES (1, "Apple Seed", "192.168.0.2", "No", "07:35 AM - 01.02.2016", "00:14:22:01:23:45");```
- After this you need to exit the sqlite shell with the ```.exit``` command
- No need to restart the whosHome.py or main_script.py!

##Features

Who's Home offers the following features:
* Nice and clean UI
* Uses SQLite3 for data storing
* Dynamic website to show your clients

##Screenshot

![Overview](http://i.imgur.com/45QU3hT.png)

##License

The MIT License (MIT)

Copyright (c) 2016 [Stephan Marschner](http://krewarts.de/)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
