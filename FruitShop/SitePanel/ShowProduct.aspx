<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="ShowProduct.aspx.cs" Inherits="FruitShop.SitePanel.ShowProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="/Slider/sliderengine/jquery.js"></script>
    <script src="/Slider/sliderengine/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="/Slider/sliderengine/amazingslider-1.css" />
    <script src="/Slider/sliderengine/initslider-1.js"></script>



    <%--page style--%>
    <link href="../Theme/css/PageStyle/ProductStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <!-- Start slider -->
        <div class="row" id="amazingslider-wrapper-1" style="display: block; position: relative; margin: 22px auto 0px;">
            <div id="amazingslider-1" style="display: block; position: relative; margin: 0 auto;">
                <ul class="amazingslider-slides" style="display: none;">
                    <li>
                        <img src="/Slider/images/Slid4.jpg" alt="" />
                    </li>
                    <li>
                        <img src="/Slider/images/Slid1.jpg" />
                    </li>
                    <li>
                        <img src="/Slider/images/Slid2.jpg" />
                    </li>
                    <li>
                        <img src="/Slider/images/Slid3.jpg" />
                    </li>
                    <li>
                        <img src="/Slider/images/Slid5.jpg" />
                    </li>
                    <li>
                        <img src="/Slider/images/Slid6.jpg" />
                    </li>
                    <li>
                        <img src="/Slider/images/Slid7.jpg" />
                    </li>
                </ul>
            </div>
        </div>
        <!-- End Slider -->

        <div class="row quick-menu">
            <div class="col-lg-4 col-md-4  col-sm-12">
                <a
                    href="ListFruit.aspx">میوه
                </a>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-12">
                <a
                    href="ListVegetebles.aspx">صیفی جات
                </a>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-12">
                <a
                    href="ListOtherProduct.aspx">دیگر محصولات
                </a>
            </div>
        </div>




        <%-------------------------------------------------
            slider list
            -----------------------------------------------%>


        <%--slider Fruit--%>
        <div class="slider">
            <div class="slider-group">
                <div class="slider-header">
                    <strong>میوه
                    </strong>
                    <a class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored pull-left"
                        style="background: #acbd00;"
                        href="ListFruit.aspx">
                        <i class="material-icons">add</i>
                        لیست کامل
                    </a>
                </div>
                <div class="slider-body">
                    <div id="Carousel_Fruit" class="carousel slide">

                        <ol class="carousel-indicators">
                            <li runat="server"
                                id="liTag_SlideFruit_Item_Navigation_1"
                                visible="false"
                                data-target="#Carousel_Fruit"
                                data-slide-to="0"
                                class="active"></li>

                            <li runat="server"
                                id="liTag_SlideFruit_Item_Navigation_2"
                                visible="false"
                                data-target="#Carousel_Fruit"
                                data-slide-to="1"></li>

                            <li runat="server"
                                id="liTag_SlideFruit_Item_Navigation_3"
                                visible="false"
                                data-target="#Carousel_Fruit"
                                data-slide-to="2"></li>
                        </ol>

                        <!-- Carousel items -->
                        <div class="carousel-inner">

                            <div runat="server"
                                id="Div_SlideFruit_Item_1"
                                visible="false"
                                class="item active">
                                <div class="row">
                                    <asp:Repeater runat="server"
                                        ID="Repeater_SlideFruit_Item_1"
                                        OnItemDataBound="Repeater_SlideFruit_Item_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="col-md-3">
                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_MahsolatID"
                                                    Value='<% Eval("MahsolatID") %>' />

                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_IsDiscount"
                                                    Value='<%# Eval("IsDiscount") %>' />

                                                <a href="/SitePanel/DetailsFruit.aspx?ProductID=<%# Eval("MahsolatID") %>" class="thumbnail">
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
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                            <div runat="server"
                                id="Div_SlideFruit_Item_2"
                                visible="false"
                                class="item">
                                <div class="row">
                                    <asp:Repeater runat="server"
                                        ID="Repeater_SlideFruit_Item_2"
                                        OnItemDataBound="Repeater_SlideFruit_Item_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="col-md-3">
                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_MahsolatID"
                                                    Value='<% Eval("MahsolatID") %>' />

                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_IsDiscount"
                                                    Value='<%# Eval("IsDiscount") %>' />


                                                <a href="/SitePanel/DetailsFruit.aspx?ProductID=<%# Eval("MahsolatID") %>" 
                                                     class="thumbnail">
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
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                            <div runat="server"
                                id="Div_SlideFruit_Item_3"
                                visible="false"
                                class="item">
                                <div class="row">
                                    <asp:Repeater runat="server"
                                        ID="Repeater_SlideFruit_Item_3"
                                        OnItemDataBound="Repeater_SlideFruit_Item_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="col-md-3">
                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_MahsolatID"
                                                    Value='<% Eval("MahsolatID") %>' />

                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_IsDiscount"
                                                    Value='<%# Eval("IsDiscount") %>' />


                                                <a href="/SitePanel/DetailsFruit.aspx?ProductID=<%# Eval("MahsolatID") %>" 
                                                     class="thumbnail">
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
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                        </div>
                        <!--.carousel-inner-->
                        <a data-slide="next" href="#Carousel_Fruit" class="left carousel-control">
                            <span class="glyphicon glyphicon-menu-left carousel-icon" aria-hidden="true"></span>
                        </a>
                        <a data-slide="prev" href="#Carousel_Fruit" class="right carousel-control">
                            <span class="glyphicon glyphicon-menu-right carousel-icon" aria-hidden="true"></span>
                        </a>
                    </div>
                    <!--.Carousel-->
                </div>
            </div>
        </div>


        <%--slider Vegetables--%>
        <div class="slider">
            <div class="slider-group">
                <div class="slider-header">
                    <strong>صیفی جات
                    </strong>
                    <a class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored pull-left"
                        style="background: #acbd00;"
                        href="ListVegetebles.aspx">
                        <i class="material-icons">add</i>
                        ليست کامل
                    </a>
                </div>
                <div class="slider-body">
                    <div id="Carousel_Vegetables" class="carousel slide">

                        <ol class="carousel-indicators">
                            <li runat="server"
                                id="liTag_SlideVegetables_Item_Navigation_1"
                                visible="false"
                                data-target="#Carousel_Vegetables"
                                data-slide-to="0"
                                class="active"></li>

                            <li runat="server"
                                id="liTag_SlideVegetables_Item_Navigation_2"
                                visible="false"
                                data-target="#Carousel_Vegetables"
                                data-slide-to="1"></li>

                            <li runat="server"
                                id="liTag_SlideVegetables_Item_Navigation_3"
                                visible="false"
                                data-target="#Carousel_Vegetables"
                                data-slide-to="2"></li>
                        </ol>

                        <!-- Carousel items -->
                        <div class="carousel-inner">

                            <div runat="server"
                                id="Div_SlideVegetables_Item_1"
                                visible="false"
                                class="item active">
                                <div class="row">
                                    <asp:Repeater runat="server"
                                        ID="Repeater_SlideVegetables_Item_1"
                                        OnItemDataBound="Repeater_SlideVegetables_Item_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="col-md-3">
                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_MahsolatID"
                                                    Value='<% Eval("MahsolatID") %>' />

                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_IsDiscount"
                                                    Value='<%# Eval("IsDiscount") %>' />

                                                <a href="/SitePanel/DetailsFruit.aspx?ProductID=<%# Eval("MahsolatID") %>" 
                                                     class="thumbnail">
                                                    <img src='<%# DataLayer.Models.Mahsolat.GetImagePath(Eval("ImageUrl"))%>' alt="Image" class="slider-image">
                                                </a>
                                                <div class="product-content">
                                                    <div class="name">
                                                        <%# Eval("Name") %>
                                                    </div>

                                                    <div class="new-price">
                                                        <%# Eval("NewPrice") %>
                                                        ريال
                                                    </div>

                                                    <div runat="server"
                                                        id="Div_RPSliderItem_OldPrice"
                                                        class="old-price">
                                                        <%# Eval("OldPrice") %>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                            <div runat="server"
                                id="Div_SlideVegetables_Item_2"
                                visible="false"
                                class="item">
                                <div class="row">
                                    <asp:Repeater runat="server"
                                        ID="Repeater_SlideVegetables_Item_2"
                                        OnItemDataBound="Repeater_SlideVegetables_Item_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="col-md-3">
                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_MahsolatID"
                                                    Value='<% Eval("MahsolatID") %>' />

                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_IsDiscount"
                                                    Value='<%# Eval("IsDiscount") %>' />


                                                <a href="/SitePanel/DetailsFruit.aspx?ProductID=<%# Eval("MahsolatID") %>" 
                                                     class="thumbnail">
                                                    <img src='<%# DataLayer.Models.Mahsolat.GetImagePath(Eval("ImageUrl"))%>' alt="Image" class="slider-image">
                                                </a>
                                                <div class="product-content">
                                                    <div class="name">
                                                        <%# Eval("Name") %>
                                                    </div>

                                                    <div class="new-price">
                                                        <%# Eval("NewPrice") %>
                                                        ريال
                                                    </div>

                                                    <div runat="server"
                                                        id="Div_RPSliderItem_OldPrice"
                                                        class="old-price">
                                                        <%# Eval("OldPrice") %>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                            <div runat="server"
                                id="Div_SlideVegetables_Item_3"
                                visible="false"
                                class="item">
                                <div class="row">
                                    <asp:Repeater runat="server"
                                        ID="Repeater_SlideVegetables_Item_3"
                                        OnItemDataBound="Repeater_SlideVegetables_Item_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="col-md-3">
                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_MahsolatID"
                                                    Value='<% Eval("MahsolatID") %>' />

                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_IsDiscount"
                                                    Value='<%# Eval("IsDiscount") %>' />


                                                <a href="/SitePanel/DetailsFruit.aspx?ProductID=<%# Eval("MahsolatID") %>" 
                                                     class="thumbnail">
                                                    <img src='<%# DataLayer.Models.Mahsolat.GetImagePath(Eval("ImageUrl"))%>' alt="Image" class="slider-image">
                                                </a>
                                                <div class="product-content">
                                                    <div class="name">
                                                        <%# Eval("Name") %>
                                                    </div>

                                                    <div class="new-price">
                                                        <%# Eval("NewPrice") %>
                                                        ريال
                                                    </div>

                                                    <div runat="server"
                                                        id="Div_RPSliderItem_OldPrice"
                                                        class="old-price ">
                                                        <%# Eval("OldPrice") %>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                        </div>
                        <!--.carousel-inner-->
                        <a data-slide="next" href="#Carousel_Vegetables" class="left carousel-control">
                            <span class="glyphicon glyphicon-menu-left carousel-icon" aria-hidden="true"></span>
                        </a>
                        <a data-slide="prev" href="#Carousel_Vegetables" class="right carousel-control">
                            <span class="glyphicon glyphicon-menu-right carousel-icon" aria-hidden="true"></span>
                        </a>
                    </div>
                    <!--.Carousel-->
                </div>
            </div>
        </div>






        <%--دیکر محصولات--%>
        <div class="slider">
            <div class="slider-group">
                <div class="slider-header">
                    <strong>دیگر محصولات
                    </strong>
                    <a class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored pull-left"
                        style="background: #acbd00;"
                        href="ListOtherProduct.aspx">
                        <i class="material-icons">add</i>
                        ليست کامل
                    </a>
                </div>
                <div class="slider-body">
                    <div id="Carousel_OtherProduct" class="carousel slide">

                        <ol class="carousel-indicators">
                            <li runat="server"
                                id="liTag_SlideOtherProduct_Item_Navigation_1"
                                visible="false"
                                data-target="#Carousel_OtherProduct"
                                data-slide-to="0"
                                class="active"></li>

                            <li runat="server"
                                id="liTag_SlideOtherProduct_Item_Navigation_2"
                                visible="false"
                                data-target="#Carousel_OtherProduct"
                                data-slide-to="1"></li>

                            <li runat="server"
                                id="liTag_SlideOtherProduct_Item_Navigation_3"
                                visible="false"
                                data-target="#Carousel_OtherProduct"
                                data-slide-to="2"></li>
                        </ol>

                        <!-- Carousel items -->
                        <div class="carousel-inner">

                            <div runat="server"
                                id="Div_SlideOtherProduct_Item_1"
                                visible="false"
                                class="item active">
                                <div class="row">
                                    <asp:Repeater runat="server"
                                        ID="Repeater_SlideOtherProduct_Item_1"
                                        OnItemDataBound="Repeater_SlideOtherProduct_Item_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="col-md-3">
                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_MahsolatID"
                                                    Value='<% Eval("MahsolatID") %>' />

                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_IsDiscount"
                                                    Value='<%# Eval("IsDiscount") %>' />

                                                <a href="/SitePanel/DetailsFruit.aspx?ProductID=<%# Eval("MahsolatID") %>" 
                                                     class="thumbnail">
                                                    <img src='<%# DataLayer.Models.Mahsolat.GetImagePath(Eval("ImageUrl"))%>' alt="Image" class="slider-image">
                                                </a>
                                                <div class="product-content">
                                                    <div class="name">
                                                        <%# Eval("Name") %>
                                                    </div>

                                                    <div class="new-price">
                                                        <%# Eval("NewPrice") %>
                                                        ريال
                                                    </div>

                                                    <div runat="server"
                                                        id="Div_RPSliderItem_OldPrice"
                                                        class="old-price">
                                                        <%# Eval("OldPrice") %>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                            <div runat="server"
                                id="Div_SlideOtherProduct_Item_2"
                                visible="false"
                                class="item">
                                <div class="row">
                                    <asp:Repeater runat="server"
                                        ID="Repeater_SlideOtherProduct_Item_2"
                                        OnItemDataBound="Repeater_SlideOtherProduct_Item_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="col-md-3">
                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_MahsolatID"
                                                    Value='<% Eval("MahsolatID") %>' />

                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_IsDiscount"
                                                    Value='<%# Eval("IsDiscount") %>' />


                                                <a href="/SitePanel/DetailsFruit.aspx?ProductID=<%# Eval("MahsolatID") %>" 
                                                     class="thumbnail">
                                                    <img src='<%# DataLayer.Models.Mahsolat.GetImagePath(Eval("ImageUrl"))%>' alt="Image" class="slider-image">
                                                </a>
                                                <div class="product-content">
                                                    <div class="name">
                                                        <%# Eval("Name") %>
                                                    </div>

                                                    <div class="new-price">
                                                        <%# Eval("NewPrice") %>
                                                        ريال
                                                    </div>

                                                    <div runat="server"
                                                        id="Div_RPSliderItem_OldPrice"
                                                        class="old-price">
                                                        <%# Eval("OldPrice") %>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                            <div runat="server"
                                id="Div_SlideOtherProduct_Item_3"
                                visible="false"
                                class="item">
                                <div class="row">
                                    <asp:Repeater runat="server"
                                        ID="Repeater_SlideOtherProduct_Item_3"
                                        OnItemDataBound="Repeater_SlideOtherProduct_Item_ItemDataBound">
                                        <ItemTemplate>
                                            <div class="col-md-3">
                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_MahsolatID"
                                                    Value='<% Eval("MahsolatID") %>' />

                                                <asp:HiddenField runat="server"
                                                    ID="HiddenField_IsDiscount"
                                                    Value='<%# Eval("IsDiscount") %>' />


                                                <a href="/SitePanel/DetailsFruit.aspx?ProductID=<%# Eval("MahsolatID") %>" 
                                                     class="thumbnail">
                                                    <img src='<%# DataLayer.Models.Mahsolat.GetImagePath(Eval("ImageUrl"))%>' alt="Image" class="slider-image">
                                                </a>
                                                <div class="product-content">
                                                    <div class="name">
                                                        <%# Eval("Name") %>
                                                    </div>

                                                    <div class="new-price">
                                                        <%# Eval("NewPrice") %>
                                                        ريال
                                                    </div>

                                                    <div runat="server"
                                                        id="Div_RPSliderItem_OldPrice"
                                                        class="old-price">
                                                        <%# Eval("OldPrice") %>
                                                    </div>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                        </div>
                        <!--.carousel-inner-->
                        <a data-slide="next" href="#Carousel_OtherProduct" class="left carousel-control">
                            <span class="glyphicon glyphicon-menu-left carousel-icon" aria-hidden="true"></span>
                        </a>
                        <a data-slide="prev" href="#Carousel_OtherProduct" class="right carousel-control">
                            <span class="glyphicon glyphicon-menu-right carousel-icon" aria-hidden="true"></span>
                        </a>
                    </div>
                    <!--.Carousel-->
                </div>
            </div>
        </div>


    </div>
</asp:Content>
