<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kayitol.aspx.cs" Inherits="YoklamaSistemi.teacher.kayitol" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Kayıt Ol</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="../Libraries/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="../Libraries/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="../Libraries/bower_components/Ionicons/css/ionicons.min.css">
    <!-- daterange picker -->
    <link rel="stylesheet" href="../Libraries/bower_components/bootstrap-daterangepicker/daterangepicker.css">
    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="../Libraries/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="../Libraries/plugins/iCheck/all.css">
    <!-- Bootstrap Color Picker -->
    <link rel="stylesheet" href="../Libraries/bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
    <!-- Bootstrap time Picker -->
    <link rel="stylesheet" href="../Libraries/plugins/timepicker/bootstrap-timepicker.min.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="../Libraries/bower_components/select2/dist/css/select2.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="../Libraries/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../Libraries/dist/css/skins/_all-skins.min.css">

    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<body class="hold-transition register-page">
    <form id="form" action="#" method="post" runat="server">
        <div class="register-box">
            <div class="register-logo">
                <a href="#"><b>Yoklama</b>SiSTEMi</a>
            </div>
            <div class="register-box-body">
                <p class="login-logo">Yeni üye ol</p>
                <table class="table table-borderless">
                    <tbody>
                        <tr>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAd" ErrorMessage="Ad Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <div class="form-group has-feedback">
                                    <asp:TextBox ID="txtAd" type="text" class="form-control" placeholder="Ad" runat="server"></asp:TextBox>
                                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtsoyad" ErrorMessage="Soyad Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <div class="form-group has-feedback">
                                    <asp:TextBox ID="txtsoyad" type="text" class="form-control" placeholder="Soyad" runat="server"></asp:TextBox>
                                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txttc" ErrorMessage="Tc Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Hatalı T.C. Kimlik Numarası Girdiniz." ClientValidationFunction="KontrolTcKimlikNo" ControlToValidate="txttc" ForeColor="Red">*</asp:CustomValidator>

                            </td>
                            <td>
                                <div class="form-group has-feedback">
                                    <asp:TextBox ID="txttc" type="text" class="form-control" placeholder="T.C." runat="server"></asp:TextBox>
                                    <span class="glyphicon glyphicon-credit-card form-control-feedback"></span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtdogumtarihi" ErrorMessage="Doğum Tarihi Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="revdogum" runat="server" ErrorMessage="Doğum Tarihi Hatalı." Type="Date" ControlToValidate="txtdogumtarihi" ForeColor="Red" MinimumValue="01/01/1983" SetFocusOnError="True">*</asp:RangeValidator>

                            </td>
                            <td>
                                <div class="form-group has-feedback">
                                    <asp:TextBox ID="txtdogumtarihi" type="text" class="form-control" placeholder="Doğum Tarihi" runat="server"></asp:TextBox>
                                    <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <div class="dropdown">
                                    <div class="form-group has-feedback">
                                        <asp:DropDownList ID="dropgorev" class="form-control select2" runat="server">
                                            <asp:ListItem>Pozisyon Seçiniz..</asp:ListItem>
                                            <asp:ListItem>Akedemisyen</asp:ListItem>
                                            <asp:ListItem>Öğretmen</asp:ListItem>
                                        </asp:DropDownList>
                                        <span class="glyphicon glyphicon-tasks form-control-feedback"></span>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txttelefon" ErrorMessage="Telefon Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Telefon Numarasını Doğru Girdiğinizden Emin Olun" ForeColor="Red" ControlToValidate="txttelefon" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$">*</asp:RegularExpressionValidator>

                            </td>
                            <td>
                                <div class="form-group has-feedback">
                                    <asp:TextBox ID="txttelefon" type="text" class="form-control" placeholder="Telefon" runat="server"></asp:TextBox>
                                    <span class="glyphicon glyphicon-phone form-control-feedback"></span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="E-Posta Kısmı Boş Geçilemez." ControlToValidate="txtemail" ForeColor="Red">*</asp:RequiredFieldValidator>
                                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Geçerli E-Posta Girin Lütfen." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>

                            </td>
                            <td>
                                <div class="form-group has-feedback">
                                    <asp:TextBox ID="txtemail" type="email" class="form-control" placeholder="Email" runat="server"></asp:TextBox>
                                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                                </div>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtparola" ErrorMessage="Parola Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="Regex1" runat="server" ControlToValidate="txtparola"
                                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ErrorMessage="Şifreniz en az 8 karakter 1 numara ve 1 harf içermeli." ForeColor="Red">*</asp:RegularExpressionValidator>

                            </td>
                            <td>
                                <div class="form-group has-feedback">
                                    <asp:TextBox ID="txtparola" type="password" class="form-control" placeholder="Parola" runat="server"></asp:TextBox>
                                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtparolatekrar" ErrorMessage="Parola Tekrar Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtparola" ControlToValidate="txtparolatekrar" ErrorMessage="Şifreler Aynı Değil." ForeColor="Red">*</asp:CompareValidator>

                            </td>
                            <td>

                                <div class="form-group has-feedback">
                                    <asp:TextBox ID="txtparolatekrar" type="password" class="form-control" placeholder="Parola tekrar" runat="server"></asp:TextBox>
                                    <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <div class="row">
                                    <div class="col-xs-12">
                                        <div class="checkbox icheck">
                                            <label>
                                                <asp:CheckBox ID="ceksartkabul" runat="server" Text="Şartları kabul" />
                                                <a href="#">&nbsp;ediyorum</a>
                                            </label>
                                        </div>
                                        <div class="checkbox icheck">
                                            <label>
                                                <asp:RadioButtonList ID="radbtnucret" runat="server">
                                                    <asp:ListItem Value="1">Ücretsiz Üye Ol<a href="#">&nbsp;Şartlar</a></asp:ListItem>
                                                    <asp:ListItem Value="0">Ücretli Üye Ol<a href="#">&nbsp;Şartlar</a></asp:ListItem>
                                                </asp:RadioButtonList>

                                            </label>
                                        </div>
                                    </div>
                                    <!-- /.col -->
                                    <div class="col-xs-12">
                                        <asp:Button ID="btnkayit" type="submit" class="btn btn-primary btn-block btn-flat" runat="server" Text="Kaydol" OnClick="Button1_Click" />
                                        <br />
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" HeaderText="Hatalar" ForeColor="Red" />
                                        <asp:Label ID="lblmesaj" runat="server" ForeColor="Red"></asp:Label>
                                    </div>
                                    <!-- /.col -->
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <a href="login.aspx" class="text-center">Zaten üyeliğim var</a>
            </div>
            <!-- /.form-box -->
        </div>
        <!-- jQuery 3 -->
        <script src="../Libraries/bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="../Libraries/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- Select2 -->
        <script src="../Libraries/bower_components/select2/dist/js/select2.full.min.js"></script>
        <!-- InputMask -->
        <script src="../Libraries/plugins/input-mask/jquery.inputmask.js"></script>
        <script src="../Libraries/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
        <script src="../Libraries/plugins/input-mask/jquery.inputmask.extensions.js"></script>
        <!-- date-range-picker -->
        <script src="../Libraries/bower_components/moment/min/moment.min.js"></script>
        <script src="../Libraries/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
        <!-- bootstrap datepicker -->
        <script src="../Libraries/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
        <!-- bootstrap color picker -->
        <script src="../Libraries/bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
        <!-- bootstrap time picker -->
        <script src="../Libraries/plugins/timepicker/bootstrap-timepicker.min.js"></script>
        <!-- SlimScroll -->
        <script src="../Libraries/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
        <!-- iCheck 1.0.1 -->
        <script src="../Libraries/plugins/iCheck/icheck.min.js"></script>
        <!-- FastClick -->
        <script src="../Libraries/bower_components/fastclick/lib/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="../Libraries/dist/js/adminlte.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../Libraries/dist/js/demo.js"></script>
        <!-- Page script -->
        <script>
            $(function () {
                //Initialize Select2 Elements
                $('.select2').select2()

                //Datemask dd/mm/yyyy
                $('#datemask').inputmask('dd/mm/yyyy', { 'placeholder': 'dd/mm/yyyy' })
                //Datemask2 mm/dd/yyyy
                $('#datemask2').inputmask('mm/dd/yyyy', { 'placeholder': 'mm/dd/yyyy' })
                //Money Euro
                $('[data-mask]').inputmask()

                //Date range picker
                $('#reservation').daterangepicker()
                //Date range picker with time picker
                $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, locale: { format: 'MM/DD/YYYY hh:mm A' } })
                //Date range as a button
                $('#daterange-btn').daterangepicker(
                    {
                        ranges: {
                            'Today': [moment(), moment()],
                            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                            'This Month': [moment().startOf('month'), moment().endOf('month')],
                            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                        },
                        startDate: moment().subtract(29, 'days'),
                        endDate: moment()
                    },
                    function (start, end) {
                        $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
                    }
                )

                //Date picker
                $('#datepicker').datepicker({
                    autoclose: true
                })

                //iCheck for checkbox and radio inputs
                $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                    checkboxClass: 'icheckbox_minimal-blue',
                    radioClass: 'iradio_minimal-blue'
                })
                //Red color scheme for iCheck
                $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
                    checkboxClass: 'icheckbox_minimal-red',
                    radioClass: 'iradio_minimal-red'
                })
                //Flat red color scheme for iCheck
                $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                    checkboxClass: 'icheckbox_flat-green',
                    radioClass: 'iradio_flat-green'
                })

                //Colorpicker
                $('.my-colorpicker1').colorpicker()
                //color picker with addon
                $('.my-colorpicker2').colorpicker()

                //Timepicker
                $('.timepicker').timepicker({
                    showInputs: false
                })
            })
