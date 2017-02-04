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
    public partial class DetailsFruit : System.Web.UI.Page
    {
        public static int productId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                productId = int.Parse(Request.QueryString["ProductID"]);

                var model = Mahsolat.Get(productId);

                Fill_Details(model);
            }
            catch (Exception)
            {

            }
        }

        //--------------------------------
        //base function
        //--------------------------------
        public void Fill_Details(Mahsolat model)
        {
            try
            {
                //name
                if (!model.Name.IsNullOrEmpty())
                    lbl_Name.Text = model.Name;
                else
                    lbl_Name.Text = "--";

                //Description
                if (!model.Description.IsNullOrEmpty())
                    lbl_Description.Text = model.Description;
                else
                    lbl_Description.Text = "--";

                //old price
                if (!model.OldPrice.IsNullOrEmpty())
                    lbl_OldPrice.Text = model.OldPrice.ToString();
                else
                    lbl_OldPrice.Text = "--";


                //new price
                if (!model.NewPrice.IsNullOrEmpty())
                    lbl_NewPrice.Text = model.NewPrice.ToString();
                else
                    lbl_NewPrice.Text = "--";

                //isDiscount
                if (model.IsDiscount == true)
                    div_oldPrice.Visible = true;
                else
                    div_oldPrice.Visible = false;

                //image url
                ImageUrl.Src = DataLayer.Models.Mahsolat.GetImagePath(model.ImageUrl);

                //type 
                lbl_type.Text = Mahsolat.GetTypeName(model.Type);
            }
            catch (Exception)
            {
            }
        }

        protected void btn_AddCard_ServerClick(object sender, EventArgs e)
        {
            try
            {
                List<Mahsolat> list = new List<Mahsolat>();
                //get from session
                if (Session["CARD"] != null)
                {
                    list = Session["CARD"] as List<Mahsolat>;
                }


                //add to card
                var model = Mahsolat.Get(productId);
                list.Add(model);

                //set session
                Session["CARD"] = list;

                var lbl_CardItemCount = Page.Master.FindControl("lbl_cardItemCount") as Label;
                lbl_CardItemCount.Text = list.Count.ToString();
            }
            catch (Exception ee)
            {
            }
        }
    }
}