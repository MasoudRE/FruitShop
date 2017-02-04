using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace FruitShop.Dashbord
{
    public partial class Page_Miveh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Mahsolat.Show(GridView_listMiveh, Mahsolat_Type.Miveh);
            }
        }

        protected void GridView_listMiveh_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    var div_Oldprice = e.Row.FindControl("div_Oldprice") as HtmlGenericControl;
                    var hf_IsDiscount = e.Row.FindControl("hf_IsDiscount") as HiddenField;

                    if (hf_IsDiscount.Value.Equals("False"))
                    {
                        div_Oldprice.Visible = false;
                    }
                    else
                    {
                        div_Oldprice.Visible = true;
                    }
                }
            }
            catch (Exception)
            {
            }
        }

        protected void LinkButton_Edit_Click(object sender, EventArgs e)
        {

        }
    }
}