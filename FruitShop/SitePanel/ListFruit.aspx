<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="ListFruit.aspx.cs" Inherits="FruitShop.SitePanel.Page_ListMiveh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- page Style --%>
    <link href="../Theme/css/PageStyle/ListFruitStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12" style="padding: 20px;">
                <strong>لیست محصولات میوه :
                </strong>
            </div>
        </div>
        <div class="row">
            <asp:Repeater runat="server"
                ID="Repeater_ListFruit"
                OnItemDataBound="Repeater_ListFruit_ItemDataBound">
                <ItemTemplate>
                    <div class="col-md-3">
                        <div class="product-item">
                            <asp:HiddenField runat="server"
                                ID="HiddenField_MahsolatID"
                                Value='<% Eval("MahsolatID") %>' />

                            <asp:HiddenField runat="server"
                                ID="HiddenField_IsDiscount"
                                Value='<%# Eval("IsDiscount") %>' />

                            <a href="#" class="thumbnail">
                                <img src='<%# DataLayer.Models.Mahsolat.GetImagePath(Eval("ImageUrl"))%>' alt="Image" class="slider-image">
                            </a>
                            <div class="product-content">
                                <div class="name">
                                    <%# Eval("Name") %>
                                </div>

                                <div class="new-price">
                                    <%# Eval("NewPrice") %>
                                                        ریال
                                </div>

                                <div runat="server"
                                    id="Div_RPSliderItem_OldPrice"
                                    class="old-price">
                                    <%# Eval("OldPrice") %>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
