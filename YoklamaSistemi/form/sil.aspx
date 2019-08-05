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
        var userInput = '<%= Session["id1"].ToString() %>'
        var confirmation = confirm("Emin misiniz?");
        if (confirmation) {
            window.location.href = "islem.aspx?id=" +userInput+"&islem=sil";
            //alert("Kayıt Silinmiştir.");
        }
        else {
            window.location.href="kullanicileriGoster.aspx";
        }
        return confirmation;
    };

</script>
</html>
