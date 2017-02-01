<%@ Page Title="Product" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowProduct.aspx.cs" Inherits="ShowProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="Slider/sliderengine/jquery.js"></script>
    <script src="Slider/sliderengine/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="Slider/sliderengine/amazingslider-1.css"/>
    <script src="Slider/sliderengine/initslider-1.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Start slider -->
    <div id="amazingslider-wrapper-1" style="display: block; position: relative; max-width: 1000px; margin: 22px auto 0px;">

        <div id="amazingslider-1" style="display: block; position: relative; margin: 0 auto;">
            <ul class="amazingslider-slides" style="display: none;">
                <li>
                    <img src="Slider/images/Slid4.jpg" alt="" />
                </li>
                <li>
                    <img src="Slider/images/Slid1.jpg" />
                </li>
                <li>
                    <img src="Slider/images/Slid2.jpg" />
                </li>
                <li>
                    <img src="Slider/images/Slid3.jpg" />
                </li>
                <li>
                    <img src="Slider/images/Slid5.jpg" />
                </li>
                <li>
                    <img src="Slider/images/Slid6.jpg" />
                </li>
                <li>
                    <img src="Slider/images/Slid7.jpg" />
                </li>
            </ul>
        </div>

    </div>
    <!-- End Slider -->

    <div style="background-color: white; width: 997px; margin-left: 5px; margin-top: 25px; height: 50px; border: 1px solid white; border-radius: 5px;">
        <div style="font-family: 'B Nazanin'; font-size: large;">
            <span style="margin-left:180px;">
                <asp:Label ID="Label1" runat="server" Text="میوه" Font-Bold="true" /></span>
            <span style="margin-left:180px;">
                <asp:Label ID="Label2" runat="server" Text="سبزی جات" Font-Bold="true" /></span>
            <span style="margin-left:180px;">
                <asp:Label ID="Label3" runat="server" Text="فرنگی جات" Font-Bold="true" /></span>
            <span style="margin-left:50px;">
                <asp:Label ID="Label4" runat="server" Text="دیگر محصولات" Font-Bold="true" /></span>
        </div>
    </div>

    <div style="background-color: white; width: 997px; margin-left: 6px; margin-top: 10px; height: 1605px;">
        <div style="margin-top: 5px;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Panel Management/image/3.png" Width="997px" Height="35px" />
        </div>

        <div style="margin-top: 500px;">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Panel Management/image/3.png" Width="997px" Height="35px" />
        </div>
    </div>
</asp:Content>

