﻿<%@ Page Title="" Language="C#" MasterPageFile="~/anasayfa.Master" AutoEventWireup="true" CodeBehind="detayGoster.aspx.cs" Inherits="YoklamaSistemi.form.detayGoster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <asp:Repeater ID="repdetay" runat="server">
            <ItemTemplate>
                <div class="col-md-12">
                    <!-- Widget: user widget style 1 -->
                    <div class="box box-widget widget-user">
                        <!-- Add the bg color to the header using any of the bg-* classes -->
                        <div class="widget-user-header bg-black" style="background: url('../Libraries/dist/img/photo1.png') center center;">
                        </div>
                        <div class="widget-user-image">
                            <img class="img-circle" src="<%# Eval("foto") %>" alt="User Avatar">
                        </div>
                        <div class="box-footer">
                            <div class="row">
                                <div class="col-sm-4 border-right">
                                    <div class="description-block">
                                        <h5 class="description-header">Ad Soyad</h5>
                                        <span class="description-header"><%# Eval("name") %>&nbsp;<%# Eval("surname") %></span>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-4 border-right">
                                    <div class="description-block">
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-4">
                                    <div class="description-block">
                                        <h5 class="description-header">Görev</h5>
                                        <span class="description-header"><%# Eval("kategori") %></span>
                                    </div>
                                    <!-- /.description-block -->
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->
                        </div>
                    </div>
                    <!-- /.widget-user -->
                </div>

                <div class="col-md-12 col-sm-6 col-xs-12">
                    <div class="info-box bg-aqua">
                        <span class="info-box-icon"><i class="fa fa-credit-card"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-number">
                                <h4>T.C.</h4>
                            </span>
                            <span class="info-box-text"><%# Eval("TC") %></span>

                            <div class="progress">
                                <div class="progress-bar" style="width: 50%"></div>
                            </div>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-12 col-sm-6 col-xs-12">
                    <div class="info-box bg-yellow">
                        <span class="info-box-icon"><i class="fa fa-calendar"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-number">
                                <h4>Doğum Tarihi</h4>
                            </span>
                            <span class="info-box-text"><%# Eval("date_of_birth") %></span>

                            <div class="progress">
                                <div class="progress-bar" style="width: 50%"></div>
                            </div>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-12 col-sm-6 col-xs-12">
                    <div class="info-box bg-green">
                        <span class="info-box-icon"><i class="fa fa-mobile"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-number">
                                <h4>Telefon</h4>
                            </span>
                            <span class="info-box-text"><%# Eval("phone") %></span>

                            <div class="progress">
                                <div class="progress-bar" style="width: 50%"></div>
                            </div>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                <!-- /.col -->
                <div class="col-md-12 col-sm-6 col-xs-12">
                    <div class="info-box bg-red">
                        <span class="info-box-icon"><i class="fa fa-at"></i></span>

                        <div class="info-box-content">
                            <span class="info-box-number">
                                <h4>E-posta</h4>
                            </span>
                            <span class="info-box-text"><%# Eval("email") %></span>

                            <div class="progress">
                                <div class="progress-bar" style="width: 50%"></div>
                            </div>
                        </div>
                        <!-- /.info-box-content -->
                    </div>
                    <!-- /.info-box -->
                </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <!-- /.col -->
    </div>

</asp:Content>
