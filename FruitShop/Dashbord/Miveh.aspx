<%@ Page Title="میوه" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeBehind="Miveh.aspx.cs" Inherits="FruitShop.Dashbord.Page_Miveh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%--page style--%>
    <link href="../Theme/css/PageStyle/MiheStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 900px;">
        <ul data-collapse="collapse" class="quick">
            <li>
                <a href="Product.aspx">
                    <img alt="" src="/Panel Management/image/statistics.png" />
                    <span>محصولات</span>
                </a>
            </li>
            <li>
                <a href="SeyfiJat.aspx">
                    <img alt="" src="/Panel Management/image/order-149.png" />
                    <span>صیفی جات</span>
                </a>
            </li>
        </ul>
        <h2 style="font-family: 'B Nazanin'; text-align: center; font-size: 30px; color: #0c0939;">نمایش میوه</h2>


        <div runat="server" visible="true" id="Div_MivehShow" style="width: 1105px; margin-right: 18px; margin-top: 5px; background-color: cadetblue;">

            <div runat="server" visible="true" id="div_listMiveh">
                <div class="mdl-cell mdl-cell--12-col" style="overflow-x: auto;">
                    <%--GridView List --%>
                    <asp:GridView ID="GridView_listMiveh"
                        OnRowDataBound="GridView_listMiveh_RowDataBound"
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

                                    <div runat="server" id="div_Oldprice"
                                        class="lable-oldPrice">
                                        <label>
                                            قیمت :
                                        </label>
                                        <asp:Label Text='<%# Eval("OldPrice") %>' runat="server" />
                                        <asp:HiddenField Value='<%# Eval("IsDiscount") %>'
                                            ID="hf_IsDiscount"
                                            runat="server" />
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
                                        CssClass="mdl-button mdl-js-button mdl-button--icon mdl-button--colored"
                                        OnClick="LinkButton_Edit_Click">
                                 <i class="material-icons">edit</i>
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>

        </div>

    </div>

</asp:Content>
