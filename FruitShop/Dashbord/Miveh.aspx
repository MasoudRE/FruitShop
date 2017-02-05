<%@ Page Title="میوه" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeBehind="Miveh.aspx.cs" Inherits="FruitShop.Dashbord.Page_Miveh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%--page style--%>
    <link href="../Theme/css/PageStyle/MiheStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 900px;">
        <ul data-collapse="collapse" class="quick">
            <li>
                <a runat="server"
                    onserverclick="Unnamed_ServerClick">
                    <img alt="" src="/Panel Management/image/statistics.png" />
                    <span>افزودن میوه</span>
                </a>
            </li>
        </ul>
        <h2 style="font-family: 'B Nazanin'; text-align: center; font-size: 30px; color: #0c0939;">نمایش میوه</h2>


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

        <%--Div AddMiveh--%>
        <div runat="server" visible="false" id="Div_AddMiveh" style="border: 1px solid #2c2b3d; border-radius: 10px; width: 1000px; height: 400px; margin-top: 10px; margin-right: 70px;">
            <div style="margin-top: -45px; text-align: center;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Panel Management/image/Miveh.png" Width="80px" Height="80px" />
            </div>

            <div style="margin-top: 20px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 155px;">
                    <asp:Label ID="lb_MahsolatID" runat="server" Text="کد محصول :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_MahsolatID_DAdd" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 155px;">
                    <asp:Label ID="lb_Name" runat="server" Text="نام محصول :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Name_DAdd" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 79px;">
                    <asp:Label ID="lb_OldPrice" runat="server" Text="قیمت :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_OldPrice_DAdd" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 148px;">
                    <asp:Label ID="lb_NewPrice" runat="server" Text="قیمت برای شما :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_NewPrice_DAdd" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 10px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 177px;">
                    <asp:Label ID="lb_IsDiscount" runat="server" Text="تخفیف :" Font-Bold="true" /></span>
                <asp:RadioButton ID="RB_IsDiscount_True_DAdd" runat="server" />
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 177px;">
                    <label>دارد</label></span>
                <asp:RadioButton ID="RB_IsDiscount_False_DAdd" runat="server" />
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 177px;">
                    <label>ندارد</label></span>
            </div>


            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="lb_Picture" runat="server" Text="تصویر :" Font-Bold="true" /></span>
            </div>
            <div style="margin-top: -22px; margin-right: 253px;">
                <asp:FileUpload ID="FileUpload_Picture_DAdd" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="lb_Description" runat="server" Text="توضیحات :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Description_DAdd" runat="server" Width="310px" Height="75px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-right: 20px; margin-top: 30px;">
                <asp:Button ID="btn_AddMiveh" runat="server" Text="ثبت میوه" ValidationGroup="Group_Login" Font-Bold="true" Width="80px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" OnClick="btn_AddMiveh_Click" />
            </div>

            <div style="margin-right: 105px; margin-top: -30px;">
                <asp:Button ID="btn_Repeat_DAdd" runat="server" Text="دوباره" ValidationGroup="Group_Login" Font-Bold="true" Width="45px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" OnClick="btn_Repeat_DAdd_Click"/>
            </div>

            <div style="margin-right: 160px; margin-top: -30px;">
                <asp:Button ID="Exit_DAdd" runat="server" Text="انصراف" ValidationGroup="Group_Login" Font-Bold="true" Width="55px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" OnClick="Exit_DAdd_Click" />
            </div>
            <div style="text-align: center; margin-top: -30px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976;">
                    <asp:Label ID="lb_Status_DAdd" runat="server" Text="" Visible="false"></asp:Label></span>
            </div>

        </div>

        <%--Div EditMiveh--%>
        <div runat="server" visible="false" id="Div_EditMiveh" style="border: 1px solid #2c2b3d; border-radius: 10px; width: 1000px; height: 400px; margin-top: 10px; margin-right: 70px;">
            <div style="margin-top: -45px; text-align: center;">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Panel Management/image/Miveh.png" Width="80px" Height="80px" />
            </div>

            <div style="margin-top: 20px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 155px;">
                    <asp:Label ID="Label2" runat="server" Text="کد محصول :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_AshkasID_DEdit" runat="server" Width="310px" Height="25px" BackColor="#C9C9C9" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" ReadOnly="True" />
            </div>
            <div style="margin-top: -25px; margin-right: 570px;">
                <span style="font-family: 'B Nazanin'; font-size: 15px;">
                    <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="true" ForeColor="#CC0000">
                جهت نمایش
                    </asp:Label></span>
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 155px;">
                    <asp:Label ID="Label4" runat="server" Text="نام محصول :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Name_DEdit" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 79px;">
                    <asp:Label ID="Label5" runat="server" Text="قیمت پیشنهادی محصول :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_OldPrice_DEdit" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>
            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 148px;">
                    <asp:Label ID="Label6" runat="server" Text="قیمت فروش :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_NewPrice_DEdit" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-top: 10px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 177px;">
                    <asp:Label ID="Label7" runat="server" Text="تخفیف :" Font-Bold="true" /></span>
                <asp:RadioButton ID="RB_IsDiscount_True_DEdit" runat="server" />
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 177px;">
                    <label>دارد</label></span>
                <asp:RadioButton ID="RB_IsDiscount_False_DEdit" runat="server" />
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 177px;">
                    <label>ندارد</label></span>
            </div>


            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="Label8" runat="server" Text="تصویر :" Font-Bold="true" /></span>
            </div>
            <div style="margin-top: -22px; margin-right: 253px;">
                <asp:FileUpload ID="FileUpload_Picture_DEdit" runat="server" Width="310px" Height="25px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" />
            </div>

            <div style="margin-top: 5px; margin-right: 25px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976; margin-left: 163px;">
                    <asp:Label ID="Label9" runat="server" Text="توضیحات :" Font-Bold="true" /></span>
                <asp:TextBox ID="txt_Description_DEdit" runat="server" Width="310px" Height="75px" BackColor="#ECEEF3" BorderColor="#006699" BorderWidth="1px" ValidationGroup="Group_Login" />
            </div>

            <div style="margin-right: 20px; margin-top: 30px;">
                <asp:Button ID="btn_EditMiveh_DEdit" runat="server" Text="ثبت ویرایش" ValidationGroup="Group_Login" Font-Bold="true" Width="80px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" OnClick="btn_EditMiveh_DEdit_Click" />
            </div>

            <div style="margin-right: 105px; margin-top: -30px;">
                <asp:Button ID="btn_Repeat_DEdit" runat="server" Text="دوباره" ValidationGroup="Group_Login" Font-Bold="true" Width="45px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" OnClick="btn_Repeat_DEdit_Click"/>
            </div>

            <div style="margin-right: 160px; margin-top: -30px;">
                <asp:Button ID="btn_Exit_DEdit" runat="server" Text="انصراف" ValidationGroup="Group_Login" Font-Bold="true" Width="55px" Height="30px" Font-Names="B Nazanin" Font-Size="Medium" BackColor="#E1E1E1" BorderColor="#333333" ForeColor="#000066" BorderWidth="1px" OnClick="btn_Exit_DEdit_Click"/>
            </div>

            <div style="text-align: center; margin-top: -30px;">
                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #173976;">
                    <asp:Label ID="lb_Status_DEdit" runat="server" Text="" Visible="false"></asp:Label></span>
            </div>

        </div>

    </div>

</asp:Content>
