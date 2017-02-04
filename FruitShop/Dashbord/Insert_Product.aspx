<%@ Page Title="افزودن محصول" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeBehind="Insert_Product.aspx.cs" Inherits="FruitShop.Dashbord.Page_Insert_Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 900px;">
        <ul data-collapse="collapse" class="quick">
            <li>
                <a href="Miveh.aspx">
                    <img alt="" src="Panel Management/image/statistics.png" />
                    <span>میوه</span>
                </a>
            </li>
            <li>
                <a href="SeyfiJat.aspx">
                    <img alt="" src="Panel Management/image/order-149.png" />
                    <span>صیفی جات</span>
                </a>
            </li>
        </ul>
        <h2 style="font-family: 'B Nazanin'; text-align: center; font-size: 30px; color: #0c0939;">ثبت محصول</h2>

        <div runat="server" visible="true" id="Div_InsertMahsolat" style="border: 1px solid #2c2b3d; border-radius: 10px; width: 1000px; height: 400px; margin-top: 50px; margin-right: 70px;">
            <div style="margin-top: -45px; text-align: center;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Panel Management/image/Miveh.png" Width="80px" Height="80px" />
            </div>

            <div style="margin-top: 20px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 155px;">
                    <asp:Label ID="lb_MahsolatID" runat="server" Text="کد محصول :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_MahsolatID" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 155px;">
                    <asp:Label ID="lb_Name" runat="server" Text="نام محصول :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Name" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 79px;">
                    <asp:Label ID="lb_OldPrice" runat="server" Text="قیمت پیشنهادی محصول :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_OldPrice" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 148px;">
                    <asp:Label ID="lb_NewPrice" runat="server" Text="قیمت فروش :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_NewPrice" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 10px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 177px;">
                    <asp:Label ID="lb_IsDiscount" runat="server" Text="تخفیف :" Font-Bold="true" /></span>
                <asp:RadioButton ID="RB_IsDiscount_True" runat="server" />
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 177px;">
                    <label>دارد</label></span>
                <asp:RadioButton ID="RB_IsDiscount_False" runat="server" />
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 177px;">
                    <label>ندارد</label></span>
            </div>


            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="lb_Picture" runat="server" Text="تصویر :" Font-Bold="true" /></span>
            </div>
            <div style="margin-top: -22px; margin-right: 253px;">
                <asp:FileUpload ID="FileUpload_Picture" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="lb_Description" runat="server" Text="توضیحات :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Description" runat="server" Width="310px" Height="75px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-right: 20px; margin-top: 30px;">
                <asp:Button ID="btn_SaveUser" runat="server" Text="ثبت محصول" ValidationGroup="Group_Login" Font-Bold="true" Width="80px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" OnClick="btn_SaveUser_Click" />
            </div>

            <div style="margin-right: 105px; margin-top: -30px;">
                <asp:Button ID="Repeat" runat="server" Text="دوباره" ValidationGroup="Group_Login" Font-Bold="true" Width="45px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

            <div style="margin-right: 160px; margin-top: -30px;">
                <asp:Button ID="Exit" runat="server" Text="انصراف" ValidationGroup="Group_Login" Font-Bold="true" Width="55px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

        </div>

        --------------------------------------Edit Product--------------------------------------------------------------
        <div runat="server" visible="true" id="Div_EditProduct" style="border: 1px solid #2c2b3d; border-radius: 10px; width: 1000px; height: 400px; margin-top: 50px; margin-right: 70px;">
            <div style="margin-top: -45px; text-align: center;">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Panel Management/image/Miveh.png" Width="80px" Height="80px" />
            </div>

            <div style="margin-top: 20px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 155px;">
                    <asp:Label ID="Label2" runat="server" Text="کد محصول :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_EditAshkasID" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 155px;">
                    <asp:Label ID="Label4" runat="server" Text="نام محصول :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_EditName" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 79px;">
                    <asp:Label ID="Label5" runat="server" Text="قیمت پیشنهادی محصول :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_EditOldPrice" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 148px;">
                    <asp:Label ID="Label6" runat="server" Text="قیمت فروش :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_EditNewPrice" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 10px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 177px;">
                    <asp:Label ID="Label7" runat="server" Text="تخفیف :" Font-Bold="true" /></span>
                <asp:RadioButton ID="RB_EditIsDiscount_True" runat="server" />
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 177px;">
                    <label>دارد</label></span>
                <asp:RadioButton ID="RB_EditIsDiscount_False" runat="server" />
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 177px;">
                    <label>ندارد</label></span>
            </div>


            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="Label8" runat="server" Text="تصویر :" Font-Bold="true" /></span>
            </div>
            <div style="margin-top: -22px; margin-right: 253px;">
                <asp:FileUpload ID="FileUpload_EditPicture" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="Label9" runat="server" Text="توضیحات :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_EditDescription" runat="server" Width="310px" Height="75px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-right: 20px; margin-top: 30px;">
                <asp:Button ID="Button1" runat="server" Text="ثبت ویرایش" ValidationGroup="Group_Login" Font-Bold="true" Width="80px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" OnClick="btn_SaveUser_Click" />
            </div>

            <div style="margin-right: 105px; margin-top: -30px;">
                <asp:Button ID="Button2" runat="server" Text="دوباره" ValidationGroup="Group_Login" Font-Bold="true" Width="45px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

            <div style="margin-right: 160px; margin-top: -30px;">
                <asp:Button ID="Button3" runat="server" Text="انصراف" ValidationGroup="Group_Login" Font-Bold="true" Width="55px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

        </div>

    </div>
</asp:Content>
