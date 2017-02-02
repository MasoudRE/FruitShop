<%@ Page Title="محصول" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="Div_ShowPruduct" style="height: 900px;">
        <ul data-collapse="collapse" class="quick">
            <li>
                <a href="Miveh.aspx">
                    <img alt="" src="Panel Management/image/statistics.png" />
                    <span>افزودن میوه</span>
                </a>
            </li>
            <li>
                <a href="SeyfiJat.aspx">
                    <img alt="" src="Panel Management/image/order-149.png" />
                    <span>افزودن صیفی جات</span>
                </a>
            </li>
        </ul>
        <h2 style="font-family: 'B Nazanin'; text-align: center; font-size: 22px; color: #0c0939;">نمایش محصولات</h2>

        <div runat="server" visible="true" id="Div_ProductShow" style="width: 1105px; margin-right: 18px; height: 350px; margin-top: 5px; background-color: cadetblue;">
        </div>
    </div>
</asp:Content>
