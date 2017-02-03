<%@ Page Title="گزارش خرید" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeBehind="Max_Buy.aspx.cs" Inherits="Max_Buy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" id="Div_Varizi" style="height: 900px;">
        <div class="row" style="background-color: #eeeeee; width: 1000px; height: 30px; margin-top: 15px; margin-right:30px;">
            <span style="font-family: 'B Nazanin'; margin-right:350px; font-size: 30px; color: #0c0939;">
                <asp:Label ID="Label1" runat="server" Text="بیشترین خرید میوه" Font-Bold="true"/></span>
        </div>

        <div class="row" runat="server" visible="true" id="Div_VariziUser" style="width: 1105px; margin-right: 28px; height: 500px; margin-top: 90px; background-color: cadetblue;">
        </div>
    </div>
</asp:Content>
