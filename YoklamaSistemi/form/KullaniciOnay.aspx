<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa.Master" AutoEventWireup="true" CodeBehind="KullaniciOnay.aspx.cs" Inherits="YoklamaSistemi.form.KullaniciOnay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="fa fa-thumbs-o-up"></i></span>

                <div class="info-box-content">
                    <span class="info-box-number">ONAY </span>
                    <span class="info-box-text">Sayfası</span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
    </div>
    <div class="box box-primary">
        <div class="row ">
            <div class="col col-lg-12 col-md-12 col-xs-12">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col" class="col col-lg-1">ID</th>
                            <th scope="col" class="col col-lg-3">AD</th>
                            <th scope="col" class="col col-lg-3">SOYAD</th>
                            <th scope="col" class="col col-lg-3">GÖREV</th>
                            <th scope="col" class="col col-lg-3">İŞLEMLER</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="repOnay" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <th scope="row"><%# Eval("id") %></th>
                                    <td><%# Eval("name") %></td>
                                    <td><%# Eval("surname") %></td>
                                    <td><%# Eval("kategori") %></td>
                                    <td>
                                        <a href="islem.aspx?id=<%# Eval("id") %>&islem=onay" class="btn btn-success btn-xs" role="button">Onayla</a>
                                        <a href="islem.aspx?id=<%# Eval("id") %>&islem=red" class="btn btn-danger btn-xs" role="button">Reddet</a>
                                        <a href="detayGoster.aspx" class="btn btn-primary btn-xs" role="button">Göster</a>
                                    </td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
