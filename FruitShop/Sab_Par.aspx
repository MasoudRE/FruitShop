<%@ Page Title="پرداختی" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeFile="Sab_Par.aspx.cs" Inherits="Sab_Par" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="height: 900px;">

        <ul data-collapse="collapse" class="quick">
        <li>
            <a href="Sab_Par.aspx">
                <img alt="" src="Panel Management/image/statistics.png">
                <span>مدیر</span>
            </a>
        </li>
        <li>
            <a href="#">
                <img alt="" src="Panel Management/image/order-149.png">
                <span>مشتری</span>
            </a>
        </li>
        <li>
            <a href="#">
                <img alt="" src="Panel Management/image/shipping.png">
                <span>پرسنل</span>
            </a>
        </li>
    </ul>

        <h2 style="width: 1125px; height: 25px; float: left;"></h2>
        <h3 style="font-size: 16px; margin-right: 18px;">ثبت پرداختی ها</h3>
        <div style="margin-right: 18px;">
            <div style="margin-top: 15px;">
                <span style="margin-left: 50px;">
                    <asp:Label ID="lb_bar" runat="server" Text="شماره سند :"></asp:Label></span>
                <asp:TextBox ID="txt_bar" runat="server" ReadOnly="True" BackColor="#CCCCCC"></asp:TextBox>
            </div>
            <div style="margin-top: 15px;">
                <span style="margin-left: 50px;">
                    <asp:Label ID="lb_Time" runat="server" Text="تاریخ :"></asp:Label></span>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
            </div>
            <div style="margin-right: 380px; margin-top: -20px;">
                <span style="margin-left: 50px;">
                    <asp:Label ID="Label2" runat="server" Text="کد ملی :"></asp:Label></span>
                <asp:TextBox ID="txt_Code" runat="server"></asp:TextBox>
                <asp:TextBox ID="txt_Name" runat="server" ReadOnly="True" BackColor="White"></asp:TextBox>
            </div>
            <div style="margin-right: 880px; margin-top: -20px;">
                <span style="margin-left: 50px;">
                    <asp:Label ID="Label3" runat="server" Text="نوع پرداختی :"></asp:Label></span>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="100px"></asp:DropDownList>
            </div>
            <div style="margin-top: 15px;">
                <span style="margin-left: 50px;">
                    <asp:Label ID="Label5" runat="server" Text="توضیحات :"></asp:Label></span>
                <asp:TextBox ID="TextBox5" runat="server" Width="400px"></asp:TextBox>
            </div>
            <div style="margin-top: -20px; margin-right: 550px;">
                <span style="margin-left: 50px;">
                    <asp:Label ID="Label6" runat="server" Text="مبلغ :"></asp:Label></span>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </div>
            <div style="margin-top: -20px; margin-right: 830px;">
                <span style="margin-left: 50px;">
                    <asp:Label ID="Label7" runat="server" Text="شماره چک :"></asp:Label></span>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </div>
            <div style="margin-top: 15px;">
                <span style="margin-left: 50px;">
                    <asp:Label ID="Label1" runat="server" Text="تاریخ چک :"></asp:Label></span>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="DateTimeLocal"></asp:TextBox>
            </div>
            <div style="margin-top: -20px; margin-right: 350px;">
                <span style="margin-left: 50px;">
                    <asp:Label ID="Label8" runat="server" Text="تاریخ تسویه حساب :"></asp:Label></span>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </div>
            <span style="margin-top: 20px; margin-right: 850px;">
                <asp:Button ID="Button1" runat="server" Text="ثبت" Font-Size="X-Large" Width="100px" /></span>

        </div>

        <div style="width: 1105px; height: 350px; margin-top: 5px; margin-right: 18px; background-color: cadetblue;">
        </div>
    </div>
</asp:Content>

