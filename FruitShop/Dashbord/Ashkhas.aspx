<%@ Page Title="صاحب بار" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeBehind="Ashkhas.aspx.cs" Inherits="FruitShop.Dashbord.Page_Ashkhas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>

    <div id="Div_Customer" style="height: 900px;">

        <ul data-collapse="collapse" class="quick">
            <li>
                <a href="Insert_Ashkhas.aspx">
                    <img alt="" src="Panel Management/image/statistics.png">
                    <span>افزودن صاحب بار</span>
                </a>
            </li>
            <li>
                <a href="Update_Ashkhas.aspx">
                    <img alt="" src="Panel Management/image/order-149.png">
                    <span>جستجو</span>
                </a>
            </li>
        </ul>


        <h2 style="width: 1125px; height: 25px; float: left;"></h2>

        <asp:Label ID="lb_Status" runat="server" Text=""></asp:Label>

        <div runat="server" visible="true" id="Div_AshkhasShow" style="width: 1105px; margin-right: 18px; margin-top: 90px; background-color: cadetblue;">

            <div runat="server" visible="true" id="div_list">
                <div class="mdl-cell mdl-cell--12-col" style="overflow-x: auto;">
                    <%--GridView List --%>
                    <asp:GridView ID="GridView_listAshkhas"
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
                            <asp:BoundField DataField="CodeMeli" HeaderText="کد ملی" />

                            <asp:BoundField DataField="Name" HeaderText="نام" />

                            <asp:BoundField DataField="Family" HeaderText="نام خانوادگی" />

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
