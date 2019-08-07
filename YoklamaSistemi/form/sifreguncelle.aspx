<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa.Master" AutoEventWireup="true" CodeBehind="sifreguncelle.aspx.cs" Inherits="YoklamaSistemi.form.sifreguncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ">
        <div class="col-md-12 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="fa  fa-unlock-alt"></i></span>

                <div class="info-box-content">
                    <span class="info-box-number">PAROLA GÜNCELLEME</span>
                    <span class="info-box-text">Formu</span>
                </div>
            </div>
        </div>
    </div>
    <div class="box box-primary">
        <div class="row ">
            <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <br />
                <asp:TextBox ID="txtEskiSifre" class="form-control mr-sm-4" type="password" runat="server" placeholder="Eski Parola Girin..."></asp:TextBox>
               <br />
                <asp:TextBox ID="txtYeniSifrr" class="form-control mr-sm-4" type="password" runat="server" placeholder="Yeni Parola Girin..."></asp:TextBox>
                <br />
                <asp:TextBox ID="txtYeniSifrrTekrar" class="form-control mr-sm-4" type="password" runat="server" placeholder="Yeni Parola Tekrar..."></asp:TextBox>
                <br />
                <asp:Button ID="btnYukle" runat="server" class="btn btn-block btn-primary btn-xs" Text="Kaydet" OnClick="btnYukle_Click" />
                <asp:Label ID="lblUyari" runat="server" ForeColor="Red"></asp:Label>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="(*Eski Şifre Kısmı Boş Geçilemez)" ControlToValidate="txtEskiSifre" ForeColor="Red"></asp:RequiredFieldValidator>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="(*Yeni Şifre Kısmı Boş Geçilemez)" ControlToValidate="txtYeniSifrr" ForeColor="Red"></asp:RequiredFieldValidator>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="(*Şifre Tekrar Kısmı Boş Geçilemez)" ControlToValidate="txtYeniSifrrTekrar" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="Regex1" runat="server" ControlToValidate="txtYeniSifrr"
                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ErrorMessage="*Şifreniz en az 8 karakter 1 numara ve 1 harf içermeli" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtYeniSifrr" ControlToValidate="txtYeniSifrrTekrar" ErrorMessage="*Şifreler Aynı Değil." ForeColor="Red"></asp:CompareValidator>
            </div>
        </div></div>
    </div>
</asp:Content>
