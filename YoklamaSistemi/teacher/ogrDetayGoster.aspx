<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="ogrDetayGoster.aspx.cs" Inherits="YoklamaSistemi.teacher.ogrDetayGoster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box box-primary">
        <div class="row">
            <div class="col-md-12 col-sm-6 col-xs-12">
            <div class="col-md-12 col-sm-6 col-xs-12">
                <h3><i class="fa fa-user"></i>&nbsp;ÖĞRENCİ DETAY VE DÜZENLEME</h3>
            </div>

            <div class="col-md-12">
                <!-- Widget: user widget style 1 -->
                <div class="box box-widget widget-user">
                    <!-- Add the bg color to the header using any of the bg-* classes -->
                    <div class="widget-user-header bg-black" style="background: url('../Libraries/dist/img/photo1.png') center center;">
                        <a class="btn btn-outline-primary" data-toggle="modal" data-target="#modal-info">
                            <i class="fa fa-edit"></i>Edit
                        </a>
                    </div>
                    <div class="widget-user-image">
                        <img class="img-circle" src="../Libraries/dist/img/f1.jpeg" alt="User Avatar">
                    </div>
                    <div class="box-footer">
                        <div class="row">
                            <div class="col-sm-4 border-right">
                                <div class="description-block">
                                    <h5 class="description-header">Ad Soyad</h5>
                                    <span class="description-text">Ahmed ÇILDIR</span>
                                </div>
                                <!-- /.description-block -->
                            </div>
                            <!-- /.col -->
                            <div class="col-sm-4 border-right">
                                <div class="description-block">
                                    <a class="btn btn-outline-primary" data-toggle="modal" data-target="#modal-info1">
                                        <i class="fa fa-edit"></i>Edit
                                    </a>
                                </div>
                                <!-- /.description-block -->
                            </div>
                            <!-- /.col -->
                            <div class="col-sm-4">
                                <div class="description-block">
                                    <h5 class="description-header">Pozisyon</h5>
                                    <span class="description-text">Öğrenci</span>
                                </div>
                                <!-- /.description-block -->
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->
                    </div>
                </div>
                <!-- /.widget-user -->
            </div></div>
            <div class="col-md-12 col-sm-6 col-xs-12">
            <div class="col-md-12 col-sm-6 col-xs-12">
                <div class="info-box bg-blue-active">
                    <span class="info-box-icon"><i class="fa  fa-key"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-number">
                            <h4>ÖĞRENCİ NO</h4>
                        </span>
                        <span class="info-box-text">150304046</span>

                        <div class="progress">
                            <div class="progress-bar" style="width: 50%"></div>
                        </div>
                    </div>
                    <!-- /.info-box-content -->
                </div>
            </div>
            <div class="col-md-12 col-sm-6 col-xs-12">
                <div class="info-box bg-blue-gradient">
                    <span class="info-box-icon"><i class="fa fa-credit-card"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-number">
                            <h4>T.C.</h4>
                        </span>
                        <span class="info-box-text">36321456325</span>

                        <div class="progress">
                            <div class="progress-bar" style="width: 50%"></div>
                        </div>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-md-12 col-sm-6 col-xs-12">
                <div class="info-box bg-blue-active">
                    <span class="info-box-icon"><i class="fa fa-calendar"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-number">
                            <h4>Doğum Tarihi</h4>
                        </span>
                        <span class="info-box-text">20.01.1997</span>

                        <div class="progress">
                            <div class="progress-bar" style="width: 50%"></div>
                        </div>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-md-12 col-sm-6 col-xs-12">
                <div class="info-box bg-blue">
                    <span class="info-box-icon"><i class="fa fa-mobile"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-number">
                            <h4>Telefon</h4>
                        </span>
                        <span class="info-box-text">05383639744</span>

                        <div class="progress">
                            <div class="progress-bar" style="width: 50%"></div>
                        </div>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->
            <div class="col-md-12 col-sm-6 col-xs-12">
                <div class="info-box bg-blue-active">
                    <span class="info-box-icon"><i class="fa fa-at"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-number">
                            <h4>E-posta</h4>
                        </span>
                        <span class="info-box-text">ahmed@gmail.com</span>

                        <div class="progress">
                            <div class="progress-bar" style="width: 50%"></div>
                        </div>
                    </div>
                    <!-- /.info-box-content -->
                </div>
                <!-- /.info-box -->
            </div>
            <!-- /.col -->

            <div class="col col-lg-12 col-xs-12">
                <a class="btn btn-info" data-toggle="modal" data-target="#modal-info-edit">
                    <i class="fa fa-edit"></i>&nbsp;Bilgileri Güncelle
                </a>
            </div>
        </div></div>
    </div>
    <%-- Üsten açılan pencere Arka foto --%>
    <div class="modal modal-info fade" id="modal-info">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Arkaplan Fotoğrafı Seçiniz &hellip; </h4>
                </div>
                <div class="modal-body">
                    <asp:FileUpload ID="resimyukle" runat="server" class="btn btn-outline-danger" Font-Names="Arial Narrow" ForeColor="Blue" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Kapat</button>
                    <asp:Button ID="btnArkafotokayıt" runat="server" class="btn btn-outline" Text="Kaydet" />

                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <%-- Üsten açılan pencere foto --%>
    <div class="modal modal-info fade" id="modal-info1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Fotoğraf Şeçiniz &hellip;</h4>
                </div>
                <div class="modal-body">
                    <asp:FileUpload ID="filfotosec" runat="server" class="btn btn-outline-danger" Font-Names="Arial Narrow" ForeColor="Blue" />
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Kapat</button>
                    <asp:Button ID="btnfotoKayit" runat="server" class="btn btn-outline" Text="Kaydet" />

                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

    <%-- Bilgileri Düzenleme üst pencere --%>
    <div class="modal modal-info fade" id="modal-info-edit">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">Bilgileri Güncelle &hellip;</h4>
                </div>
                <div class="modal-body">
                    <table class="table table-borderless">
                        <tbody>
                            <tr>
                                <td class="col col-lg-2 col-md-2 col-sm-2">Ad :
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAd" ErrorMessage="Ad Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                                <td class="col col-lg-8 col-md-8 col-sm-2">
                                    <asp:TextBox ID="txtAd" class="form-control" placeholder="Ad.." runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Soyad :
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSoyad" ErrorMessage="Soyad Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtSoyad" class="form-control" placeholder="Soyad.." runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Ögr No :
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtogrNO" ErrorMessage="Ögr NO Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtogrNO" class="form-control" placeholder="Tc.." type="number" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>T.C. :
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTc" ErrorMessage="Tc Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Hatalı T.C. Kimlik Numarası Girdiniz." ClientValidationFunction="KontrolTcKimlikNo" ControlToValidate="txtTc" ForeColor="Red">*</asp:CustomValidator>

                                </td>
                                <td>
                                    <asp:TextBox ID="txtTc" class="form-control" placeholder="Tc.." type="number" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Doğum Tarihi :
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDogumTarihi" ErrorMessage="Doğum Tarihi Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <%--<asp:RangeValidator ID="revdogum" runat="server" ErrorMessage="Doğum Tarihi Hatalı." Type="Date" ControlToValidate="txtDogumTarihi" ForeColor="Red" MinimumValue="01/01/1983" SetFocusOnError="True">*</asp:RangeValidator>--%>

                                </td>
                                <td>
                                    <asp:TextBox ID="txtDogumTarihi" class="form-control" MaxLength="10" placeholder="Doğum Tarihi.." runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Pozisyon :</td>
                                <td>
                                    <asp:DropDownList ID="dropPozisyon" class="form-control select2" runat="server">
                                        <asp:ListItem>Pozisyon Seçiniz..</asp:ListItem>
                                        <asp:ListItem>X1</asp:ListItem>
                                        <asp:ListItem>X2</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Telefon :
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtTelefon" ErrorMessage="Telefon Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Telefon Numarasını Doğru Girdiğinizden Emin Olun" ForeColor="Red" ControlToValidate="txtTelefon" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$">*</asp:RegularExpressionValidator>

                                </td>
                                <td>
                                    <asp:TextBox ID="txtTelefon" class="form-control" MaxLength="11" placeholder="Telefon.." runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>E-posta :
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="E-Posta Kısmı Boş Geçilemez." ControlToValidate="txtEposta" ForeColor="Red">*</asp:RequiredFieldValidator>
                                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEposta" ErrorMessage="Geçerli E-Posta Girin Lütfen." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>

                                </td>
                                <td>
                                    <asp:TextBox ID="txtEposta" type="email" class="form-control" placeholder="E-posta.." runat="server"></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" HeaderText="Hata" ForeColor="Red" />
                                </td>
                            </tr>
                        </tbody>
                    </table>


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Kapat</button>
                    <asp:Button ID="Button1" runat="server" class="btn btn-outline" Text="Kaydet" />

                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
        <%-- Kimlik no Doğrulama fonkisiyonu --%>
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
    </div>
</asp:Content>
