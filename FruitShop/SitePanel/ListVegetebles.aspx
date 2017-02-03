<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="ListVegetebles.aspx.cs" Inherits="FruitShop.SitePanel.Page_ListVegetebles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-fluid">
        <div class="row">
            <div class="col-md-12" style="padding: 20px;">
                <strong>لیست صیفی جات :
                </strong>
            </div>
        </div>
        <div class="row">
            <asp:Repeater runat="server"
                ID="Repeater_ListVegetebles"
                OnItemDataBound="Repeater_ListVegetebles_ItemDataBound">
                <ItemTemplate>
                    <div class="col-md-3 product-item">
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
