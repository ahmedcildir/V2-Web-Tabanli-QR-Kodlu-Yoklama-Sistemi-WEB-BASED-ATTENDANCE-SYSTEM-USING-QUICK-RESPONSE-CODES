<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sil.aspx.cs" Inherits="YoklamaSistemi.form.sil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body onload="ShowConfirm()">
    <form id="form1" runat="server">
        <div>
            <asp:HiddenField ID="hdntxtbxTaksit" runat="server" />
        </div>
    </form>
</body>
<script type="text/javascript">

    function ShowConfirm() {
<%--        var myHidden = document.getElementById('<%= hdntxtbxTaksit.ClientID %>').nodeValue;--%>
        var id = '<%= Session["id1"].ToString() %>';
        var kategori = '<%= Session["kate"].ToString() %>';
        var confirmation = confirm("Bu kullanıcıyı Silmek İstediğinizden Emin misiniz?");
        if (confirmation) {
            window.location.href = "islem.aspx?id=" + id + "&islem=sil&kate=" + kategori;
            //alert("Kayıt Silinmiştir.");
        }
        else {
            if (kategori=="kullanici") {
                window.location.href="kullanicileriGoster.aspx";
            }
            else {
                    window.location.href="yoneticiGoster.aspx";
            }
            
        }
        return confirmation;
    };

</script>
</html>
