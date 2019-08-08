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
                            <asp:requiredfieldvalidator id="RequiredFieldValidator4" runat="server" controltovalidate="txtAd" errormessage="Ad Kısmı Boş Geçilemez." forecolor="Red">*</asp:requiredfieldvalidator>
                            </td>
                            <td>
                                <asp:textbox id="txtAd" class="form-control" placeholder="Sınıf Ad.." runat="server"></asp:textbox>
                            </td>
                        </tr>
                        <tr>
                            <td>Açıklama : </td>
                            <td>
                                <div class="form-group">
                                    <textarea class="form-control" id="comment" placeholder="Açıklama.." rows="4"></textarea>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:validationsummary id="ValidationSummary1" runat="server" displaymode="List" headertext="Hata" forecolor="Red" />
                            </td>
                            <td>
                                <asp:button id="btnKayit" class="btn btn-outline-info btn-block btn-success btn-sm" runat="server" text="Sınıf Oluştur" onclick="btnKayit_Click1" onclientclick="SetHiddenField()" />
                                <br />
                                <div class="text-center">
                                    <asp:label id="lbluyari" runat="server" ForeColor="red" Font-Bold="true"></asp:label>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <asp:hiddenfield id="HiddenField" runat="server"></asp:hiddenfield>
    <script type="text/javascript">
        function SetHiddenField() {
            var x = document.getElementById("comment").value;
            document.getElementById('<%=HiddenField.ClientID%>').value = x;
        }
    </script>
</asp:Content>
