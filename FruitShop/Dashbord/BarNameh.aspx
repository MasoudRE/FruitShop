<%@ Page Title="بارنامه" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeBehind="BarNameh.aspx.cs" Inherits="FruitShop.Dashbord.Page_BarNameh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="Div_BarNameh" style="height: 900px;">

        <ul data-collapse="collapse" class="quick">
            <li>
                <a runat="server"
                    onserverclick="Unnamed_ServerClick">
                    <img alt="" src="/Panel Management/image/statistics.png">
                    <span>افزودن بارنامه</span>
                </a>
            </li>
            <li>
                <a href="/Sabt_Pardakhti.aspx">
                    <img alt="" src="/Panel Management/image/order-149.png">
                    <span>پرداختی بارنامه</span>
                </a>
            </li>

        </ul>

        <h2 style="width: 1142px; height: 25px; float: left;"></h2>


        <div runat="server" visible="true" id="Div_ShowBarNameh" style="width: 1105px; margin-right: 18px; margin-top: 90px; background-color: cadetblue;">

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
                            <asp:BoundField DataField="AshkhasID" HeaderText="کد صاحب بار" />
                            <asp:BoundField DataField="CodeMeli" HeaderText="کد ملی" />
                            <asp:BoundField DataField="Name" HeaderText="نام" />
                            <asp:BoundField DataField="Family" HeaderText="نام خانوادگی" />
                            <asp:BoundField DataField="Tel" HeaderText="تلفن ثابت" />
                            <asp:BoundField DataField="Mobile" HeaderText="تلفن همراه" />
                            <asp:BoundField DataField="Address" HeaderText="آدرس" />
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

        <%-- Add BarNameh --%>
        <div runat="server" visible="false" id="Div_AddBarNameh" style="border: 1px solid #2c2b3d; border-radius: 10px; width: 1000px; height: 600px; margin-top: 100px; margin-right: 70px;">
            <div style="margin-top: -30px; text-align: center;">
                <asp:Image ID="Image1" runat="server" ImageUrl="/Panel Management/image/Bar.jpg" Width="80px" Height="80px" />
            </div>

            
            <div style="margin-top: 20px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 145px;">
                    <asp:Label ID="Label5" runat="server" Text="شماره بارنامه :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_BarNamehID_DAdd" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 186px;">
                    <asp:Label ID="lb_Time" runat="server" Text="تاریخ :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Time_DAdd" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px"></asp:TextBox>
            </div>
             <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                تاریخ را شمسی وارد نمایید
                    </asp:Label></span>
            </div>


            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="Label4" runat="server" Text="صاحب بار :" Font-Bold="true" /></span>
                <asp:DropDownList ID="DropDownList_AshkhsID_DAdd" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 192px;">
                    <asp:Label ID="Label6" runat="server" Text="میوه :" Font-Bold="true" /></span>
                <asp:DropDownList ID="DropDownList_Miveh_DAdd" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 151px;">
                    <asp:Label ID="lb_Name" runat="server" Text="وزن ناخالص :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_VaznNaKhales_DAdd" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 187px;">
                    <asp:Label ID="lb_Family" runat="server" Text="تعداد :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Count_DAdd" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 159px;">
                    <asp:Label ID="lb_Mobile" runat="server" Text="وزن خالص :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_VaznKhales_DAdd" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>


            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 185px;">
                    <asp:Label ID="lb_Pass" runat="server" Text="قیمت :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Price_DAdd" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 188px;">
                    <asp:Label ID="lb_PassRepeat" runat="server" Text="کرایه :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Kerayeh_DAdd" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login"></asp:TextBox>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 158px;">
                    <asp:Label ID="Label2" runat="server" Text="جمع خرید :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_JamKharid_DAdd" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="lb_User" runat="server" Text="توضیحات :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Tozihat_DAdd" runat="server" Width="310px" Height="50px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>



            <div style="margin-right: 20px; margin-top: 30px;">
                <asp:Button ID="btn_Add_BarNameh" runat="server" Text="ثبت بارنامه" ValidationGroup="Group_Login" Font-Bold="true" Width="80px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

            <div style="margin-right: 105px; margin-top: -30px;">
                <asp:Button ID="Repeat_DAdd" runat="server" Text="دوباره" ValidationGroup="Group_Login" Font-Bold="true" Width="45px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

            <div style="margin-right: 160px; margin-top: -30px;">
                <asp:Button ID="Exit_DAdd" runat="server" Text="انصراف" ValidationGroup="Group_Login" Font-Bold="true" Width="55px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />

            </div>

        </div>

        <%-- Edit BarNameh --%>
        <div runat="server" visible="false" id="Div_EditBarNameh" style="border: 1px solid #2c2b3d; border-radius: 10px; width: 1000px; height: 600px; margin-top: 100px; margin-right: 70px;">
            <div style="margin-top: -30px; text-align: center;">
                <asp:Image ID="Image2" runat="server" ImageUrl="/Panel Management/image/Bar.jpg" Width="80px" Height="80px" />
            </div>

            
            <div style="margin-top: 20px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 145px;">
                    <asp:Label ID="Label7" runat="server" Text="شماره بارنامه :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_BarNamehID_DEdit" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label8" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 186px;">
                    <asp:Label ID="Label9" runat="server" Text="تاریخ :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Time_DEdit" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px"></asp:TextBox>
            </div>
             <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label10" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                تاریخ را شمسی وارد نمایید
                    </asp:Label></span>
            </div>


            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="Label11" runat="server" Text="صاحب بار :" Font-Bold="true" /></span>
                <asp:DropDownList ID="DropDownList_AshkhsID_DEdit" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 192px;">
                    <asp:Label ID="Label12" runat="server" Text="میوه :" Font-Bold="true" /></span>
                <asp:DropDownList ID="DropDownList_Miveh_DEdit" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 151px;">
                    <asp:Label ID="Label13" runat="server" Text="وزن ناخالص :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_VaznNaKhales_DEdit" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 187px;">
                    <asp:Label ID="Label14" runat="server" Text="تعداد :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Count_DEdit" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 159px;">
                    <asp:Label ID="Label15" runat="server" Text="وزن خالص :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_VaznKhales_DEdit" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>


            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 185px;">
                    <asp:Label ID="Label16" runat="server" Text="قیمت :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Price_DEdit" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 188px;">
                    <asp:Label ID="Label17" runat="server" Text="کرایه :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Kerayeh_DEdit" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login"></asp:TextBox>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 158px;">
                    <asp:Label ID="Label18" runat="server" Text="جمع خرید :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_JamKharid_DEdit" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="Label19" runat="server" Text="توضیحات :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Tozihat_DEdit" runat="server" Width="310px" Height="50px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>



            <div style="margin-right: 20px; margin-top: 30px;">
                <asp:Button ID="btn_Edit_BarNameh" runat="server" Text="ثبت بارنامه" ValidationGroup="Group_Login" Font-Bold="true" Width="80px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

            <div style="margin-right: 105px; margin-top: -30px;">
                <asp:Button ID="Repeat_DEdit" runat="server" Text="دوباره" ValidationGroup="Group_Login" Font-Bold="true" Width="45px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

            <div style="margin-right: 160px; margin-top: -30px;">
                <asp:Button ID="Exit_DEdit" runat="server" Text="انصراف" ValidationGroup="Group_Login" Font-Bold="true" Width="55px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />

            </div>

        </div>

    </div>
</asp:Content>
