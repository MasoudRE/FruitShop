<%@ Page Title="محیط کاربری" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div runat="server" visible="true" id="Div_Profile" style="background-color: #ffffff; border: 1px solid #2c2b3d; border-radius: 10px; width: 1000px; height: 700px; margin-top: 70px; margin-right: 70px; text-align: right;">
        <div style="margin-top: -50px; text-align: center;">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Panel Management/image/User.png" Width="85px" Height="85px" />
        </div>

        <div runat="server" visible="true" id="Div1" style="border: 1px solid #2c2b3d; border-radius: 10px; width: 900px; height: 250px; margin-top: 30px; margin-left: 50px;">
            <div runat="server" id="Profile_User" style="margin-top: 40px; text-align: right;">
                <div style="margin-right: 70px;">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Panel Management/image/Edit_User.png" BorderColor="Black" />
                </div>
                <div style="margin-top: -68px; margin-right: 300px;">
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Panel Management/image/Sabad.png" BorderColor="Black" />
                </div>

                <div style="margin-right: 80px; margin-top: 30px;">
                    <asp:Button ID="btnSearch" Style="font-family: 'B Nazanin'; font-size: 16px;" runat="server" Text="ویرایش مشخصات کاربری" Width="150px" />
                </div>
                <div style="margin-top: -30px; margin-right: 317px;">
                    <asp:Button ID="Button2" Style="font-family: 'B Nazanin'; font-size: 16px;" runat="server" Text="سفارش محصولات" Width="120px" />
                </div>
            </div>
        </div>

        <div>
            <span><asp:Label ID="Label1" runat="server" Text="مشخصات کاربر"></asp:Label></span>
        </div>
        <div style="background-color:#000000;"></div>
        <%-- Edit Ashkhas --%>
        <div runat="server" visible="false" id="Div_EditAshkhas">
            <div style="margin-top: 20px; margin-right: 25px;">
                <asp:TextBox ID="TextBox2" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 140px;">
                    <asp:Label ID="Label4" runat="server" Text=": کد صاحب بار" Font-Bold="true" /></span>

            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label6" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <asp:TextBox ID="TextBox3" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 197px;">
                    <asp:Label ID="Label7" runat="server" Text=": نام" Font-Bold="true" /></span>
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label8" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                لطفاً فارسی بنویسید
                    </asp:Label></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <asp:TextBox ID="TextBox4" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 143px;">
                    <asp:Label ID="Label9" runat="server" Text=": نام خانوادگی" Font-Bold="true" /></span>
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label10" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                لطفاً فارسی بنویسید
                    </asp:Label></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <asp:TextBox ID="TextBox5" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 172px;">
                    <asp:Label ID="Label11" runat="server" Text=": کد ملی" Font-Bold="true" /></span>
            </div>


            <div style="margin-top: 5px; margin-right: 25px;">
                <asp:TextBox ID="TextBox6" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 158px;">
                    <asp:Label ID="Label12" runat="server" Text=": تلفن ثابت" Font-Bold="true" /></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <asp:TextBox ID="TextBox7" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login"></asp:TextBox>
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 152px;">
                    <asp:Label ID="Label13" runat="server" Text=": تلفن همراه" Font-Bold="true" /></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 181px;">
                    <asp:Label ID="Label14" runat="server" Text=": معرف" Font-Bold="true" /></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <asp:TextBox ID="TextBox8" runat="server" Width="310px" Height="75px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 179px;">
                    <asp:Label ID="Label15" runat="server" Text=": آدرس" Font-Bold="true" /></span>
            </div>



            <div style="margin-right: 20px; margin-top: 30px;">
                <asp:Button ID="Button1" runat="server" Text="ثبت ویرایش" ValidationGroup="Group_Login" Font-Bold="true" Width="80px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>
        </div>
    </div>
</asp:Content>
