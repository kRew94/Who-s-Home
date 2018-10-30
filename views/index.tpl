<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Who's Home - {{ssid}}</title>
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
      <h3 class="text-muted"><img src="static/img/logo.png" alt="Who's Home" style="width:5%; height:auto;opacity: 0.5;margin:0;padding:0"/></h3>
    </div>
    <div class="jumbotron">
      <h1><img src="static/img/long_logo.png" alt="Who's Home" style="width: 99%; height: auto;"/></h1>
      <hr/>
      <p class="lead">This Website monitors your Wifi devices in the network {{ssid}}. It show's which Wifi device ( <i class="fa fa-mobile"></i> ) is connected to your router. This works thanks to the ping command which pings the ip-addresses of your devices.</p>
    </div>
    % if clientOnline == 1:
    <div class="alert alert-success" role="alert">One person is home!</div>
    % elif clientOnline > 1:
    <div class="alert alert-success" role="alert">{{clientOnline}} people are home!</div>
    % else:
    <div class="alert alert-danger" role="alert">Nobody is home :(</div>
    % end


    <div class="row">
      <div class="col-md-8 col-md-offset-4">
        % for client in allClient:
        <h4>{{client[1]}}
                % if client[3] == "Yes":
                <span class="label label-success">Online <i class="fa fa-arrow-up online"></i></span>
                % else:
                <span class="label label-danger">Offline <i class="fa fa-arrow-down offline"></i></span>
                % end
                </h4>
        <p>
          <ul>
            <li><b>IP-address: </b>{{client[2]}}</li>
            <li><b>MAC-address: </b>{{client[5]}}</li>
            <li><b>Home: </b>{{client[3]}}</li>
            <li><b>Last Home: </b>{{client[4]}}</li>
          </ul>
        </p>
        % end
      </div>
    </div>
    <div class="container">
      <br/>
      <p>Recent update: {{lastReload}}</p>
      <p>Press "Reload" to update the data!</p>
    </div>
    <footer class="footer">
      &copy; 2018 <a href="http://www.krewarts.de/" target="_blank">KrewArts</a> under the terms of the <a href="/static/LICENSE.txt">MIT License</a>
      <p class="pull-right"><a href="https://github.com/kRew94/Who-s-Home"><i class="fa fa-github"></i> Version 0.4.1</a></p>
    </footer>

  </div>
</body>

</html>
