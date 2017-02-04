<%@ Page Title="افزودن بارنامه" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeBehind="Insert_BarNameh.aspx.cs" Inherits="FruitShop.Dashbord.Pgae_Insert_BarNameh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Div_InsertBarNameh" style="height: 1000px;">
        <ul data-collapse="collapse" class="quick">
            <li>
                <a href="Insert_BarNameh.aspx">
                    <img alt="" src="Panel Management/image/statistics.png">
                    <span>افزودن بارنامه</span>
                </a>
            </li>
            <li>
                <a href="Sabt_Pardakhti.aspx">
                    <img alt="" src="Panel Management/image/order-149.png">
                    <span>پرداختی بارنامه</span>
                </a>
            </li>
            <li>
                <a href="Sabt_Pardakhti.aspx">
                    <img alt="" src="Panel Management/image/order-149.png">
                    <span>افزودن شخص</span>
                </a>
            </li>
            <li>
                <a href="Sabt_Pardakhti.aspx">
                    <img alt="" src="Panel Management/image/order-149.png">
                    <span>افزودن محصول</span>
                </a>
            </li>
        </ul>

        <h2 style="width: 1142px; height: 25px; float: left;"></h2>

        <div runat="server" visible="true" id="Div_AddAshkhas" style="border: 1px solid #2c2b3d; border-radius: 10px; width: 1000px; height: 600px; margin-top: 100px; margin-right: 70px;">
            <div style="margin-top: -30px; text-align: center;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Panel Management/image/Bar.jpg" Width="80px" Height="80px" />
            </div>

            <%-- Add Ashkhas --%>
            <div style="margin-top: 20px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 145px;">
                    <asp:Label ID="Label5" runat="server" Text="شماره بارنامه :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox1" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 186px;">
                    <asp:Label ID="lb_Time" runat="server" Text="تاریخ :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="DateTimeLocal" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px"></asp:TextBox>
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="Label4" runat="server" Text="صاحب بار :" Font-Bold="true" /></span>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 192px;">
                    <asp:Label ID="Label6" runat="server" Text="میوه :" Font-Bold="true" /></span>
                <asp:DropDownList ID="DropDownList2" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 151px;">
                    <asp:Label ID="lb_Name" runat="server" Text="وزن ناخالص :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Name" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 187px;">
                    <asp:Label ID="lb_Family" runat="server" Text="تعداد :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Family" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 159px;">
                    <asp:Label ID="lb_Mobile" runat="server" Text="وزن خالص :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Mobile" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>


            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 185px;">
                    <asp:Label ID="lb_Pass" runat="server" Text="قیمت :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Pass" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 188px;">
                    <asp:Label ID="lb_PassRepeat" runat="server" Text="کرایه :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_PassRepeat" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login"></asp:TextBox>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 158px;">
                    <asp:Label ID="Label2" runat="server" Text="جمع خرید :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox3" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="lb_User" runat="server" Text="توضیحات :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_User" runat="server" Width="310px" Height="50px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>



            <div style="margin-right: 20px; margin-top: 30px;">
                <asp:Button ID="btn_SaveUser" runat="server" Text="ثبت بارنامه" ValidationGroup="Group_Login" Font-Bold="true" Width="80px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

            <div style="margin-right: 105px; margin-top: -30px;">
                <asp:Button ID="Repeat" runat="server" Text="دوباره" ValidationGroup="Group_Login" Font-Bold="true" Width="45px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

            <div style="margin-right: 160px; margin-top: -30px;">
                <asp:Button ID="Exit" runat="server" Text="انصراف" ValidationGroup="Group_Login" Font-Bold="true" Width="55px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />

            </div>

        </div>
    </div>
</asp:Content>
