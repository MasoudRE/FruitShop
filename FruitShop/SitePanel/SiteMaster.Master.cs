using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FruitShop.SitePanel
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    lbl_cardItemCount.Text = Card.GetCount(Session).ToString();


                    var loginUser = Users.GetLogin(Session);
                    if (loginUser.UserID > 0)
                    {
                        lbl_NameUser.Text = loginUser.Name + " " + loginUser.Family;
                        li_Menu_Profile.Visible = true;
                    }

                }
                catch (Exception)
                {
                }
            }
        }

        protected void btn_LogOut_ServerClick(object sender, EventArgs e)
        {
            try
            {
                Session.Remove("LOGIN");

                Response.Redirect("/SitePanel/Login.aspx");
            }
            catch (Exception)
            {
            }
        }
    }
}