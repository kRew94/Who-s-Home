<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>NMS - NCC-1701</title>
    <link rel="shortcut icon" type="image/png" href="/static/favicon.png">

    <!-- Bootstrap core CSS -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/static/css/jumbotron-narrow.css" rel="stylesheet">

    <!-- Font Awesome Implement -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <div class="container">
        <div class="header clearfix">
            <nav>
                <ul class="nav nav-pills pull-right">
                    <li role="presentation" class="active"><a href="/"><i class="fa fa-refresh"></i> Reload</a></li>
                </ul>
            </nav>
            <h3 class="text-muted"><i class="fa fa-wifi"></i> NMS</h3>
        </div>
        <div class="jumbotron">
            <h1><i class="fa fa-wifi"></i> Network Monitoring System</h1>
            <hr/>
            <p class="lead">Diese Seite dient zum monitoring der WLAN Geräte des Netzwerkes NCC-1701. Sie zeigt an, wann welches WLAN-Gerät ( <i class="fa fa-mobile"></i> ), mit dem Router (192.168.2.1) verbunden ist. Dies geschieht mithilfe des Ping Kommandos und der IP-Adresse des jeweiligen WLAN-Gerätes.</p>
        </div>
        % if clientOnline == 1:
        <div class="alert alert-success" role="alert">Es ist {{clientOnline}} Benutzer online</div>
        % elif clientOnline > 1:
        <div class="alert alert-success" role="alert">Es sind {{clientOnline}} Benutzer online</div>
        % else:
        <div class="alert alert-danger" role="alert">Es ist kein Benutzer online</div>
        % end
        <div class="row">
            <div class="col-sm-6">
                <h4>Stephan Marschner
                % if homeStephan == "Ja":
                <span class="label label-success">Online <i class="fa fa-arrow-up online"></i></span>
                % else:
                <span class="label label-danger">Offline <i class="fa fa-arrow-down offline"></i></span>
                % end
                </h4>
                <p id="stephanData">
                    <ul>
                        <li id="ip-address"><b>IP-Adresse: </b>{{ipStephan}}</li>
                        <li id="isOnline"><b>Zuhause: </b>{{homeStephan}}</li>
                        <li id="lastOnline"><b>Zuletzt Zuhause: </b>{{onlineStephan}}</li>
                    </ul>
                </p>

                <h4>Anita Marschner
                % if homeAnita == "Ja":
                <span class="label label-success">Online <i class="fa fa-arrow-up online"></i></span>
                % else:
                <span class="label label-danger">Offline <i class="fa fa-arrow-down offline"></i></span>
                % end
                </h4>
                <p id="anitaData">
                    <ul>
                        <li id="ip-address"><b>IP-Adresse: </b>{{ipAnita}}</li>
                        <li id="isOnline"><b>Zuhause: </b>{{homeAnita}}</li>
                        <li id="lastOnline"><b>Zuletzt Zuhause: </b>{{onlineAnita}}</li>
                    </ul>
                </p>

                <h4>Nicole Marschner
                % if homeNicole == "Ja":
                <span class="label label-success">Online <i class="fa fa-arrow-up online"></i></span>
                % else:
                <span class="label label-danger">Offline <i class="fa fa-arrow-down offline"></i></span>
                % end
                </h4>
                <p id="nicoleData">
                    <ul>
                        <li id="ip-address"><b>IP-Adresse: </b>{{ipNicole}}</li>
                        <li id="isOnline"><b>Zuhause: </b>{{homeNicole}}</li>
                        <li id="lastOnline"><b>Zuletzt Zuhause: </b>{{onlineNicole}}</li>
                    </ul>
                </p>

                <h4>Bernd Marschner
                % if homeBernd == "Ja":
                <span class="label label-success">Online <i class="fa fa-arrow-up online"></i></span>
                % else:
                <span class="label label-danger">Offline <i class="fa fa-arrow-down offline"></i></span>
                % end
                </h4>
                <p id="berndData">
                    <ul>
                        <li id="ip-address"><b>IP-Adresse: </b>{{ipBernd}}</li>
                        <li id="isOnline"><b>Zuhause: </b>{{homeBernd}}</li>
                        <li id="lastOnline"><b>Zuletzt Zuhause: </b>{{onlineBernd}}</li>
                    </ul>
                </p>
            </div>
            <div class="col-sm-6">
                <h4>Tim Heubrock
                % if homeTim == "Ja":
                <span class="label label-success">Online <i class="fa fa-arrow-up online"></i></span>
                % else:
                <span class="label label-danger">Offline <i class="fa fa-arrow-down offline"></i></span>
                % end
                </h4>
                <p id="stephanData">
                    <ul>
                        <li id="ip-address"><b>IP-Adresse: </b>{{ipTim}}</li>
                        <li id="isOnline"><b>Zuhause: </b>{{homeTim}}</li>
                        <li id="lastOnline"><b>Zuletzt Zuhause: </b>{{onlineTim}}</li>
                    </ul>
                </p>

                <h4>Felina Möllmann
                % if homeFelina == "Ja":
                <span class="label label-success">Online <i class="fa fa-arrow-up online"></i></span>
                % else:
                <span class="label label-danger">Offline <i class="fa fa-arrow-down offline"></i></span>
                % end
                </h4>
                <p id="stephanData">
                    <ul>
                        <li id="ip-address"><b>IP-Adresse: </b>{{ipFelina}}</li>
                        <li id="isOnline"><b>Zuhause: </b>{{homeFelina}}</li>
                        <li id="lastOnline"><b>Zuletzt Zuhause: </b>{{onlineFelina}}</li>
                    </ul>
                </p>

                <h4>René Marschner
                % if homeRene == "Ja":
                <span class="label label-success">Online <i class="fa fa-arrow-up online"></i></span>
                % else:
                <span class="label label-danger">Offline <i class="fa fa-arrow-down offline"></i></span>
                % end
                </h4>
                <p id="stephanData">
                    <ul>
                        <li id="ip-address"><b>IP-Adresse: </b>{{ipRene}}</li>
                        <li id="isOnline"><b>Zuhause: </b>{{homeRene}}</li>
                        <li id="lastOnline"><b>Zuletzt Zuhause: </b>{{onlineRene}}</li>
                    </ul>
                </p>

                <h4>Nadine Wenger
                % if homeNadine == "Ja":
                <span class="label label-success">Online <i class="fa fa-arrow-up online"></i></span>
                % else:
                <span class="label label-danger">Offline <i class="fa fa-arrow-down offline"></i></span>
                % end
                </h4>
                <p id="stephanData">
                    <ul>
                        <li id="ip-address"><b>IP-Adresse: </b>{{ipNadine}}</li>
                        <li id="isOnline"><b>Zuhause: </b>{{homeNadine}}</li>
                        <li id="lastOnline"><b>Zuletzt Zuhause: </b>{{onlineNadine}}</li>
                    </ul>
                </p>
            </div>
        </div>
        <div class="container">
            <br/>
            <p>Letzte Aktualisierung der Daten: {{lastReload}}</p>
            <p>Drücke "Reload" um die Daten zu aktualisieren!</p>
        </div>
        <footer class="footer">
            &copy; 2016 <a href="http://www.krewarts.de/" target="_blank">KrewArts</a> under the terms of the <a href="/static/LICENSE.txt">MIT License</a>
            <p class="pull-right"><i class="fa fa-code-fork"></i> Version 0.2</p>
        </footer>

    </div>
</body>

</html>