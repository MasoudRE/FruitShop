<%@ Page Title="" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeBehind="SeyfiJat.aspx.cs" Inherits="FruitShop.Dashbord.Page_SeyfiJat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 900px;">
        <ul data-collapse="collapse" class="quick">
            <li>
                <a href="Product.aspx">
                    <img alt="" src="Panel Management/image/statistics.png" />
                    <span>محصولات</span>
                </a>
            </li>
            <li>
                <a href="SeyfiJat.aspx">
                    <img alt="" src="Panel Management/image/order-149.png" />
                    <span>صیفی جات</span>
                </a>
            </li>
        </ul>
        <h2 style="font-family: 'B Nazanin'; text-align: center; font-size: 30px; color: #0c0939;">ثبت میوه</h2>

    </div>
</asp:Content>
