<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="ogrDevamsizlik.aspx.cs" Inherits="YoklamaSistemi.form.ogrDevamsizlik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="fa  fa-line-chart"></i></span>

                <div class="info-box-content">
                    <span class="info-box-number">DEVAMSIZLIK İŞLEMLERİ</span>
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
                            <th scope="col" class="col col-lg-1 col-xs-1 ">ID</th>
                            <th scope="col" class="col col-lg-2 col-xs-2 text-cente ">DERS KOD</th>
                            <th scope="col" class="col col-lg-3 col-xs-3 ">AD</th>
                            <th scope="col" class="col col-lg-2 col-xs-2 ">SÜRE</th>
                            <th scope="col" class="col col-lg-2 col-xs-2 ">DEVAMSIZLIK</th>
                            <th scope="col" class="col col-lg-2 col-xs-2 ">İŞLEMLER</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>BM010</td>
                            <td>Algoritma</td>
                            <td>4</td>
                            <td>0</td>
                            <td>
                                <a href="ogrDevamsizlikGoster.aspx" class="btn btn-primary btn-block btn-xs" role="button">Kapat</a>

                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
