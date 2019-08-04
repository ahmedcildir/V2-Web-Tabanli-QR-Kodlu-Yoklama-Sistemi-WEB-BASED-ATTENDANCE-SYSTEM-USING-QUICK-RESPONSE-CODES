<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="ogrAta.aspx.cs" Inherits="YoklamaSistemi.teacher.ogrAta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row ">
        <div class="col-md-12 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="fa fa-mail-forward"></i></span>
                <div class="info-box-content">
                    <span class="info-box-number">DERS ATAMA</span>
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
                            <td class="col col-lg-1 col-md-1 col-xm-1">Öğrenci  :</td>
                            <td>
                                <asp:DropDownList ID="dropogre" class="form-control select2" runat="server">
                                    <asp:ListItem>Öğrenci Seçiniz..</asp:ListItem>
                                    <asp:ListItem>X1</asp:ListItem>
                                    <asp:ListItem>X2</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="col col-lg-1 col-md-1 col-xm-1">
                                <a href="ogrKayit.aspx" class="btn btn-info btn-block btn-sm" role="button">Öğrenci Ekle</a>
                            </td>
                        </tr>
                        <tr>
                            <td>Dere :</td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" class="form-control select2" runat="server">
                                    <asp:ListItem>Ders Seçiniz..</asp:ListItem>
                                    <asp:ListItem>Algoritma</asp:ListItem>
                                    <asp:ListItem>NYP</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <a href="dersKayit.aspx" class="btn btn-info btn-block btn-sm" role="button">Ders Ekle</a>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="btnKayit" class="btn btn-outline-info btn-block btn-success btn-sm" runat="server" Text="Kaydet" />
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
