﻿<%@ Page Title="Miveh" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeFile="Miveh.aspx.cs" Inherits="Miveh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <ul data-collapse="collapse" class="quick">
        <li>
            <a href="#">
                <img alt="" src="Panel Management/image/statistics.png"/>
                <span>درج در جدول میوه</span>
            </a>
        </li>
        <li>
            <a href="#">
                <img alt="" src="Panel Management/image/order-149.png"/>
                <span>درج در جدول محصولات</span>
            </a>
        </li>
        <li>
            <a href="#">
                <img alt="" src="Panel Management/image/shipping.png"/>
                <span>ویرایش میوه</span>
            </a>
        </li>
        <li>
            <a href="#">
                <img alt="" src="Panel Management/image/my-account.png"/>
                <span>حذف میوه</span>
            </a>
        </li>
    </ul>

    <h2 style="width: 1142px; height: 25px; float: left;"></h2>

    <div style="margin-top: 20px; float: left;">
        <div style="margin-left: 450px;">
            <span style="margin-left: 40px;">
                <asp:Label ID="lb_Mahsol" runat="server" Text="کد محصول :" /></span>
            <asp:TextBox ID="txt_Mahsol" runat="server" ReadOnly="True" BackColor="#CCCCCC"></asp:TextBox>
        </div>
        <div style="margin-left: 450px; margin-top: 10px;">
            <span style="margin-left: 40px;">
                <asp:Label ID="lb_Miveh" runat="server" Text="کد میوه :" /></span>
            <asp:TextBox ID="txt_Miveh" runat="server"></asp:TextBox>
        </div>
        <div style="margin-left: 450px; margin-top: 10px;">
            <span style="margin-left: 40px;">
                <asp:Label ID="lb_Name" runat="server" Text="نام محصول :" /></span>
            <asp:TextBox ID="txt_Name" runat="server"></asp:TextBox>
        </div>
        <div style="margin-left: 450px; margin-top: 10px;">
            <span style="margin-left: 40px;">
                <asp:Label ID="lb_Time" runat="server" Text="تاریخ فروش محصول :" /></span>
            <asp:TextBox ID="txt_Time" runat="server"></asp:TextBox>
        </div>
        <div style="margin-left: 450px; margin-top: 10px;">
            <span style="margin-left: 40px;">
                <asp:Label ID="lb_Price" runat="server" Text="قیمت محصول :" /></span>
            <asp:TextBox ID="txt_price" runat="server"></asp:TextBox>
        </div>
        <div style="margin-left: 450px; margin-top: 10px;">
            <span style="margin-left: 40px;">
                <asp:Label ID="lb_Pic" runat="server" Text="تصویر محصول :" /></span>
            <asp:FileUpload ID="FU_Miveh" runat="server" Width="200px" Height="30px" />
            <asp:Image ID="Image" runat="server" Width="50px" Height="50px" ImageUrl="~/Mahsolat/Moz1.jpg" />
        </div>
        <asp:Button ID="btn_Up" runat="server" Text="ذخیره محصول" OnClick="btnUploadClick" />

    </div>
    <div style="width: 250px; height: 400px; background-color: cadetblue; margin-right: 10px; margin-top: 60px;">
    </div>

</asp:Content>

