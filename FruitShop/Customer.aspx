<%@ Page Title="مشتری" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div runat="server" visible="true" id="Div_Customer" style="height: 900px; background-color: #ffffff;">

        <ul data-collapse="collapse" class="quick">
            <li>
                <a href="Customer.aspx">
                    <img alt="" src="Panel Management/image/statistics.png">
                    <span>افزودن مشتری</span>
                </a>
            </li>
            <li>
                <a href="Update_Ashkhas.aspx">
                    <img alt="" src="Panel Management/image/order-149.png">
                    <span>جستجو</span>
                </a>
            </li>
        </ul>


        <h2 style="width: 1125px; height: 25px; float: left;"></h2>

        <div runat="server" visible="false" id="Div_CustomerShow" style="width: 1105px; margin-right: 18px; height: 350px; margin-top: 5px; background-color: cadetblue;">
        </div>

        <%-- Create Customer --%>
        <div runat="server" visible="false" id="div_AddCustomer" style="border: 1px solid #2c2b3d; border-radius: 10px; width: 1000px; height: 400px; margin-top: 100px; margin-right: 70px;">
            <div style="margin-top: -30px; text-align: center;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Panel Management/image/images.jpg" Width="70px" Height="70px" />
            </div>

             <div style="margin-top: 20px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 138px;">
                    <asp:Label ID="Label5" runat="server" Text="شماره مشتری :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox1" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label6" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 200px;">
                    <asp:Label ID="lb_Name" runat="server" Text="نام :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Name" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                لطفاً فارسی بنویسید
                    </asp:Label></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 146px;">
                    <asp:Label ID="lb_Family" runat="server" Text="نام خانوادگی :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Family" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                لطفاً فارسی بنویسید
                    </asp:Label></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 155px;">
                    <asp:Label ID="lb_Mobile" runat="server" Text="تلفن همراه :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Mobile" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت اطلاع رسانی (پیامک)
                    </asp:Label></span>
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 184px;">
                    <asp:Label ID="lb_Email" runat="server" Text="ایمیل :" Font-Bold="true" /></span>
                <%-- <asp:RequiredFieldValidator ID="RFV_Email" runat="server" ErrorMessage="فیلد ایمیل را پر نمایید" ValidationGroup="Group_Login" Display="None" ControlToValidate="txt_Email" />--%>
                <%--<asp:CompareValidator ID="CV_Email" runat="server" ErrorMessage="نام کاربری وارد شده صحیح نمی باشد" ControlToCompare="txt_User" ControlToValidate="txt_Email" Display="None" ValidationGroup="Group_Login" />--%>
                <%-- <asp:RegularExpressionValidator ID="REV_Email" runat="server" ErrorMessage="RegularExpressionValidator" Display="None" ValidationGroup="Group_Login" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_Email" />--%>
                <asp:TextBox ID="txt_Email" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 159px;">
                    <asp:Label ID="lb_User" runat="server" Text="نام کاربری :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_User" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 160px;">
                    <asp:Label ID="lb_Pass" runat="server" Text="کلمه عبور :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Pass" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 127px;">
                    <asp:Label ID="lb_PassRepeat" runat="server" Text="تکرار کلمه عبور :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_PassRepeat" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login"></asp:TextBox>
            </div>
            <div style="margin-top: 20px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="true" ForeColor="#000066">
                » برای تکمیل و یا ویرایش مشخصات کاربری در صورت تمایل می توانید از طریق لینک محیط کاربری پس از ورود اقدام نمایید.
                    </asp:Label></span>
            </div>


            <div style="margin-right: 20px; margin-top: 20px;">
                <asp:Button ID="btn_SaveUser" runat="server" Text="ثبت عضویت" ValidationGroup="Group_Login" Font-Bold="true" Width="80px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

            <div style="margin-right: 105px; margin-top: -30px;">
                <asp:Button ID="Repeat" runat="server" Text="دوباره" ValidationGroup="Group_Login" Font-Bold="true" Width="45px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

        </div>

        <%-- Edit Customer --%>
        <div runat="server" visible="true" id="Div_EditCustomer" style="border: 1px solid #2c2b3d; border-radius: 10px; width: 1000px; height: 400px; margin-top: 100px; margin-right: 70px;">
            <div style="margin-top: -30px; text-align: center;">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Panel Management/image/images.jpg" Width="70px" Height="70px" />
            </div>

             <div style="margin-top: 20px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 138px;">
                    <asp:Label ID="Label7" runat="server" Text="شماره مشتری :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox2" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label8" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 200px;">
                    <asp:Label ID="Label9" runat="server" Text="نام :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox3" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label10" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                لطفاً فارسی بنویسید
                    </asp:Label></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 146px;">
                    <asp:Label ID="Label11" runat="server" Text="نام خانوادگی :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox4" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label12" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                لطفاً فارسی بنویسید
                    </asp:Label></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 155px;">
                    <asp:Label ID="Label13" runat="server" Text="تلفن همراه :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox5" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label14" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت اطلاع رسانی (پیامک)
                    </asp:Label></span>
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 184px;">
                    <asp:Label ID="Label15" runat="server" Text="ایمیل :" Font-Bold="true" /></span>
                <%-- <asp:RequiredFieldValidator ID="RFV_Email" runat="server" ErrorMessage="فیلد ایمیل را پر نمایید" ValidationGroup="Group_Login" Display="None" ControlToValidate="txt_Email" />--%>
                <%--<asp:CompareValidator ID="CV_Email" runat="server" ErrorMessage="نام کاربری وارد شده صحیح نمی باشد" ControlToCompare="txt_User" ControlToValidate="txt_Email" Display="None" ValidationGroup="Group_Login" />--%>
                <%-- <asp:RegularExpressionValidator ID="REV_Email" runat="server" ErrorMessage="RegularExpressionValidator" Display="None" ValidationGroup="Group_Login" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_Email" />--%>
                <asp:TextBox ID="TextBox6" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label22" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 159px;">
                    <asp:Label ID="Label16" runat="server" Text="نام کاربری :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox7" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 160px;">
                    <asp:Label ID="Label17" runat="server" Text="کلمه عبور :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox8" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px"  ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label21" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 127px;">
                    <asp:Label ID="Label18" runat="server" Text="تکرار کلمه عبور :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox9" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login " ReadOnly="True"></asp:TextBox>
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label20" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>

            <div style="margin-right: 105px; margin-top: 30px;">
                <asp:Button ID="Button2" runat="server" Text="تغییر کلمه عبور" ValidationGroup="Group_Login" Font-Bold="true" Width="100px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>            

            <div style="margin-right: 20px; margin-top: 20px;">
                <asp:Button ID="Button1" runat="server" Text="ثبت عضویت" ValidationGroup="Group_Login" Font-Bold="true" Width="80px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

        </div>

    </div>

</asp:Content>
