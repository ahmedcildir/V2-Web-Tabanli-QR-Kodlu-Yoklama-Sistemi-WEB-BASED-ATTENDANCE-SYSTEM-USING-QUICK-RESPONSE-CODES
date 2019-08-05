<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa.Master" AutoEventWireup="true" CodeBehind="yoneticiGoster.aspx.cs" Inherits="YoklamaSistemi.form.yoneticiGoster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-green"><i class="fa fa-users"></i></span>

                <div class="info-box-content">
                    <span class="info-box-number">YÖNETİCİLER </span>
                    <span class="info-box-text">Sayfası</span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
    </div>
    <div class="box box-success">
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
                        <asp:Repeater ID="repyonetici" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <th scope="row"><%# Eval("id") %></th>
                                    <td><%# Eval("name") %></td>
                                    <td><%# Eval("surname") %></td>
                                    <td><%# Eval("kategori") %></td>
                                    <td>
                                        <a href="detayGoster.aspx?id=<%# Eval("id") %>&kate=yonetici" class="btn btn-primary btn-xs" role="button">Göster</a>
                                        <a href="profil.aspx?id=<%# Eval("id") %>&kate=yonetici" class="btn btn-warning btn-xs" role="button">Düzenle</a>
                                        <a href="#" class="btn btn-danger btn-xs" role="button">Sil</a>
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
