<%@ Page Title="ثبت پرداختی" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeFile="Sabt_Pardakhti.aspx.cs" Inherits="Sabt_Pardakhti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="Div_SabtPardakhti" style="height: 900px;">
        <ul data-collapse="collapse" class="quick">
            <li>
                <a href="BarNameh.aspx">
                    <img alt="" src="Panel Management/image/statistics.png">
                    <span>بارنامه</span>
                </a>
            </li>
            <li>
                <a href="Ashkhas.aspx">
                    <img alt="" src="Panel Management/image/order-149.png">
                    <span>صاحب بار</span>
                </a>
            </li>
        </ul>

        <h2 style="font-family:'B Nazanin'; text-align:center; font-size:30px; color:#0c0939;">ثبت پرداختی ها</h2>

        <div runat="server" visible="true" id="Div_AddAshkhas" style="border: 1px solid #2c2b3d; border-radius: 10px; width: 1000px; height: 500px; margin-top: 50px; margin-right: 70px;">
            <div style="margin-top: -30px; text-align: center;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Panel Management/image/Bar.jpg" Width="80px" Height="80px" />
            </div>

            <%-- Add Ashkhas --%>
            <div style="margin-top: 20px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 155px;">
                    <asp:Label ID="Label4" runat="server" Text="شماره سند :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox3" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label9" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 118px;">
                    <asp:Label ID="Label1" runat="server" Text="شماره سند بارنامه :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox2" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 186px;">
                    <asp:Label ID="Label10" runat="server" Text="تاریخ :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="DateTimeLocal" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px"></asp:TextBox>
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="Label11" runat="server" Text="صاحب بار :" Font-Bold="true" /></span>
                <asp:DropDownList ID="DropDownList2" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 190px;">
                    <asp:Label ID="lb_Family" runat="server" Text="مبلغ :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Family" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 155px;">
                    <asp:Label ID="lb_Mobile" runat="server" Text="شماره چک :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Mobile" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 158px;">
                    <asp:Label ID="Label2" runat="server" Text="تاریخ چک :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="DateTimeLocal" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px"></asp:TextBox>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 108px;">
                    <asp:Label ID="Label12" runat="server" Text="تاریخ تسویه حساب :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox9" runat="server" TextMode="DateTimeLocal" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px"></asp:TextBox>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="lb_User" runat="server" Text="توضیحات :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_User" runat="server" Width="310px" Height="50px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-right: 20px; margin-top: 30px;">
                <asp:Button ID="btn_SaveUser" runat="server" Text="ثبت پرداختی" ValidationGroup="Group_Login" Font-Bold="true" Width="90px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

            <div style="margin-right: 115px; margin-top: -30px;">
                <asp:Button ID="Repeat" runat="server" Text="دوباره" ValidationGroup="Group_Login" Font-Bold="true" Width="45px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

        </div>
    </div>
</asp:Content>

