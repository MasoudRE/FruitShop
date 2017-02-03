<%@ Page Title="باقی مانده محصول" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeBehind="BaghiMandeh_Product.aspx.cs" Inherits="BaghiMandeh_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" id="Div_Varizi" style="height: 900px;">

        <div class="row" style="margin-right: 50px; margin-top: 15px;">
            <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 10px;">
                <asp:Label ID="Label2" runat="server" Text="صاحب بار :" Font-Bold="true" /></span>
            <asp:TextBox ID="TextBox2" runat="server" Width="100px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            <asp:TextBox ID="TextBox1" runat="server" Width="150px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
        </div>
        <div style="margin-top: -25px; margin-right: 500px;">
            <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 10px;">
                <asp:Label ID="Label6" runat="server" Text="نام محصول :" Font-Bold="true" /></span>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="180px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
        </div>

        <div style="margin-right: 890px; margin-top: -29px;">
            <asp:Button ID="btn_SaveUser" runat="server" Text="ثبت بارنامه" ValidationGroup="Group_Login" Font-Bold="true" Width="80px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
        </div>
        <h2 style="width: 1125px; height: 25px; float: left; margin-left:25px;"></h2>

        <div class="row" runat="server" visible="true" id="Div_VariziUser" style="width: 1105px; margin-right: 28px; height: 500px; margin-top: 90px; background-color: cadetblue;">
        </div>

    </div>
</asp:Content>
