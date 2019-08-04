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
                        <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Çıldır</td>
                            <td>Akedemisyen</td>
                            <td>
                                <a href="detayGoster.aspx" class="btn btn-primary btn-xs" role="button">Göster</a>
                                <a href="profil.aspx" class="btn btn-warning btn-xs" role="button">Düzenle</a>
                                <a href="#" class="btn btn-danger btn-xs" role="button">Sil</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
