﻿<%@ Page Title="User" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" EnableSessionState="False" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="float: left; margin-top: 25px;">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Panel Management/image/2.jpg" Width="650px" Height="830px" />
    </div>
    <div style="background-color: #232323; width: 355px; height: 830px; margin-top: 25px; float: right;">

        <%-- CreateUser --%>
        <h3 style="font-size: 24px; font-family: 'B Nazanin'; float: right; color: #AA8547; margin-right: 20px; margin-top: 10px;">ثبت نام</h3>
        <div style="width: 320px; height: 5px; margin-top: 50px; background-color: #AA8547; margin-left: 15px;"></div>

        <div style="margin-top: 10px; margin-left: 313px;">
            <span style="font-family: 'B Nazanin'; font-size: 16px; color: #ccdec6;">
                <asp:Label ID="lb_Name" runat="server" Text="نام" Font-Bold="true" /></span>
        </div>
        <div style="margin-left: 15px; margin-top: 5px;">
            <asp:RequiredFieldValidator ID="RFV_Name" runat="server" ErrorMessage="فیلد نام را پر نمایید" ValidationGroup="Group_Login" Display="None" ControlToValidate="txt_Name" />
            <asp:TextBox ID="txt_Name" runat="server" Width="310px" Height="20px" BackColor="#333333" BorderColor="#AA8547" ValidationGroup="Group_Login" />
        </div>

        <div style="margin-top: 10px; margin-left: 260px;">
            <span style="font-family: 'B Nazanin'; font-size: 16px; color: #ccdec6;">
                <asp:Label ID="lb_Family" runat="server" Text="نام خانوادگی" Font-Bold="true" /></span>
        </div>
        <div style="margin-left: 15px; margin-top: 5px;">
            <asp:RequiredFieldValidator ID="RFV_Family" runat="server" ErrorMessage="فیلد نام خانوادگی را پر نمایید" ValidationGroup="Group_Login" Display="None" ControlToValidate="txt_Family" />
            <asp:TextBox ID="txt_Family" runat="server" Width="310px" Height="20px" BackColor="#333333" BorderColor="#AA8547" ValidationGroup="Group_Login" />
        </div>

        <div style="margin-top: 10px; margin-left: 288px;">
            <span style="font-family: 'B Nazanin'; font-size: 16px; color: #ccdec6;">
                <asp:Label ID="lb_CodeMeli" runat="server" Text="کد ملی" Font-Bold="true" /></span>
        </div>
        <div style="margin-left: 15px; margin-top: 5px;">
            <asp:RequiredFieldValidator ID="RFV_CodeMeli" runat="server" ErrorMessage="فیلد کد ملی را پر نمایید" ValidationGroup="Group_Login" Display="None" ControlToValidate="txt_CodeMeli" />
            <asp:TextBox ID="txt_CodeMeli" runat="server" Width="310px" Height="20px" BackColor="#333333" BorderColor="#AA8547" ValidationGroup="Group_Login" />
        </div>

        <div style="margin-top: 10px; margin-left: 297px;">
            <span style="font-family: 'B Nazanin'; font-size: 16px; color: #ccdec6;">
                <asp:Label ID="lb_Email" runat="server" Text="ایمیل" Font-Bold="true" /></span>
        </div>
        <div style="margin-left: 15px; margin-top: 5px;">
            <asp:RequiredFieldValidator ID="RFV_Email" runat="server" ErrorMessage="فیلد ایمیل را پر نمایید" ValidationGroup="Group_Login" Display="None" ControlToValidate="txt_Email" />
            <asp:CompareValidator ID="CV_Email" runat="server" ErrorMessage="نام کاربری وارد شده صحیح نمی باشد" ControlToCompare="txt_User" ControlToValidate="txt_Email" Display="None" ValidationGroup="Group_Login" />
            <asp:RegularExpressionValidator ID="REV_Email" runat="server" ErrorMessage="RegularExpressionValidator" Display="None" ValidationGroup="Group_Login" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_Email" />
            <asp:TextBox ID="txt_Email" runat="server" Width="310px" Height="20px" BackColor="#333333" BorderColor="#AA8547" ValidationGroup="Group_Login" />
        </div>

        <div style="margin-top: 10px; margin-left: 227px;">
            <span style="font-family: 'B Nazanin'; font-size: 16px; color: #ccdec6;">
                <asp:Label ID="lb_User" runat="server" Text="(نام کاربری (ایمیل" Font-Bold="true" /></span>
        </div>
        <div style="margin-left: 15px; margin-top: 5px;">
            <asp:RequiredFieldValidator ID="RFV_User" runat="server" ErrorMessage="فیلد نام کاربری را پر نمایید" ValidationGroup="Group_Login" Display="None" ControlToValidate="txt_User" />
            <asp:TextBox ID="txt_User" runat="server" Width="310px" Height="20px" BackColor="#333333" BorderColor="#AA8547" ValidationGroup="Group_Login" />
        </div>

        <div style="margin-top: 10px; margin-left: 272px;">
            <span style="font-family: 'B Nazanin'; font-size: 16px; color: #ccdec6;">
                <asp:Label ID="lb_Pass" runat="server" Text="کلمه عبور" Font-Bold="true" /></span>
        </div>
        <div style="margin-left: 15px; margin-top: 5px;">
            <asp:RequiredFieldValidator ID="RFV_Pass" runat="server" ErrorMessage="فیلد کلمه عبور را پر نمایید" ValidationGroup="Group_Login" Display="None" ControlToValidate="txt_Pass" />
            <asp:CompareValidator ID="CV_Pass" runat="server" ErrorMessage="کلمه عبور وارد شده صحیح شده نمی باشد " ValidationGroup="Group_Login" Display="None" ControlToValidate="txt_Pass" ControlToCompare="txt_PassRepeat" />
            <asp:TextBox ID="txt_Pass" runat="server" Width="310px" Height="20px" BackColor="#333333" BorderColor="#AA8547" ValidationGroup="Group_Login" />
        </div>

        <div style="margin-top: 10px; margin-left: 241px;">
            <span style="font-family: 'B Nazanin'; font-size: 16px; color: #ccdec6;">
                <asp:Label ID="lb_PassRepeat" runat="server" Text="تکرار کلمه عبور" Font-Bold="true" /></span>
        </div>
        <div style="margin-left: 15px; margin-top: 5px;">
            <asp:RequiredFieldValidator ID="RFV_PassRepeat" runat="server" ErrorMessage="فیلد تکرار کلمه عبور را پر نمایید" ValidationGroup="Group_Login" Display="None" ControlToValidate="txt_PassRepeat" />
            <asp:TextBox ID="txt_PassRepeat" runat="server" Width="310px" Height="20px" BackColor="#333333" BorderColor="#AA8547" ValidationGroup="Group_Login"></asp:TextBox>
        </div>

        <div style="margin-top: 10px; margin-left: 227px;">
            <span style="font-family: 'B Nazanin'; font-size: 16px; color: #ccdec6;">
                <asp:Label ID="lb_Phone" runat="server" Text="تلفن ثابت" Font-Bold="true" Visible="False" /></span>
        </div>
        <div style="margin-left: 15px; margin-top: 5px;">
            <asp:RequiredFieldValidator ID="RFV_Phone" runat="server" ErrorMessage="فیلد تلفن ثابت را پر نمایید" ValidationGroup="Group_Login" Display="None" ControlToValidate="txt_Phone" />
            <asp:TextBox ID="txt_Phone" runat="server" Width="310px" Height="20px" BackColor="#333333" BorderColor="#AA8547" Visible="false" ValidationGroup="Group_Login" />
        </div>

        <div style="margin-top: 10px; margin-left: 269px;">
            <span style="font-family: 'B Nazanin'; font-size: 16px; color: #ccdec6;">
                <asp:Label ID="lb_Mobile" runat="server" Text="تلفن همراه" Font-Bold="true" /></span>
        </div>
        <div style="margin-left: 15px; margin-top: 5px;">
            <asp:RequiredFieldValidator ID="RFV_Mobile" runat="server" ErrorMessage="فیلد تلفن همراه را پر نمایید" ValidationGroup="Group_Login" Display="None" ControlToValidate="txt_Mobile" />
            <asp:TextBox ID="txt_Mobile" runat="server" Width="310px" Height="20px" BackColor="#333333" BorderColor="#AA8547" ValidationGroup="Group_Login" />
        </div>

        <div style="margin-top: 10px; margin-left: 295px;">
            <span style="font-family: 'B Nazanin'; font-size: 16px; color: #ccdec6;">
                <asp:Label ID="lb_Address" runat="server" Text="آدرس" Font-Bold="true" /></span>
        </div>
        <div style="margin-left: 15px; margin-top: 5px;">
            <asp:RequiredFieldValidator ID="RFV_Address" runat="server" ErrorMessage="فیلد آدرس را پر نمایید" ValidationGroup="Group_Login" Display="None" ControlToValidate="txt_Address" />
            <asp:TextBox ID="txt_Address" runat="server" Width="310px" Height="60px" BackColor="#333333" BorderColor="#AA8547" ValidationGroup="Group_Login" />
        </div>

        <div style="margin-top: 10px; margin-left: 227px;">
            <span style="font-family: 'B Nazanin'; font-size: 16px; color: #ccdec6;">
                <asp:Label ID="lb_CodePost" runat="server" Text="کد پستی" Font-Bold="true" Visible="false" /></span>
        </div>
        <div style="margin-left: 15px; margin-top: 5px;">
            <asp:RequiredFieldValidator ID="RFV_CodePost" runat="server" ErrorMessage="فیلد کد پستی را پر نمایید" ValidationGroup="Group_Login" Display="None" ControlToValidate="txt_CodePost" SetFocusOnError="True" />
            <asp:TextBox ID="txt_CodePost" runat="server" Width="310px" Height="20px" BackColor="#333333" BorderColor="#AA8547" Visible="false" ValidationGroup="Group_Login" />
        </div>

        <div style="margin-left: 311px; margin-top: 30px;">
            <asp:CheckBox ID="CheckBox_Forget" runat="server" />
        </div>
        <span style="font-family: 'B Nazanin'; font-size: 16px; color: #AA8547; float: right; margin-top: -24px; margin-right: 34px;">
            <asp:Label ID="Label2" runat="server" Text="با قوانین و مقررات سایت موافق هستم" /></span>

        <div style="margin-left: 200px; margin-top: 20px;">
            <asp:Button ID="btn_SaveUser" runat="server" Text="ثبت نام" ValidationGroup="Group_Login" Font-Bold="true" Width="100px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#333333" BorderColor="#AA8547" ForeColor="#AA8547" />
        </div>

        <asp:ValidationSummary ID="VS_User" runat="server" ValidationGroup="Group_Login" ShowMessageBox="True" ShowSummary="False" />


    </div>
</asp:Content>

