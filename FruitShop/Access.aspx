<%@ Page Title="اشخاص" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeFile="Access.aspx.cs" Inherits="Access" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <ul data-collapse="collapse" class="quick">
        <li>
            <a href="#">
                <img alt="" src="Panel Management/image/statistics.png">
                <span>مشتری</span>
            </a>
        </li>
        <li>
            <a href="#">
                <img alt="" src="Panel Management/image/order-149.png">
                <span>اشخاص دیگر</span>
            </a>
        </li>

    </ul>

    <h2 style="width: 1125px; height: 25px; float: left;"></h2>
    <h3 style="font-size: 14px; margin-right: 18px;">نمایش اطلاعات اشخاص</h3>

    <div style="width: 1105px; height: 350px; background-color: cadetblue; margin-right: 18px; margin-top: 5px;">
        <div class="mdl-cell mdl-cell--12-col" style="overflow-x: auto;">
            <%--GridView List --%>
            <asp:GridView ID="GridView_listUser"
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
                    <asp:BoundField DataField="Code_Meli" HeaderText="کد ملی" />

                    <asp:BoundField DataField="Name" HeaderText="نام" />

                    <asp:BoundField DataField="Family" HeaderText="نام خانوادگی" />
                </Columns>
            </asp:GridView>
        </div>

    </div>


    <%--    <div style="margin-top:20px; margin-right:23px;">
        <div style="margin-left:450px;">
            <span style="margin-left:40px;"><asp:Label ID="lb_Mahsol" runat="server" Text="کد محصول :"/></span>
            <asp:TextBox ID="txt_Mahsol" runat="server" ReadOnly="True" BackColor="#CCCCCC"></asp:TextBox>
        </div>
        <div style="margin-left:450px; margin-top:10px;">
            <span style="margin-left:40px;"><asp:Label ID="lb_Miveh" runat="server" Text="کد میوه :"/></span>
            <asp:TextBox ID="txt_Miveh" runat="server"></asp:TextBox>
        </div>
        <div style="margin-left:450px; margin-top:10px;">
            <span style="margin-left:40px;"><asp:Label ID="lb_Name" runat="server" Text="نام محصول :"/></span>
            <asp:TextBox ID="txt_Name" runat="server"></asp:TextBox>
        </div>
        <div style="margin-left:450px; margin-top:10px;">
            <span style="margin-left:40px;"><asp:Label ID="lb_Time" runat="server" Text="تاریخ فروش محصول :"/></span>
            <asp:TextBox ID="txt_Time" runat="server"></asp:TextBox>
        </div>
        <div style="margin-left:450px; margin-top:10px;">
            <span style="margin-left:40px;"><asp:Label ID="lb_Price" runat="server" Text="قیمت محصول :"/></span>
            <asp:TextBox ID="txt_price" runat="server"></asp:TextBox>
        </div>
        <div style="margin-left:450px; margin-top:10px;">
            <span style="margin-left:40px;"><asp:Label ID="lb_Pic" runat="server" Text="تصویر محصول :"/></span>
            <asp:FileUpload ID="FU_Miveh" runat="server" Width="200px" Height="30px" />
            <asp:Image ID="Image" runat="server" Width="50px" Height="50px" ImageUrl="~/Mahsolat/Moz1.jpg" />
        </div>
        <asp:Button ID="btn_Up" runat="server" Text="ذخیره محصول" />
        
    </div>--%>
</asp:Content>

