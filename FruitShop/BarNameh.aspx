<%@ Page Title="بارنامه" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeFile="BarNameh.aspx.cs" Inherits="BarNameh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

       
                <ul data-collapse="collapse" class="quick">
                    <li>
                        <a href="#">
                            <img alt="" src="Panel Management/image/statistics.png">
                            <span>وضعیت کلی</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img alt="" src="Panel Management/image/order-149.png">
                            <span>لیست فعالیت ها</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img alt="" src="Panel Management/image/shipping.png">
                            <span>مرسوله ها</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img alt="" src="Panel Management/image/my-account.png">
                            <span>مدیریت حساب</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img alt="" src="Panel Management/image/full-time.png">
                            <span>تنظیمات زمان</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img alt="" src="Panel Management/image/date.png">
                            <span>رخداد ها</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img alt="" src="Panel Management/image/lock.png">
                            <span>تنظیمات امنیتی</span>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <img alt="" src="Panel Management/image/refresh.png">
                            <span>خالی کردن کش</span>
                        </a>
                    </li>
                </ul>

                <h2 style="width: 1142px; height: 25px; float: left;"></h2>

    <div style="margin-right: 15px;">
        <h3 style="font-size: 16px;">بارنامه ها</h3>
        <div style="margin-top: 15px;">
            <span style="margin-left: 50px;">
                <asp:Label ID="lb_bar" runat="server" Text="شماره بار نامه :"></asp:Label></span>
            <asp:TextBox ID="txt_bar" runat="server" ReadOnly="True" BackColor="#CCCCCC"></asp:TextBox>
        </div>
        <div style="margin-top: 15px;">
            <span style="margin-left: 50px;">
                <asp:Label ID="lb_Time" runat="server" Text="تاریخ :"></asp:Label></span>
            <asp:TextBox ID="TextBox1" runat="server"  TextMode="DateTimeLocal"></asp:TextBox>
        </div>
        <div style="margin-right: 380px; margin-top: -20px;">
            <span style="margin-left: 50px;">
                <asp:Label ID="Label2" runat="server" Text="صاحب بار :"></asp:Label></span>
            <asp:TextBox ID="txt_Code" runat="server"></asp:TextBox>
            <asp:TextBox ID="txt_Name" runat="server" ReadOnly="True" BackColor="White"></asp:TextBox>
        </div>
        <div style="margin-right: 880px; margin-top: -20px;">
            <span style="margin-left: 50px;">
                <asp:Label ID="Label3" runat="server" Text="نوع بار :"></asp:Label></span>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="100px"></asp:DropDownList>
        </div>
        <div style="margin-top: 15px;">
            <span style="margin-left: 50px;">
                <asp:Label ID="Label4" runat="server" Text="میوه :"></asp:Label></span>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="130px"></asp:DropDownList>
        </div>
        <div style="margin-top: -20px; margin-right: 220px;">
            <span style="margin-left: 50px;">
                <asp:Label ID="Label5" runat="server" Text="وزن ناخالص :"></asp:Label></span>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </div>
        <div style="margin-top: -20px; margin-right: 550px;">
            <span style="margin-left: 50px;">
                <asp:Label ID="Label6" runat="server" Text="تعداد :"></asp:Label></span>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </div>
        <div style="margin-top: -20px; margin-right: 830px;">
            <span style="margin-left: 50px;">
                <asp:Label ID="Label7" runat="server" Text="وزن خالص :"></asp:Label></span>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </div>
        <div style="margin-top: 15px;">
            <span style="margin-left: 50px;">
                <asp:Label ID="Label1" runat="server" Text="قیمت :"></asp:Label></span>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
        <div style="margin-top: -20px; margin-right: 350px;">
            <span style="margin-left: 50px;">
                <asp:Label ID="Label8" runat="server" Text="کرایه :"></asp:Label></span>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </div>
        <div style="margin-top: -20px; margin-right: 680px;">
            <span style="margin-left: 50px;">
                <asp:Label ID="Label10" runat="server" Text="جمع خرید :"></asp:Label></span>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </div>
        <div style="margin-top: 15px;">
            <span style="margin-left: 50px;">
                <asp:Label ID="Label9" runat="server" Text="توضیحات:"></asp:Label></span>
            <asp:TextBox ID="TextBox9" runat="server" Width="550px"></asp:TextBox>
        </div>
        <span style="margin-top: 20px; margin-right: 850px;">
            <asp:Button ID="Button1" runat="server" Text="ثبت" Font-Size="X-Large" Width="100px" /></span>
        <div style="width: 1100px; float: left; height: 450px; margin-left: 25px; margin-top: 25px; background-color: cadetblue;">
        </div>

    </div>
</asp:Content>

