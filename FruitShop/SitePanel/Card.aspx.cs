using DataLayer.Models;
using DataLayer.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FruitShop.SitePanel
{
    public partial class Page_Card : System.Web.UI.Page
    {
        public static int MahsolatID = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Card.Show(GridView_Card, Session);
            }
            catch (Exception)
            {

            }
        }

        protected void GridView_Card_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {

                    var lbl_Price = e.Row.FindControl("lbl_Price") as Label;
                    var txt_Count = e.Row.FindControl("txt_Count") as Label;
                    var lbl_CountTotalPrice = e.Row.FindControl("lbl_CountTotalPrice") as Label;

                    var price = lbl_Price.Text.ToLong();
                    var count = txt_Count.Text.ToLong();
                    lbl_CountTotalPrice.Text = (price * count).ToString();

                }
            }
            catch (Exception)
            {
            }
        }

        protected void LinkButton_Delete_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton btn = sender as LinkButton;
                GridViewRow gvr = btn.NamingContainer as GridViewRow;
                MahsolatID = int.Parse(GridView_Card.DataKeys[gvr.RowIndex].Value.ToString());


                Card.Delete(id: MahsolatID);

                Card.Show(GridView_Card, Session);
            }
            catch (Exception)
            {
            }
        }
    }
}