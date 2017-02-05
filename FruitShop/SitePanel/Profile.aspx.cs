using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer.Utils;

namespace FruitShop.SitePanel
{
    public partial class Profile : System.Web.UI.Page
    {
        public static int UserID = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            Users LoginUser = new Users();
            if (!Users.IsLogin(Session, out LoginUser))
            {
                Response.Redirect("/SitePanel/Login.aspx");
                return;
            }
            else
            {
                UserID = LoginUser.UserID;

                if (LoginUser.Type == User_Type.Admin)
                {
                    btn_ShowAdminPanel.Visible = true;
                    Image_AdminPanel.Visible = true;
                }
                else
                {
                    btn_ShowAdminPanel.Visible = false;
                    Image_AdminPanel.Visible = false;
                }

                if (!IsPostBack)
                {
                    txt_UserID.Text = LoginUser.UserID.ToString();
                    txt_Name.Text = LoginUser.Name;
                    txt_Family.Text = LoginUser.Family;
                    txt_CellPhone.Text = LoginUser.Mobile;
                    txt_Phone.Text = LoginUser.Phone;
                    txt_Address.Text = LoginUser.Address;
                    txt_Email.Text = LoginUser.Email;
                    txt_CodePosti.Text = LoginUser.CodePosti.ToString();
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePass.aspx");
        }

        protected void btn_InfoUser_Click(object sender, EventArgs e)
        {
            Div_EdiInfoUser.Visible = true;
        }


        protected void btn_ShowAdminPanel_Click(object sender, EventArgs e)
        {
            Response.Redirect("/DefaultMag.aspx");
        }

        protected void btn_SaveInfo_Click(object sender, EventArgs e)
        {
            var user = new Users()
            {
                UserID = UserID,
                Name = txt_Name.Text,
                Family = txt_Family.Text,
                Mobile = txt_CellPhone.Text,
                Phone = txt_Phone.Text,
                Address = txt_Address.Text,
                Email = txt_Email.Text,
                CodePosti = txt_CodePosti.Text.ToInt(),
            };

            if (Users.Update(user))
            {
                lbl_SuccessStatus.Text = "ویرایش با موفقیت انجام شده";
                lbl_ErrorStatus.Text = "";
                Response.Redirect("/SitePanel/Profile.aspx");
            }
            else
            {
                lbl_ErrorStatus.Text = "ایراد در ویرایش";
                lbl_SuccessStatus.Text = "";
            }
        }
    }
}