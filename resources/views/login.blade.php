<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>DOOR TO DOOR</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="/tema/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/tema/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="/tema/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/tema/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/tema/dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <!-- IziToast -->
  <link rel="stylesheet" href="/notif/dist/css/iziToast.min.css">
  <script src="/notif/dist/js/iziToast.min.js" type="text/javascript"></script>

  <!-- Google Font -->
  <link rel="stylesheet"
    href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->

<body class="hold-transition skin-info layout-top-nav">
  <div class="wrapper">

    {{-- <header class="main-header">
      <nav class="navbar navbar-static-top" style="box-shadow: 0 8px 8px 0 rgba(0,0,0,.2);">
        <div class="container">
          <div class="navbar-header">
            <a href="#" class="navbar-brand"><b>PEMERINTAH DESA NARAHAN</b></a>

          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
            <ul class="nav navbar-nav">

            </ul>

          </div>
          <!-- /.navbar-collapse -->
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Notifications Menu -->
              <li class="dropdown notifications-menu">
                <!-- Menu toggle button -->
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <b>PEMERINTAH DESA NARAHAN</b>
                </a>
              </li>
            </ul>
          </div>
          <!-- /.navbar-custom-menu -->
        </div>
        <!-- /.container-fluid -->
      </nav>
    </header> --}}
    <!-- Full Width Column -->
    <div class="content-wrapper" style="background-image: url('/background/uppd1.jpeg'); background-size:cover">
      <div class="container">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          {{-- <h1>
            Top Navigation
            <small>Example 2.0</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Layout</a></li>
            <li class="active">Top Navigation</li>
          </ol> --}}
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-6">
              <div class="text-center">
                <br /><br />
                <br /><br />
                <br /><br />
                <br /><br />
              </div>
              <br /><br />
              <div class="box box-success" style="box-shadow: 0 8px 8px 0 rgba(0,0,0,.2);border-top-color:#edfe00">
                <div class="box-header with-border text-center">
                  <h3 class="box-title">SISTEM MONITORING DOOR TO DOOR</h3>
                </div>
                <form class="form-horizontal" method="post" action="/login">
                  @csrf
                  <div class="box-body">
                    <div class="form-group">
                      <label for="inputEmail3" class="col-sm-3 control-label">Username</label>

                      <div class="col-sm-9">
                        <input type="username" class="form-control" placeholder="username" name="username"
                          value="{{old('username')}}" autocomplete="new-password" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="inputPassword3" class="col-sm-3 control-label">Password</label>

                      <div class="col-sm-9">
                        <input type="password" class="form-control" placeholder="Password" name="password"
                          value="{{old('password')}}" autocomplete="new-password" />
                      </div>
                    </div>
                  </div>
                  <div class="box-footer social-auth-links">
                    <button type="submit" class="btn btn-flat btn-block"
                      style="background-color: #feed00; color:black;"><i class="fa fa-sign-in"></i> Masuk</button>
                  </div>
                </form>
              </div>
            </div>
            <div class="col-md-3">
            </div>
          </div>

        </section>
        <!-- /.content -->
      </div>
      <!-- /.container -->
    </div>
    <!-- /.content-wrapper -->
    {{-- <footer class="main-footer">
      <div class="container">
        <div class="pull-right hidden-xs">
          <b>Version</b> 1.0.0
        </div>
        <strong>Copyright &copy; 2023 PEMERINTAH DESA NARAHAN</strong>
      </div>
      <!-- /.container -->
    </footer> --}}
  </div>
  <!-- ./wrapper -->

  <!-- jQuery 3 -->
  <script src="/tema/bower_components/jquery/dist/jquery.min.js"></script>
  <!-- Bootstrap 3.3.7 -->
  <script src="/tema/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
  <!-- SlimScroll -->
  <script src="/tema/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
  <!-- FastClick -->
  <script src="/tema/bower_components/fastclick/lib/fastclick.js"></script>
  <!-- AdminLTE App -->
  <script src="/tema/dist/js/adminlte.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="/tema/dist/js/demo.js"></script>
  <script type="text/javascript">
    @include('layouts.notif')
  </script>

</body>

</html>