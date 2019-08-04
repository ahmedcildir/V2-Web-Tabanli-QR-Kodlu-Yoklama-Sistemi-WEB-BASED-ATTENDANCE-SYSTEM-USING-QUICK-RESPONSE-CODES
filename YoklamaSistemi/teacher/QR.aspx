<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QR.aspx.cs" Inherits="YoklamaSistemi.teacher.QR" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>QR</title>
    <script type="text/javascript" src="../Libraries/theme-assets/js/qrcode.js"></script>
    <link href="../Libraries/theme-assets/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="../Libraries/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../Libraries/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="../Libraries/bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../Libraries/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../Libraries/dist/css/skins/_all-skins.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue layout-top-nav" onload="createQrCode()">
    <form id="form1" runat="server">
        <div class="wrapper">
            <header class="main-header">
                <nav class="navbar navbar-static-top">
                    <div class="container">
                        <div class="navbar-header ">
                            <a href="home.aspx" class="navbar-brand "><b>Yoklama</b>Sistemi</a>
                        </div>
                    </div>
                </nav>
            </header>
        </div>
        <!-- Full Width Column -->
        <div class="content-wrapper">
            <div class="container">
                <!-- Main content -->
                <section class="content">
                    <%-- İçerik --%>
                    <div class="row ">
                        <div class="col col-lg-12 col-md-12 col-sm-12">
                            
                            <div align="center" id="qrcode"></div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- /.content-wrapper -->
        <footer class="main-footer">
            <div class="container">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 0.0.1
     
                </div>
                <strong>Copyright &copy; 2019 <a href="#">Ahmed ÇILDIR</a>.</strong> All rights
      reserved.
   
            </div>
            <!-- /.container -->
        </footer>

        <!-- ./wrapper -->

        <!-- jQuery 3 -->
        <script src="../Libraries/bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="../Libraries/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- SlimScroll -->
        <script src="../Libraries/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="../Libraries/bower_components/fastclick/lib/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="../Libraries/dist/js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../Libraries/dist/js/demo.js"></script>
    </form>
</body>
<script>
    function createQrCode() {
        var userInput = 'Ahmed';
        //document.getElementById('valor').value;

        var qrcode = new QRCode("qrcode", {
            text: userInput,
            width: 525,
            height: 525,

            colorDark: "black",
            colorLight: "white",

            correctLevel: QRCode.CorrectLevel.H
        });
    }
    </script>
</html>

