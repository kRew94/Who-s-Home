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

- [Python 2.7.11](https://www.python.org/downloads/)
- [Bottle: Python Web Framework](http://bottlepy.org/docs/dev/index.html)
- [SQLite3](https://www.sqlite.org/download.html)

##Installation

To use Who's Home you need to download the .zip and extract the contents wherever you want. You can also clone the repo by typing

```
git clone https://github.com/kRew94/Who-s-Home.git
```


##Usage

- Go to the unziped folder
- First you need to create the DB, use the createDB.py with the following command ```python createDB.py```
- Now you need to add clients to your database
- To do this you need to run the following command ```pyhton addClient.py```
- Finally you can start Who's Home with the following command ```sh start.sh```
- Now open up your favorite favorite browser (Chrome, Firefox, Safari, etc.)
- Navigate to your local IP-Address (default is set to 0.0.0.0:8080)
- Have fun!

####To add more clients you need to do the following:
- Navigate to the Who's Home folder
- Run the following command ```pyhton addClient.py```
- That's it! You can add as many clients as you please

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
