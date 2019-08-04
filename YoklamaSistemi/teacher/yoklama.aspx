<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="yoklama.aspx.cs" Inherits="YoklamaSistemi.teacher.yoklama" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ">
        <div class="col-md-12 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="fa  fa-qrcode"></i></span>

                <div class="info-box-content">
                    <span class="info-box-number">Yoklama</span>
                    <span class="info-box-text">Formu</span>
                </div>
            </div>
        </div>
    </div>
    <div class="box box-success">
        <div class="row ">
            <div class="col-lg-12 col-xs-12">
            <div class="col-lg-12 col-xs-12">
                <table class="table table-bordered">
                    <tr>
                        <td class="col-lg-2 col-xs-2">Ders :</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" class="form-control select2" runat="server">
                                <asp:ListItem>Ders Seçiniz..</asp:ListItem>
                                <asp:ListItem>X1</asp:ListItem>
                                <asp:ListItem>X2</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="col-lg-2 col-xs-2">Hafta :</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" class="form-control select2" runat="server">
                                <asp:ListItem>Seçiniz..</asp:ListItem>
                                <asp:ListItem>X1</asp:ListItem>
                                <asp:ListItem>X2</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="col-lg-2 col-xs-2">&nbsp;</td>
                        <td>
                            <asp:Button ID="btnKayit" class="btn btn-outline-info btn-block btn-success btn-sm" runat="server" Text="Yoklama Al" OnClick="btnKayit_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