</script>
        <script>
            $(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' /* optional */
                });
            });
</script>
        <%-- Tc Doğrulama --%>
        <script type="text/javascript">
            function KontrolTcKimlikNo(kontrol, args) {
                kimlikNo = args.Value;
                sonuc = false;

                if (kimlikNo.match("^[0-9]{11}$")) {
                    karakter0 = parseInt(kimlikNo.substr(0, 1));
                    karakter1 = parseInt(kimlikNo.substr(1, 1));
                    karakter2 = parseInt(kimlikNo.substr(2, 1));
                    karakter3 = parseInt(kimlikNo.substr(3, 1));
                    karakter4 = parseInt(kimlikNo.substr(4, 1));
                    karakter5 = parseInt(kimlikNo.substr(5, 1));
                    karakter6 = parseInt(kimlikNo.substr(6, 1));
                    karakter7 = parseInt(kimlikNo.substr(7, 1));
                    karakter8 = parseInt(kimlikNo.substr(8, 1));
                    karakter9 = parseInt(kimlikNo.substr(9, 1));
                    karakter10 = parseInt(kimlikNo.substr(10, 1));

                    if ((karakter0 + karakter1 + karakter2 + karakter3 + karakter4 + karakter5 + karakter6 + karakter7 + karakter8 + karakter9) % 10 == karakter10 &&
                        ((karakter0 + karakter2 + karakter4 + karakter6 + karakter8) * 7 + (karakter1 + karakter3 + karakter5 + karakter7) * 9) % 10 == karakter9 &&
                        ((karakter0 + karakter2 + karakter4 + karakter6 + karakter8) * 8) % 10 == karakter10)
                        sonuc = true;
                }
                args.IsValid = sonuc;
            }
        </script>
    </form>
</body>
</html>


