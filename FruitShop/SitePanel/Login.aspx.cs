using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer.Utils;
using DataLayer.Models;

namespace FruitShop.SitePanel
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Login_Click(object sender, EventArgs e)
        {
            try
            {
                var username = txt_Username.Text.Trim();
                var pass = txt_Password.Text.Trim();

                if (username.IsNullOrEmpty())
                {
                    lbl_ErrorStatus.Text = "نام کاربری خالی است";
                    lbl_SuccessStatus.Text = "";
                    return;
                }

                if (pass.IsNullOrEmpty())
                {
                    lbl_ErrorStatus.Text = "کلمه عبور خالی است";
                    lbl_SuccessStatus.Text = "";
                    return;
                }


                int userID = 0;
                if (Users.Login(username, pass, out userID))
                {
                    lbl_SuccessStatus.Text = "شما با موفقیت وارد شدید";
                    lbl_ErrorStatus.Text = "";

                    Session["LOGIN"] = userID;
                    Response.Redirect("/SitePanel/Profile.aspx");
                }
                else
                {
                    lbl_ErrorStatus.Text = "نام کاربری یا کلمه عبور اشتباه است";
                    lbl_SuccessStatus.Text = "";
                }
            }
            catch (Exception ee)
            {
                lbl_ErrorStatus.Text = "خطای سیستمی : " + ee.Message;
                    lbl_SuccessStatus.Text = "";
            }
        }
    }
}