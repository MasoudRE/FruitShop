<%@ Page Title="Product" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowProduct.aspx.cs" Inherits="ShowProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="/Slider/sliderengine/jquery.js"></script>
    <script src="/Slider/sliderengine/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="/Slider/sliderengine/amazingslider-1.css" />
    <script src="/Slider/sliderengine/initslider-1.js"></script>

    <%--slider--%>
    <script src="../Theme/Slider/Slider.js"></script>
    <link href="../Theme/Slider/Slider.css" rel="stylesheet" />

    <%--page style--%>
    <link href="../Theme/css/PageStyle/ProductStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                    href="#">میوه
                </a>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-12">
                <a
                    href="#">سبزیجات و صیفیجات
                </a>
            </div>

            <div class="col-lg-4 col-md-4 col-sm-12">
                <a
                    href="#">دیگر محصولات
                </a>
            </div>
        </div>

        <%--slider list--%>
        <div class="slider">
            <div class="slider-group">
                <div class="slider-header">
                    <strong>میوه
                    </strong>
                    <a class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored pull-left"
                        href="#">
                        <i class="material-icons">add</i>
                        لیست کامل
                    </a>
                </div>
                <div class="slider-body">
                    <div id="Carousel" class="carousel slide">

                        <ol class="carousel-indicators">
                            <li data-target="#Carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#Carousel" data-slide-to="1"></li>
                            <li data-target="#Carousel" data-slide-to="2"></li>
                        </ol>

                        <!-- Carousel items -->
                        <div class="carousel-inner">

                            <div class="item active">
                                <div class="row">
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                            <div class="item">
                                <div class="row">
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                            <div class="item">
                                <div class="row">
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                        </div>
                        <!--.carousel-inner-->
                        <a data-slide="prev" href="#Carousel" class="left carousel-control">
                            <span class="glyphicon glyphicon-menu-left carousel-icon" aria-hidden="true"></span>
                        </a>
                        <a data-slide="next" href="#Carousel" class="right carousel-control">
                            <span class="glyphicon glyphicon-menu-right carousel-icon" aria-hidden="true"></span>
                        </a>
                    </div>
                    <!--.Carousel-->
                </div>
            </div>
        </div>




        <div class="slider">
            <div class="slider-group">
                <div class="slider-header">
                    <strong>فرنگی‌جات و سبزیجات 
                    </strong>
                    <a class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored pull-left"
                        href="#">
                        <i class="material-icons">add</i>
                        لیست کامل
                    </a>
                </div>
                <div class="slider-body">
                    <div id="Carousel" class="carousel slide">

                        <ol class="carousel-indicators">
                            <li data-target="#Carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#Carousel" data-slide-to="1"></li>
                            <li data-target="#Carousel" data-slide-to="2"></li>
                        </ol>

                        <!-- Carousel items -->
                        <div class="carousel-inner">

                            <div class="item active">
                                <div class="row">
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                            <div class="item">
                                <div class="row">
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                            <div class="item">
                                <div class="row">
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                        </div>
                        <!--.carousel-inner-->
                        <a data-slide="prev" href="#Carousel" class="left carousel-control">
                            <span class="glyphicon glyphicon-menu-left carousel-icon" aria-hidden="true"></span>
                        </a>
                        <a data-slide="next" href="#Carousel" class="right carousel-control">
                            <span class="glyphicon glyphicon-menu-right carousel-icon" aria-hidden="true"></span>
                        </a>
                    </div>
                    <!--.Carousel-->
                </div>
            </div>
        </div>






        <div class="slider">
            <div class="slider-group">
                <div class="slider-header">
                    <strong>سایر محصولات
                    </strong>
                    <a class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored pull-left"
                        href="#">
                        <i class="material-icons">add</i>
                        لیست کامل
                    </a>
                </div>
                <div class="slider-body">
                    <div id="Carousel" class="carousel slide">

                        <ol class="carousel-indicators">
                            <li data-target="#Carousel" data-slide-to="0" class="active"></li>
                            <li data-target="#Carousel" data-slide-to="1"></li>
                            <li data-target="#Carousel" data-slide-to="2"></li>
                        </ol>

                        <!-- Carousel items -->
                        <div class="carousel-inner">

                            <div class="item active">
                                <div class="row">
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                            <div class="item">
                                <div class="row">
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                            <div class="item">
                                <div class="row">
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                    <div class="col-md-3">
                                        <a href="#" class="thumbnail">
                                            <img src="http://placehold.it/250x250" alt="Image" style="max-width: 100%;"></a>
                                    </div>
                                </div>
                                <!--.row-->
                            </div>
                            <!--.item-->

                        </div>
                        <!--.carousel-inner-->
                        <a data-slide="prev" href="#Carousel" class="left carousel-control">
                            <span class="glyphicon glyphicon-menu-left carousel-icon" aria-hidden="true"></span>
                        </a>
                        <a data-slide="next" href="#Carousel" class="right carousel-control">
                            <span class="glyphicon glyphicon-menu-right carousel-icon" aria-hidden="true"></span>
                        </a>
                    </div>
                    <!--.Carousel-->
                </div>
            </div>
        </div>
</asp:Content>
