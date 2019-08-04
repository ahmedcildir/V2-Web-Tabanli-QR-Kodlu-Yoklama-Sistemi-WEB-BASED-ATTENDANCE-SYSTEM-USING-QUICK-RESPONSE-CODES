<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="eYoklama.aspx.cs" Inherits="YoklamaSistemi.teacher.eYoklama" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="box box-primary">
        <div class="row ">
            <div class="col-md-12 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-aqua"><i class="fa fa-pencil-square-o"></i></span>

                    <div class="info-box-content">
                        <span class="info-box-number">E-Yoklama</span>
                        <span class="info-box-text">Formu</span>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div class="col-lg-12 col-xs-12">
                <table class="table table-bordered">
                    <tr>
                        <td class="col-lg-2 col-xs-2">Ders :</td>
                        <td>
                            <asp:DropDownList ID="dropders" class="form-control select2" runat="server">
                                <asp:ListItem>Ders Seçiniz..</asp:ListItem>
                                <asp:ListItem>X1</asp:ListItem>
                                <asp:ListItem>X2</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="col-lg-2 col-xs-2">Hafta :</td>
                        <td>
                            <asp:DropDownList ID="drophafta" class="form-control select2" runat="server">
                                <asp:ListItem>Seçiniz..</asp:ListItem>
                                <asp:ListItem>X1</asp:ListItem>
                                <asp:ListItem>X2</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="col-lg-2 col-xs-2">Öğrenci :</td>
                        <td>
                            <asp:DropDownList ID="dropogr" class="form-control select2" runat="server">
                                <asp:ListItem>Öğrenci Seçiniz..</asp:ListItem>
                                <asp:ListItem>X1</asp:ListItem>
                                <asp:ListItem>X2</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="col-lg-2 col-xs-2">&nbsp;</td>
                        <td>
                            <asp:Button ID="btnKayit" class="btn btn-outline-info btn-block btn-primary btn-sm" runat="server" Text="Kaydet" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
