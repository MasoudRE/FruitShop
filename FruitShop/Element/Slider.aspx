<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Slider.aspx.cs" Inherits="FruitShop.Element.Slider" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <%-- jquery --%>
    <script src="../Theme/js/jquery.min.js"></script>

    <%-- bootstrap --%>
    <link href="/Theme/bootstrap-3.3.5/css/bootstrap-Theme.css" rel="stylesheet" />
    <link href="/Theme/bootstrap-3.3.5/css/bootstrap.css" rel="stylesheet" />
    <link href="/Theme/bootstrap-3.3.5/css/gridview_Style.css" rel="stylesheet" />
    <script src="/Theme/bootstrap-3.3.5/js/bootstrap.js"></script>

    <link href="/Theme/bootstrap-3.3.5/bootstrap-rtl.min.css" rel="stylesheet" />

    <%--material--%>
    <script src="/Theme/MDL/material.js"></script>
    <link href="/Theme/MDL/material.css" rel="stylesheet" />
    <link href="/Theme/MDL/icon.css" rel="stylesheet" />
    <link href="/Theme/MDL/css.css" rel="stylesheet" />

    <%--slider--%>
    <link href="../Theme/Slider/Slider.css" rel="stylesheet" />
    <script src="../Theme/Slider/Slider.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <div class="container">
        <div class="row">
            <div class="span12">
                <div class="well">
                    <div id="myCarousel" class="carousel fdi-Carousel slide carousel-fade">
                     <!-- Carousel items -->
                        <div class="carousel fdi-Carousel slide" id="eventCarousel" data-interval="0">
                            <div class="carousel-inner onebyone-carosel">
                                <div class="item active">
                                    <div class="col-md-3">
                                        <a href="#"><img src="http://placehold.it/250x250" class="img-responsive center-block"></a>
                                        <div class="text-center">1</div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-md-3">
                                        <a href="#"><img src="http://placehold.it/250x250" class="img-responsive center-block"></a>
                                        <div class="text-center">2</div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-md-3">
                                        <a href="#"><img src="http://placehold.it/250x250" class="img-responsive center-block"></a>
                                        <div class="text-center">3</div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-md-3">
                                        <a href="#"><img src="http://placehold.it/250x250" class="img-responsive center-block"></a>
                                        <div class="text-center">4</div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-md-3">
                                        <a href="#"><img src="http://placehold.it/250x250" class="img-responsive center-block"></a>
                                        <div class="text-center">5</div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-md-3">
                                        <a href="#"><img src="http://placehold.it/250x250" class="img-responsive center-block"></a>
                                        <div class="text-center">6</div>
                                    </div>
                                </div>
                            </div>
                            <a class="left carousel-control" href="#eventCarousel" data-slide="next"></a>
                            <a class="right carousel-control" href="#eventCarousel" data-slide="prev"></a>
                        </div>
                        <!--/carousel-inner-->
                    </div><!--/myCarousel-->
                </div><!--/well-->
            </div>
        </div>
    </div>

        </div>
    </form>
</body>
</html>
