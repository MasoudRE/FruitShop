<%@ Page Title="" Language="C#" MasterPageFile="SiteMaster.master" AutoEventWireup="true" CodeBehind="Card.aspx.cs" Inherits="FruitShop.SitePanel.Page_Card" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--page style--%>
    <link href="/Theme/css/PageStyle/MiheStyle.css" rel="stylesheet" />
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
                    OnRowDataBound="GridView_Card_RowDataBound"
                    runat="server"
                    CssClass="mdl-data-table mdl-js-data-table mdl-shadow--2dp mdl-cell mdl-cell--12-col"
                    AutoGenerateColumns="false"
                    EmptyDataText="محصولی به سبد خرید اضافه نشده است"
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
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="نام میوه">
                            <ItemTemplate>
                                <asp:Label Text='<%# Eval("Mahsol.Name") %>' runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="قیمت">
                            <ItemTemplate>
                                <div style="text-align: center;">
                                    <asp:Label
                                        ID="lbl_Price"
                                        Text='<%# Eval("Mahsol.NewPrice") %>' runat="server" />
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="تعداد سفارش">
                            <ItemTemplate>
                                <asp:Label
                                    ID="txt_Count"
                                    Text='<%# Eval("Count") %>'
                                    runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="قیمت کل">
                            <ItemTemplate>
                                <div style="text-align: center;">
                                    <asp:Label ID="lbl_CountTotalPrice"
                                        runat="server" />
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="تصویر">
                            <ItemTemplate>
                                <a href="#" class="thumbnail image-item">
                                    <img src='<%# DataLayer.Models.Mahsolat.GetImagePath(Eval("Mahsol.ImageUrl"))%>' alt="Image" class="slider-image">
                                </a>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton runat="server"
                                    ID="LinkButton_Delete"
                                    OnClick="LinkButton_Delete_Click"
                                    CssClass="mdl-button mdl-js-button mdl-button--icon mdl-button--colored">
                        <i class="material-icons">keyboard_arrow_down</i>
                                </asp:LinkButton>


                                <asp:LinkButton runat="server"
                                    ID="LinkButton_Add"
                                    OnClick="LinkButton_Add_Click"
                                    CssClass="mdl-button mdl-js-button mdl-button--icon mdl-button--colored">
                        <i class="material-icons">keyboard_arrow_up</i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
