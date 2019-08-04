<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="sinifolustur.aspx.cs" Inherits="YoklamaSistemi.teacher.sinifolustur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ">
        <div class="col-md-12 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-aqua"><i class="fa fa-plus-square"></i></span>

                <div class="info-box-content">
                    <span class="info-box-number">SINIF OLUŞTURMA</span>
                    <span class="info-box-text">Formu</span>
                </div>
            </div>
        </div>
    </div>
    <div class="box box-success">
        <div class="row ">
            <br />
            <div class="col col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <table class="table table-borderless">
                    <tbody>
                        <tr>
                            <td class="col col-lg-2 col-md-2 col-sm-2">Sınıf Adı :
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAd" ErrorMessage="Ad Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="txtAd" class="form-control" placeholder="Sınıf Ad.." runat="server"></asp:TextBox>
                            </td>
                        </tr>

                        <tr>
                            <td>Pozisyon :
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="dropPozisyon" ErrorMessage="Pozisyon Kısmı Boş Geçilemez." ForeColor="Red">*</asp:RequiredFieldValidator>

                            </td>
                            <td>
                                <asp:DropDownList ID="dropPozisyon" class="form-control select2" runat="server">
                                    <asp:ListItem>Pozisyon Seçiniz..</asp:ListItem>
                                    <asp:ListItem>X1</asp:ListItem>
                                    <asp:ListItem>X2</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>Açıklama : </td>
                            <td>
                                <div class="form-group">
                                    <textarea id="txtAciklama" class="form-control" rows="4" placeholder="Açıklama ..."></textarea>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" HeaderText="Hata" ForeColor="Red" />
                            </td>
                            <td>
                                <asp:Button ID="btnKayit" class="btn btn-outline-info btn-block btn-success btn-sm" runat="server" Text="Sınıf Oluştur" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
