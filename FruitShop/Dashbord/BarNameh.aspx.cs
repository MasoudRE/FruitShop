using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer.Models;

namespace FruitShop.Dashbord
{
    public partial class Page_BarNameh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BarNameh.Show(GridView_listAshkhas);

            if (!IsPostBack)
            {
                Ashkhas.Show(DropDownList_AshkhsID_DAdd);
                BarNameh.Show(GridView_listAshkhas);
                Mahsolat.Show(DropDownList_Miveh_DAdd,type_)
            }
        }

        protected void LinkButton_Edit_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            Div_AddBarNameh.Visible = true;
            Div_EditBarNameh.Visible = false;
            Div_ShowBarNameh.Visible = false;
        }
    }
}