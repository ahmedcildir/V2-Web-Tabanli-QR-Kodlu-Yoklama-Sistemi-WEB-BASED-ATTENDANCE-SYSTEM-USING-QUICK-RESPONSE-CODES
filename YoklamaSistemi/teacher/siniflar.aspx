<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="siniflar.aspx.cs" Inherits="YoklamaSistemi.teacher.ogrAtama" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="fa fa-sitemap"></i></span>

                <div class="info-box-content">
                    <span class="info-box-number">SINIF İŞLEMLERİ</span>
                    <span class="info-box-text">Sayfası</span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        </div>
    <div class="box box-danger">
        <div class="row ">
        <div class="col col-lg-12 col-md-12 col-xs-12">
            <table class="table table-striped ">
                <thead>
                    <tr>
                        <th scope="col" class="col col-lg-1 col-xs-1">ID</th>
                        <th scope="col" class="col col-lg-2 col-xs-2">SINIF ADI</th>
                        <th scope="col" class="col col-lg-2 col-xs-2">POZİSYON</th>
                        <th scope="col" class="col col-lg-5 col-xs-5">AÇIKLAMA</th>
                        <th scope="col" class="col col-lg-2 col-xs-2">İŞLEMLER</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>A-1</td>
                        <td>XX</td>
                        <td>Açıklama ne olabilir ki Açıklama ne olabilir ki Açıklama ne olabilir ki Açıklama ne olabilir ki Açıklama ne olabilir ki</td>
                        <td>
                            <a href="sinifDuzenle.aspx" class="btn btn-warning  btn-xs" role="button">Düzenle</a>
                            <a href="ogrAta.aspx" class="btn btn-success btn-xs" role="button">Öğrenci Ata</a>
                            <a href="#" class="btn btn-danger btn-xs" role="button">Sil</a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div></div>
</asp:Content>
