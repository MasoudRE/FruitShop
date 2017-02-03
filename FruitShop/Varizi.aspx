<%@ Page Title="واریزی" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeFile="Varizi.aspx.cs" Inherits="Varizi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="Div_Varizi" style="height: 900px;">
        <ul data-collapse="collapse" class="quick">
            <li>
                <a href="Sab_Par.aspx">
                    <img alt="" src="Panel Management/image/statistics.png">
                    <span>مدیر</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <img alt="" src="Panel Management/image/order-149.png">
                    <span>مشتری</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <img alt="" src="Panel Management/image/shipping.png">
                    <span>پرسنل</span>
                </a>
            </li>
        </ul>

        <h2 style="width: 1125px; height: 25px; float: left;"></h2>

        <div runat="server" visible="true" id="Div_VariziUser" style="width: 1105px; margin-right: 18px; height: 350px; margin-top: 100px; background-color: cadetblue;">
        </div>

    </div>
</asp:Content>

