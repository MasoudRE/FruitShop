<%@ Page Title="تغییر کلمه عبور" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="ChangePass.aspx.cs" Inherits="ChangePass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div runat="server" visible="true" id="Div_Profile" style="background-color: #ffffff; border: 1px solid #2c2b3d; border-radius: 10px; width: 1000px; height: 300px; margin-top: 70px; margin-right: 70px; text-align: right;">
        <div style="margin-top: -50px; text-align: center;">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Panel Management/image/Change.png" Width="85px" Height="85px" />
        </div>

        <div style="margin-top: 25px; margin-right: 35px;">
            <asp:TextBox ID="TextBox3" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 120px;">
                <asp:Label ID="Label7" runat="server" Text=": کلمه عبور فعلی" Font-Bold="true" /></span>
        </div>
        <div style="margin-top: 5px; margin-right: 35px;">
            <asp:TextBox ID="TextBox1" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 116px;">
                <asp:Label ID="Label1" runat="server" Text=": کلمه عبور جدید" Font-Bold="true" /></span>
        </div>
        <div style="margin-top: 5px; margin-right: 35px;">
            <asp:TextBox ID="TextBox2" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 84px;">
                <asp:Label ID="Label2" runat="server" Text=": تکرار کلمه عبور جدید" Font-Bold="true" /></span>
        </div>
        <div style="margin-right: 30px; margin-top: 35px;">
            <asp:Button ID="Button1" runat="server" Text="تایید" ValidationGroup="Group_Login" Font-Bold="true" Width="60px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
        </div>
    </div>
</asp:Content>
