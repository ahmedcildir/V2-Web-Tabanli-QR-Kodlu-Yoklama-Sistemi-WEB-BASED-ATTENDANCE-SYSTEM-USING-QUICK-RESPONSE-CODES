<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="aldigiDersler.aspx.cs" Inherits="YoklamaSistemi.teacher.DevamsizlikDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="fa fa-briefcase"></i></span>
                <div class="info-box-content">
                    <span class="info-box-number">DERS İŞLEMLERİ</span>
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
                            <th scope="col" class="col col-lg-2 col-xs-1">DERS KOD</th>
                            <th scope="col" class="col col-lg-2 col-xs-2">AD</th>
                            <th scope="col" class="col col-lg-1 col-xs-1">SÜRE</th>
                            <th scope="col" class="col col-lg-4 col-xs-5">AÇIKLAMA</th>
                            <th scope="col" class="col col-lg-2 col-xs-2">İŞLEMLER</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>BM010</td>
                            <td>Algoritma</td>
                            <td>4</td>
                            <td>Açıklama Kısmı  </td>
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
