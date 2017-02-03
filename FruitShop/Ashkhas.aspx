<%@ Page Title="اشخاص" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeFile="Ashkhas.aspx.cs" Inherits="Ashkhas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="Div_Customer" style="height: 900px;">

        <ul data-collapse="collapse" class="quick">
            <li>
                <a href="Customer.aspx">
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


        <div runat="server" visible="true" id="Div_AshkhasShow" style="width: 1105px; margin-right: 18px; height: 350px; margin-top: 90px; background-color: cadetblue;">

               <div runat="server" visible="true" id="div_list">
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

        <div runat="server" visible="false" id="Div_AddAshkhas" style="border: 1px solid #2c2b3d; border-radius: 10px; width: 1000px; height: 430px; margin-top: 100px; margin-right: 70px;">
            <div style="margin-top: -30px; text-align: center;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Panel Management/image/images.jpg" Width="70px" Height="70px" />
            </div>

            <%-- Add Ashkhas --%>
            <div style="margin-top: 20px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 140px;">
                    <asp:Label ID="Label5" runat="server" Text="کد صاحب بار :" Font-Bold="true" /></span>
                <asp:TextBox ID="AshkhasID" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 197px;">
                    <asp:Label ID="lb_Name" runat="server" Text="نام :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Name" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                لطفاً فارسی بنویسید
                    </asp:Label></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 143px;">
                    <asp:Label ID="lb_Family" runat="server" Text="نام خانوادگی :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Family" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                لطفاً فارسی بنویسید
                    </asp:Label></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 172px;">
                    <asp:Label ID="lb_Mobile" runat="server" Text="کد ملی :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_CodeMeli" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>


            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 158px;">
                    <asp:Label ID="lb_Pass" runat="server" Text="تلفن ثابت :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Tel" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 152px;">
                    <asp:Label ID="lb_PassRepeat" runat="server" Text="تلفن همراه :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Mobile" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login"></asp:TextBox>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 181px;">
                    <asp:Label ID="lb_Email" runat="server" Text="معرف :" Font-Bold="true" /></span>
                <asp:DropDownList ID="txt_Moaref" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 179px;">
                    <asp:Label ID="lb_User" runat="server" Text="آدرس :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Address" runat="server" Width="310px" Height="75px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>



            <div style="margin-right: 20px; margin-top: 30px;">
                <asp:Button ID="btn_SaveUser" runat="server" Text="ثبت عضویت" ValidationGroup="Group_Login" Font-Bold="true" Width="80px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" OnClick="btn_SaveUser_Click" />
            </div>

            <div style="margin-right: 105px; margin-top: -30px;">
                <asp:Button ID="Repeat" runat="server" Text="دوباره" ValidationGroup="Group_Login" Font-Bold="true" Width="45px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

            <asp:Label ID="Label_Status" runat="server" Text="Label"></asp:Label>

        </div>



    </div>
</asp:Content>

