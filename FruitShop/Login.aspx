<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="float:left; margin-top:30px;">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Panel Management/image/1.jpg" Width="650px" Height="380px"/>
    </div>

    

    <div class="row" style="background-color:#232323; width: 355px; height: 380px; margin-top: 30px; float:right;">
        <h3 style="font-size: 24px; font-family: 'B Nazanin'; float:right; color:#AA8547; margin-right:20px; margin-top:10px;">ورود حساب کاربری</h3>
        <div style="width: 315px; height: 5px; margin-top:50px; background-color:#AA8547; margin-left:15px;"></div>
        
        <%-- Login --%>
        <div style="margin-top:10px;  margin-left:260px;">
             <span style="font-family: 'B Nazanin'; font-size: 16px; color:#ccdec6; ">
              <asp:Label ID="lb_Username" runat="server" Text=": نام کاربری" Font-Bold="true" /></span>
        </div>
       
        <div style="margin-left:15px; margin-top:5px;">
            <asp:TextBox ID="txt_Username" runat="server" CssClass="" Width="305px" Height="22px" BackColor="#333333" BorderColor="#AA8547" />
        </div>

        <div style="margin-top:10px;  margin-left:260px;">
             <span style="font-family: 'B Nazanin'; font-size: 16px; color:#ccdec6; ">
              <asp:Label ID="Label1" runat="server" Text=": کلمه عبور" Font-Bold="true" /></span>
        </div>

        <div style="margin-left: 15px; margin-top: 5px;">
            <asp:TextBox ID="txt_Password" runat="server"  Width="305px" Height="22px" BackColor="#333333" BorderColor="#AA8547"/>
        </div>

         <span style="font-family: 'B Nazanin'; font-size: 16px; color:#AA8547; float:right; margin-top:15px; margin-right:34px;">
              <asp:Label ID="Label2" runat="server" Text="فراموشی کلمه عبور"/></span>

        <div style="margin-left: 305px; margin-top: 50px;">
            <asp:CheckBox ID="CheckBox_Forget" runat="server"/>
        </div>
        
        <div style="margin-left: 223px; margin-top: -23px;">
             <span style="font-family: 'B Nazanin'; font-size: 15px; color:#ccdec6;">
              <asp:Label ID="lb_Forget" runat="server" Text="مرا به خاطر بسپار"/></span>
        </div>
        <div style="margin-left: 15px; margin-top: 30px;">
            <a href="User.aspx" style="font-family: 'B Nazanin'; color: #AA8547; font-size: 17px; float: right; margin-right: 33px;">
                <asp:Label ID="Label3" runat="server" Text="ثبت نام" /></a>
            <asp:Button ID="Btn_Login" runat="server" Text="ورود" Font-Bold="true" Width="100px" Height="33px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#333333" BorderColor="#AA8547" ForeColor="#AA8547" />
        </div>

    </div>
</asp:Content>

