<%@ Page Title="" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeBehind="SeyfiJat.aspx.cs" Inherits="FruitShop.Dashbord.Page_SeyfiJat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 900px;">
        <ul data-collapse="collapse" class="quick">
            <li>
                <a runat="server"
                    onserverclick="Unnamed_ServerClick">
                    <img alt="" src="/Panel Management/image/order-149.png" />
                    <span>صیفی جات</span>
                </a>
            </li>
        </ul>
        <h2 style="font-family: 'B Nazanin'; text-align: center; font-size: 30px; color: #0c0939;">ثبت میوه</h2>

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

        <%--Div AddSeyfiJat--%>
        <div runat="server" visible="false" id="Div_AddSeyfiJat" style="border: 1px solid #2c2b3d; border-radius: 10px; width: 1000px; height: 400px; margin-top: 50px; margin-right: 70px;">
            <div style="margin-top: -45px; text-align: center;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Panel Management/image/Miveh.png" Width="80px" Height="80px" />
            </div>

            <div style="margin-top: 20px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 173px;">
                    <asp:Label ID="Label5" runat="server" Text="کد میوه :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox1" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 173px;">
                    <asp:Label ID="Label2" runat="server" Text="نام میوه :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox2" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 79px;">
                    <asp:Label ID="Label6" runat="server" Text="قیمت پیشنهادی محصول :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox3" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label7" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 148px;">
                    <asp:Label ID="lb_Family" runat="server" Text="قیمت فروش :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Family" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 189px;">
                    <asp:Label ID="lb_Mobile" runat="server" Text="واحد :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Mobile" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="lb_User" runat="server" Text="تصویر :" Font-Bold="true" /></span>
            </div>
            <div style="margin-top: -22px; margin-right: 253px;">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" />
            </div>

            <div style="margin-right: 20px; margin-top: 30px;">
                <asp:Button ID="btn_SaveUser" runat="server" Text="ثبت میوه" ValidationGroup="Group_Login" Font-Bold="true" Width="80px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

            <div style="margin-right: 105px; margin-top: -30px;">
                <asp:Button ID="Repeat" runat="server" Text="دوباره" ValidationGroup="Group_Login" Font-Bold="true" Width="45px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>
        </div>
            
        <%--Div EditSeyfiJat--%>
        <div runat="server" visible="false" id="Div_EditSeyfiJat" style="border: 1px solid #2c2b3d; border-radius: 10px; width: 1000px; height: 400px; margin-top: 50px; margin-right: 70px;">
            <div style="margin-top: -45px; text-align: center;">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Panel Management/image/Miveh.png" Width="80px" Height="80px" />
            </div>

            <div style="margin-top: 20px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 173px;">
                    <asp:Label ID="Label3" runat="server" Text="کد میوه :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox4" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 173px;">
                    <asp:Label ID="Label8" runat="server" Text="نام میوه :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox5" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 79px;">
                    <asp:Label ID="Label9" runat="server" Text="قیمت پیشنهادی محصول :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox6" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label10" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 148px;">
                    <asp:Label ID="Label11" runat="server" Text="قیمت فروش :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox7" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 189px;">
                    <asp:Label ID="Label12" runat="server" Text="واحد :" Font-Bold="true" /></span>
                <asp:TextBox ID="TextBox8" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="Label13" runat="server" Text="تصویر :" Font-Bold="true" /></span>
            </div>
            <div style="margin-top: -22px; margin-right: 253px;">
                <asp:FileUpload ID="FileUpload2" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" />
            </div>

            <div style="margin-right: 20px; margin-top: 30px;">
                <asp:Button ID="Button1" runat="server" Text="ثبت میوه" ValidationGroup="Group_Login" Font-Bold="true" Width="80px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

            <div style="margin-right: 105px; margin-top: -30px;">
                <asp:Button ID="Button2" runat="server" Text="دوباره" ValidationGroup="Group_Login" Font-Bold="true" Width="45px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" />
            </div>

        </div>
    </div>
</asp:Content>
