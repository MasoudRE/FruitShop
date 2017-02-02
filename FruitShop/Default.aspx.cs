using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (FruitShopEntity db = new FruitShopEntity())
        {
            db.Mahsolats.Add(new Mahsolat()
            {
                Description = "",
            });


            db.Mivehs.Add(new DataLayer.Models.Miveh()
            {
                Amount = "4"
            });


            db.Sabzijats.Add(new Sabzijat()
            {
                Amount = "2"
            });

            db.SaveChanges();
        }

        Response.Redirect("ShowProduct.aspx");
    }
}