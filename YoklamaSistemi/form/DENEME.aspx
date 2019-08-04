﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DENEME.aspx.cs" Inherits="YoklamaSistemi.form.DENEME" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
        /* Style the input field */
        #myInput {
            padding: 20px;
            margin-top: -6px;
            border: 0;
            border-radius: 0;
            background: #f1f1f1;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Filterable Dropdown</h2>
        <p>Open the dropdown menu and type something in the input field to search for dropdown items:</p>
        <p>Note that we have styled the input field to fit the dropdown items.</p>
        <div class="dropdown">
            <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                Dropdown Example
    <span class="caret"></span>
            </button>
            <ul class="dropdown-menu">
                <input class="form-control" id="myInput" type="text" placeholder="Search..">
                <li><a href="#">HTML</a></li>
                <li><a href="#">CSS</a></li>
                <li><a href="#">JavaScript</a></li>
                <li><a href="#">jQuery</a></li>
                <li><a href="#">Bootstrap</a></li>
                <li><a href="#">Angular</a></li>
            </ul>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $(".dropdown-menu li").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>

</body>
</html>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    </form>
</body>
</html>--%>
