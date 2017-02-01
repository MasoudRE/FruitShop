<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownList.aspx.cs" Inherits="FruitShop.Element.DropDown" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/CSS/CSS.css" rel="stylesheet" />
    <script src="../Theme/js/jquery.min.js"></script>

    <%-- bootstrap --%>
    <link href="/Theme/bootstrap-3.3.5/css/bootstrap-Theme.css" rel="stylesheet" />
    <link href="/Theme/bootstrap-3.3.5/css/bootstrap.css" rel="stylesheet" />
    <link href="/Theme/bootstrap-3.3.5/css/gridview_Style.css" rel="stylesheet" />
    <script src="/Theme/bootstrap-3.3.5/js/bootstrap.js"></script>

    <link href="/Theme/bootstrap-3.3.5/bootstrap-rtl.min.css" rel="stylesheet" />

    <%--material--%>
    <script src="/Theme/MDL/material.js"></script>
    <link href="/Theme/MDL/material.css" rel="stylesheet" />
    <link href="/Theme/MDL/icon.css" rel="stylesheet" />
    <link href="/Theme/MDL/css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
      <div>
            <asp:Label runat="server" ID="Label_Status"></asp:Label>
        </div>

        <div runat="server" visible="true" id="div_list">
           <asp:DropDownList runat="server" ID="DropDownList_ListUser" />

            <asp:Button runat="server" ID="Button1" OnClick="btn_Click" Text="get"/>
            <asp:Button runat="server" ID="btn" OnClick="btn_Click1" Text="set"/>
        </div>
    </form>
</body>
</html>
