using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FruitShop.Element
{
    public partial class DropDown : System.Web.UI.Page
    {
        public static int userID = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Users.Show(DropDownList_ListUser, User_Type.Customer);
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            var id = DropDownList_ListUser.SelectedValue;
            btn.Text = id;
        }

        protected void btn_Click1(object sender, EventArgs e)
        {
            //DropDownList_ListUser.SelectedValue = "4";
        }
    }
}