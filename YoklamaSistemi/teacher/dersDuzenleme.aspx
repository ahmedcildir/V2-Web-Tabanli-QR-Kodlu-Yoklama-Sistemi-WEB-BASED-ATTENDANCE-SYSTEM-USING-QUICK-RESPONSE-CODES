<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="dersDuzenleme.aspx.cs" Inherits="YoklamaSistemi.teacher.dersDuzenleme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row ">
        <div class="col-md-12 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-aqua-gradient"><i class="fa fa-book"></i></span>

                <div class="info-box-content">
                    <span class="info-box-number">DERS DÜZENLEME</span>
                    <span class="info-box-text">Formu</span>
                </div>
            </div>
        </div>
    </div>
    <div class="box box-primary">
        <div class="row ">
            <br />
            <div class="col col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <table class="table table-borderless">
                    <tbody>
                        <tr>
                            <td class="col col-lg-2 col-md-2 col-sm-2">Ders Kodu :
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDesKod" ErrorMessage="Ders Kodu Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td class="col col-lg-8 col-md-8 col-sm-2">
                                <asp:TextBox ID="txtDesKod" class="form-control" placeholder="Ders Kodu.." runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Ders Adı :
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDesAd" ErrorMessage="Ders Adı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDesAd" class="form-control" placeholder="Ders Adı.." runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Ders Süresi :
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDersSuresi" ErrorMessage="Ders Süresi Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDersSuresi" class="form-control" placeholder="Ders Süresi.." type="number" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Açıklama :
                            </td>
                            <td>
                                <div class="form-group">
                                    <textarea id="txtAciklama" class="form-control" rows="4" placeholder="Açıklama ..."></textarea>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="btnKayit" class="btn btn-outline-info btn-block btn-success btn-sm" runat="server" Text="Değişiklikleri Kaydet" />
                                <br />
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" HeaderText="Hata" ForeColor="Red" />

                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
