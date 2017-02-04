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
                List<Mahsolat> list = new List<Mahsolat>();
                //get from session
                if (Session["CARD"] != null)
                {
                    list = Session["CARD"] as List<Mahsolat>;
                }
                lbl_cardItemCount.Text = list.Count.ToString();
            }
        }
    }
}