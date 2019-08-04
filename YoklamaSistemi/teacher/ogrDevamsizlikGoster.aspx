<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="ogrDevamsizlikGoster.aspx.cs" Inherits="YoklamaSistemi.teacher.ogrDevamsizlikGoster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="fa fa-users"></i></span>
                <div class="info-box-content">
                    <span class="info-box-number">DERSİ ALAN ÖĞRENCİLER</span>
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
                <table class="table table-striped ">
                    <thead>
                        <tr>
                            <th scope="col" class="col col-lg-1 col-xs-1">ID</th>
                            <th scope="col" class="col col-lg-3 col-xs-2">AD</th>
                            <th scope="col" class="col col-lg-3 col-xs-2">SOYAD</th>
                            <th scope="col" class="col col-lg-3 col-xs-5">OGR NO</th>
                            <th scope="col" class="col col-lg-2 col-xs-2">İŞLEMLER</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Ahmed</td>
                            <td>ÇILDIR</td>
                            <td>150304046</td>
                            <td>
                                <a href="ogrDetayGoster.aspx" class="btn btn-primary btn-xs" role="button">Göster</a>
                                <a href="ogrDevamsizlik.aspx" class="btn btn-success btn-xs" role="button">Devamsızlık</a>
                                <a href="#" class="btn btn-danger btn-xs" role="button">Sil</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
