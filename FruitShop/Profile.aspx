<%@ Page Title="محیط کاربری" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div runat="server" visible="true" id="Div_Profile" style="background-color: #ffffff; border: 1px solid #2c2b3d; border-radius: 10px; width: 1000px; height: auto; margin-top: 70px; margin-right: 70px; text-align: right;">
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
                    <asp:Button ID="btn_InfoUser" Style="font-family: 'B Nazanin'; font-size: 16px;" runat="server" Text="ویرایش مشخصات کاربری" Width="150px" OnClick="btn_InfoUser_Click" />
                </div>
                <div style="margin-top: -30px; margin-right: 317px;">
                    <asp:Button ID="Button2" Style="font-family: 'B Nazanin'; font-size: 16px;" runat="server" Text="سفارش محصولات" Width="120px" />
                </div>
            </div>
        </div>

        <%-- Edit Aser --%>
        <div runat="server" id="Div_EdiInfoUser" visible="false" style="margin-right: 50px;">
            <div style="margin-top: 15px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976;">
                    <asp:Label ID="lb_Info" runat="server" Text="مشخصات کاربر" Font-Bold="true" /></span>
            </div>
            <div style="background-color: #000000; width: 850px; height: 2px; margin-left: 100px; margin-top: 5px;"></div>

            <div runat="server" visible="true" id="Div_EditAshkhas">
                <div style="margin-top: 20px; margin-right: 25px;">
                    <asp:TextBox ID="TextBox2" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
                    <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 153px;">
                        <asp:Label ID="Label4" runat="server" Text=": کد مشتری" Font-Bold="true" /></span>
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
                <div style="margin-top: -25px; margin-right: 570px;">
                    <span style="font-family: 'B Nazanin'; font-size: 15px;">
                        <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                        </asp:Label></span>
                </div>

                <div style="margin-top: 5px; margin-right: 25px;">
                    <asp:TextBox ID="TextBox1" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
                    <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 182px;">
                        <asp:Label ID="Label1" runat="server" Text=": ایمیل" Font-Bold="true" /></span>
                </div>

                <div style="margin-top: 5px; margin-right: 25px;">
                    <asp:TextBox ID="TextBox9" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
                    <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 156px;">
                        <asp:Label ID="Label14" runat="server" Text=": نام کاربری" Font-Bold="true" /></span>
                </div>

                <div style="margin-top: 5px; margin-right: 25px;">
                    <asp:TextBox ID="TextBox6" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
                    <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 158px;">
                        <asp:Label ID="Label12" runat="server" Text=": تلفن ثابت" Font-Bold="true" /></span>
                </div>

                <div style="margin-top: 5px; margin-right: 25px;">
                    <asp:TextBox ID="TextBox7" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login"></asp:TextBox>
                    <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 153px;">
                        <asp:Label ID="Label13" runat="server" Text=": تلفن همراه" Font-Bold="true" /></span>
                </div>

                <div style="margin-top: 5px; margin-right: 25px;">
                    <asp:TextBox ID="TextBox10" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login"></asp:TextBox>
                    <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 160px;">
                        <asp:Label ID="Label2" runat="server" Text=": کد ‍پستی" Font-Bold="true" /></span>
                </div>

                <div style="margin-top: 5px; margin-right: 25px;">
                    <asp:TextBox ID="TextBox8" runat="server" Width="310px" Height="75px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
                    <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 179px;">
                        <asp:Label ID="Label15" runat="server" Text=": آدرس" Font-Bold="true" /></span>
                </div>

                <div style="margin-right: 248px; margin-top: 5px;">
                    <asp:Button ID="Button3" runat="server" Text="تغییر کلمه عبور" ValidationGroup="Group_Login" Font-Bold="true" Width="105px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" OnClick="Button3_Click" />
                </div>


                <div style="margin-right: 20px; margin-top: 30px;">
                    <asp:Button ID="btn_SaveInfo" runat="server" Text="ثبت ویرایش" ValidationGroup="Group_Login" Font-Bold="true" Width="80px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px"/>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
