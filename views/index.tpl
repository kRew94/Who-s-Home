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

  <!-- Bootstrap javascript -->
  <script src="/static/js/bootstrap.min.js"></script>

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
          <li class="nav-item" data-bs-toggle="modal" data-bs-target="#newuser"><a href="#newuser" class="nav-link" data-bs-toggle="modal" data-bs-target="#newuser">Add User</a></li>
          <li class="nav-item"><a href="/" class="nav-link active"><i class="fa fa-refresh"></i></a></li>
        </ul>
      </nav>
      <h3 class="text-muted"><img src="static/img/logo.png" alt="Who's Home" style="width:5%; height:auto;opacity: 0.5;margin:0;padding:0"/></h3>
    </div>
    <div class="bg-light p-5 rounded jumbotron">
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
        % for client in allClient:
        <div class="col-sm-6">
        <div class="card">
          <div class="card-body">
            <h4 class="card-title">{{client[1]}}
                % if client[3] == "Yes":
                <span class="badge bg-success rounded-pill label">Online <i class="fa fa-arrow-up"></i></span>
                % else:
                <span class="badge bg-danger rounded-pill label">Offline <i class="fa fa-arrow-down"></i></span>
                % end
                <button type="button" class="btn-close pull-right" aria-label="Close" data-bs-toggle="modal" data-bs-target="#deleteuser"></button>
            </h4>
          <ul class="list-group">
            <li class="list-group-item"><b>IP-address: </b><span class="badge bg-primary rounded-pill pull-right">{{client[2]}}</span></li>
            <li class="list-group-item"><b>MAC-address: </b><span class="badge bg-primary rounded-pill pull-right">{{client[5]}}</span></li>
            <li class="list-group-item"><b>Home: </b><span class="badge bg-primary rounded-pill pull-right">{{client[3]}}</span></li>
            <li class="list-group-item"><b>Last Home: </b><span class="badge bg-primary rounded-pill pull-right">{{client[4]}}</span></li>
          </ul>
          </div>
        </div>
        </div>
        % end
    </div>
    <div class="container">
      <br/>
      <p>Recent update: {{lastReload}}</p>
      <p>Press "Reload" to update the data!</p>
    </div>
    <footer class="footer">
      &copy; 2021 Stephan Marschner under the terms of the <a href="/static/LICENSE.txt">MIT License</a>
      <p class="pull-right"><a href="https://github.com/kRew94/Who-s-Home"><i class="fa fa-github"></i> Version 1.0</a></p>
    </footer>
  </div>

  <!-- MODAL FOR NEW USER -->
  <div class="modal fade" id="newuser" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">Add User</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <div class="mb-3">
              <label for="newName" class="form-label">Name</label>
              <input type="text" class="form-control" id="newName" placeholder="Max Mustermann" required>
              <div class="invalid-feedback">
                Please enter a name.
              </div>
            </div>
            <div class="mb-3">
              <label for="newIP" class="form-label">IP-adress</label>
              <input type="text" class="form-control" id="newIP" placeholder="192.168.0.100" required>
            </div>
            <div class="mb-3">
              <label for="newMAC" class="form-label">MAC-adress</label>
              <input type="text" class="form-control" id="newMAC" placeholder="00:0a:95:9d:68:16">
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
            <button type="submit" class="btn btn-primary">Add</button>
          </div>
      </div>
    </div>
  </div>

  <!-- Modal for deleting user -->
  <div class="modal fade" id="deleteuser" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="static" data-bs-keyboard="false">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Delete user</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          Are you sure you want to delete this user?
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
          <button type="button" class="btn btn-primary">Delete</button>
        </div>
      </div>
    </div>
  </div>

</body>

</html>
