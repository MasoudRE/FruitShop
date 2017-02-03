using DataLayer.Models;
using DataLayer.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace FruitShop.SitePanel
{
    public partial class Page_ListOtherProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Mahsolat.Show(Repeater_ListOtherProduct, Mahsolat_Type.Other);
            }
        }

        protected void Repeater_ListOtherProduct_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            try
            {
                var IsDiscount = e.Item.FindControl("HiddenField_IsDiscount") as HiddenField;
                var OldPrice = e.Item.FindControl("Div_RPSliderItem_OldPrice") as HtmlGenericControl;

                if (IsDiscount.Value.IsNullOrFalse())
                {
                    OldPrice.Style.Add("display", "none");
                }
            }
            catch (Exception)
            {
            }
        }
    }
}