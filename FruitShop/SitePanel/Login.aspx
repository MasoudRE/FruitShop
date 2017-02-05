<%@ Page Title="" Language="C#" MasterPageFile="~/SitePanel/SiteMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FruitShop.SitePanel.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="col-md-6" style="background-color: #232323;">
                <div>
                    <h3 style="font-size: 24px; font-family: 'B Nazanin'; float: right; color: #AA8547; margin-top: 10px;">ورود حساب کاربری</h3>
                </div>
                <div style="height: 5px; margin-top: 50px; background-color: #AA8547;">
                </div>

                <%-- Login --%>
                <div style="margin-top: 10px;">
                    <br />

                    <span style="font-family: 'B Nazanin'; font-size: 16px; color: #ccdec6;">
                        <asp:Label ID="lb_Username" runat="server" Text=" نام کاربری" Font-Bold="true" /></span>
                    <br />
                    <asp:TextBox ID="txt_Username" runat="server" Style="background-color: #333333; border-color: #AA8547;  width: 305px; color: white;" />
                </div>

                <div style="margin-top: 10px;">
                    <span style="font-family: 'B Nazanin'; font-size: 16px; color: #ccdec6;">
                        <asp:Label ID="Label1" runat="server" Text=" کلمه عبور" Font-Bold="true" /></span>
                </div>

                <div style="margin-top: 5px;">
                    <asp:TextBox ID="txt_Password"
                        TextMode="Password"
                         runat="server" Style="background-color: #333333; border-color: #AA8547; width: 305px; color: white;" />
                </div>

                <span style="font-family: 'B Nazanin'; font-size: 16px; color: #AA8547; float: right; margin-top: 15px;">
                    <asp:Label ID="Label2" runat="server" Text="فراموشی کلمه عبور" /></span>

                <div style="margin-top: 50px;">
                    <asp:CheckBox ID="CheckBox_Forget" runat="server" />
                    <label>
                        مرا به خاطر بسپار
                    </label>
                </div>


                <div style="margin-top: 30px; margin-bottom: 30px;">
                    <a href="User.aspx" style="font-family: 'B Nazanin'; color: #AA8547; font-size: 17px;">
                        <asp:Label ID="Label3" runat="server" Text="ثبت نام" /></a>

                    <asp:Button ID="Btn_Login"
                        runat="server"
                        Text="ورود"
                        Font-Bold="true" Width="100px"
                        Height="33px"
                        Font-Size="Medium"
                        BackColor="#333333"
                        BorderColor="#AA8547"
                        ForeColor="#AA8547"
                        OnClick="Btn_Login_Click" />
                </div>


                <br />
                <div style="text-align:center">
                     <asp:Label ID="lbl_ErrorStatus"
                    runat="server"
                    Style="color: red" />

                <asp:Label ID="lbl_SuccessStatus"
                    runat="server"
                    Style="color: green" />
                </div>

                <br />

            </div>

            <div class="col-md-6">
                <asp:Image ID="Image1" runat="server"
                    ImageUrl="~/Panel Management/image/1.jpg" Style="width: 100%;" />
            </div>
</asp:Content>
