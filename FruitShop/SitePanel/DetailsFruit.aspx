<%@ Page Title="" Language="C#" MasterPageFile="SiteMaster.master" AutoEventWireup="true" CodeBehind="DetailsFruit.aspx.cs" Inherits="FruitShop.SitePanel.DetailsFruit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--page style--%>
    <link href="../Theme/css/PageStyle/DetailsFruitStype.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="padding: 20px;">
        <div class="row" style="text-align: center;">
            <asp:Label
                ID="lbl_Status"
                Text=""
                style="color:red;"
                Visible="false"
                runat="server" />
        </div>

        <div class="row">
            <div class="col-md-3">
                <a href="#" class="thumbnail">
                    <img runat="server"
                        id="ImageUrl"
                        onerror="this.src='/Image/Product/250x250.png'"
                        src="/Image/Product/250x250.png"
                        alt="Image"
                        class="slider-image">
                </a>
            </div>

            <div class="col-md-9">
                <div class="form-group">
                    <label>
                        نام محصول :
                    </label>
                    <asp:Label
                        ID="lbl_Name"
                        Text="--" runat="server" />
                </div>

                <div class="form-group">
                    <label>
                        توضیحات محصول :
                    </label>
                    <asp:Label
                        ID="lbl_Description"
                        Text="--" runat="server" />
                </div>

                <div class="form-group">
                    <label>
                        دسته محصول :
                    </label>
                    <asp:Label
                        ID="lbl_type"
                        Text="--" runat="server" />
                </div>

                <div runat="server"
                    id="div_oldPrice"
                    class="form-group old-price">
                    <label>
                        قیمت :
                    </label>
                    <asp:Label
                        ID="lbl_OldPrice"
                        Text="" runat="server" />
                </div>

                <div class="form-group">
                    <label>
                        قیمت برای شما :
                    </label>
                    <asp:Label
                        ID="lbl_NewPrice"
                        Text="-"
                        CssClass="new-price"
                        runat="server" />
                    <label
                        class="new-price">
                        ریال
                    </label>
                </div>


                <div class="form-group">
                    <a runat="server"
                        id="btn_AddCard"
                        onserverclick="btn_AddCard_ServerClick"
                        class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored"
                        style="background: #4caf50;"
                        href="#">
                        <i class="material-icons">add_shopping_cart</i>
                        افزودن به سبد خرید
                    </a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
