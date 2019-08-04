<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="yoklamaKontrol.aspx.cs" Inherits="YoklamaSistemi.teacher.yoklamaKontrol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box box-warning">
        <div class="row ">
            <div class="col-md-12 col-sm-6 col-xs-12">
                <div class="info-box">
                    <span class="info-box-icon bg-aqua"><i class="fa  fa-street-view"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-number">Yoklama</span>
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
                            <asp:Button ID="btnKayit" class="btn btn-outline-info btn-block btn-warning btn-sm" runat="server" Text="Kontrol Et" />
                        </td>
                    </tr>
                </table>
            </div>
            <hr />

        </div>
    </div>
    <div class="box box-warning">
        <div class="row ">
            <div class="col-lg-12 col-xs-6">
                <table class="table table-striped ">
                    <thead>
                        <tr>
                            <th scope="col" class="col col-lg-1 col-xs-0">ID</th>
                            <th scope="col" class="col col-lg-2 col-xs-0">AD</th>
                            <th scope="col" class="col col-lg-2 col-xs-2">SOYAD</th>
                            <th scope="col" class="col col-lg-2 col-xs-5">OGR NO</th>
                            <th scope="col" class="col col-lg-2 col-xs-0">Saat</th>
                            <th scope="col" class="col col-lg-2 col-xs-2">Tarih</th>
                            <th scope="col" class="col col-lg-1 col-xs-0">İŞLEMLER</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Ahmed</td>
                            <td>ÇILDIR</td>
                            <td>150304046</td>
                            <td>011:45</td>
                            <td>30.07.2019</td>
                            <td>
                                <a href="#" class="btn btn-danger btn-block btn-xs" role="button">Sil</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
