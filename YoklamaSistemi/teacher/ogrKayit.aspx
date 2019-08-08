<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="ogrKayit.aspx.cs" Inherits="YoklamaSistemi.teacher.ogrKayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row ">
        <div class="col-md-12 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="fa ion-person-add"></i></span>

                <div class="info-box-content">
                    <span class="info-box-number">ÖĞRENCİ KAYIT</span>
                    <span class="info-box-text">Formu</span>
                </div>
            </div>
        </div>
    </div>
    <div class="box box-primary">
        <div class="row ">
            <br />
            <div class="text-center">
                <asp:Label ID="lblmesaj" runat="server" ForeColor="Red" Font-Bold="true"></asp:Label>
            </div>
            <div class="col col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <table class="table table-borderless">
                    <tbody>
                        <tr>
                            <td class="col col-lg-2 col-md-2 col-sm-2">Ad :
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAd" ErrorMessage="Ad Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td>
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
                            <td>Tc :
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtTc" ErrorMessage="Tc Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Hatalı T.C. Kimlik Numarası Girdiniz." ClientValidationFunction="KontrolTcKimlikNo" ControlToValidate="txtTc" ForeColor="Red">*</asp:CustomValidator>

                            </td>
                            <td>
                                <asp:TextBox ID="txtTc" class="form-control" placeholder="Tc.." type="number" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Ogrenci No :
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtogrno" ErrorMessage="Oğrenci No Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="txtogrno" class="form-control" MaxLength="11" placeholder="Ogrenci No.." runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Doğum Tarihi :
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDogumTarihi" ErrorMessage="Doğum Tarihi Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RangeValidator ID="revdogum" runat="server" ErrorMessage="Doğum Tarihi Hatalı." Type="Date" ControlToValidate="txtDogumTarihi" ForeColor="Red" MinimumValue="01/01/1983" SetFocusOnError="True">*</asp:RangeValidator>

                            </td>
                            <td>
                                <asp:TextBox ID="txtDogumTarihi" class="form-control" MaxLength="10" placeholder="Doğum Tarihi.." runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Pozisyon :</td>
                            <td>
                                <asp:DropDownList ID="droppozisyo" class="form-control select2" runat="server">
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
                            <td>Parola :
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSifre" ErrorMessage="Parola Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="Regex1" runat="server" ControlToValidate="txtSifre"
                                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ErrorMessage="Şifreniz en az 8 karakter 1 numara ve 1 harf içermeli." ForeColor="Red">*</asp:RegularExpressionValidator>

                            </td>
                            <td>
                                <asp:TextBox ID="txtSifre" class="form-control" type="password" placeholder="Parola.." runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Parola Tekrar :
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtSifreTekrar" ErrorMessage="Parola Tekrar Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtSifre" ControlToValidate="txtSifreTekrar" ErrorMessage="Şifreler Aynı Değil." ForeColor="Red">*</asp:CompareValidator>

                            </td>
                            <td>
                                <asp:TextBox ID="txtSifreTekrar" class="form-control" placeholder="Parola Tekrer.." type="password" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="btnKayit" class="btn btn-outline-info btn-block btn-success btn-sm" runat="server" Text="Kaydet" OnClick="btnKayit_Click" />
                                <br />
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" HeaderText="Hata" ForeColor="Red" />

                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
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
    </div>
</asp:Content>
