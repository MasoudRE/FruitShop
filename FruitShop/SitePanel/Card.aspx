﻿<%@ Page Title="" Language="C#" MasterPageFile="SiteMaster.master" AutoEventWireup="true" CodeBehind="Card.aspx.cs" Inherits="FruitShop.SitePanel.Page_Card" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--page style--%>
    <link href="../Theme/css/PageStyle/DetailsFruitStype.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="padding: 20px;">
        <div class="row">
            <div class="col-md-12" style="padding: 20px;">
                <strong>سبد خرید :
                </strong>
            </div>
        </div>

        <div class="row" runat="server" visible="true" id="div_Card">
            <div class="mdl-cell mdl-cell--12-col" style="overflow-x: auto;">
                <%--GridView List --%>
                <asp:GridView ID="GridView_Card"
                    runat="server"
                    CssClass="mdl-data-table mdl-js-data-table mdl-shadow--2dp mdl-cell mdl-cell--12-col"
                    AutoGenerateColumns="false"
                    EmptyDataText="جدول دیتابس خالی می باشد"
                    GridLines="Horizontal"
                    PagerSettings-Mode="NextPreviousFirstLast"
                    PagerSettings-FirstPageImageUrl="~/image/Icon/Arrow/ic_last_page_black_24px.svg"
                    PagerSettings-LastPageImageUrl="~/image/Icon/Arrow/ic_first_page_black_24px.svg"
                    PagerSettings-NextPageImageUrl="~/image/Icon/Arrow/ic_chevron_left_black_24px.svg"
                    PagerSettings-PreviousPageImageUrl="~/image/Icon/Arrow/ic_chevron_right_black_24px.svg">
                    <Columns>
                        <asp:TemplateField HeaderText="ردیف">
                            <ItemTemplate>
                                <asp:Label Text='<%# Container.DataItemIndex+1 %>' runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="کد میوه">
                            <ItemTemplate>
                                <asp:Label Text='<%# Eval("MahsolatID") %>' runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="نام میوه">
                            <ItemTemplate>
                                <asp:Label Text='<%# Eval("Name") %>' runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="قیمت برای شما">
                            <ItemTemplate>
                                <div style="text-align: center;">
                                    <asp:Label Text='<%# Eval("NewPrice") %>' runat="server" />
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="توضیحات">
                            <ItemTemplate>
                                <asp:Label Text='<%# Eval("Description") %>' runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="تصویر">
                            <ItemTemplate>
                                <a href="#" class="thumbnail image-item">
                                    <img src='<%# DataLayer.Models.Mahsolat.GetImagePath(Eval("ImageUrl"))%>' alt="Image" class="slider-image">
                                </a>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton runat="server"
                                    ID="LinkButton_Edit"
                                    CssClass="mdl-button mdl-js-button mdl-button--icon mdl-button--colored">
                                 <i class="material-icons">delete</i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>