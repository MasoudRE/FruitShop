using DataLayer.Models;
using DataLayer.Utils;
using System;
using System.Collections.Generic;
using System.Drawing;
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

                //اگر محصول انتخاب نشده باشد
                if (model == null ||
                    model.MahsolatID <= 0)
                {
                    lbl_Status.Text = "محصول انتخاب شده موجود نیست !";
                    lbl_Status.Visible = true;
                    return;
                }


                Fill_Details(model);
            }
            catch (Exception)
            {
                lbl_Status.Text = "محصول انتخاب شده موجود نیست !";
                lbl_Status.Visible = true;
            }
        }


        protected void btn_AddCard_ServerClick(object sender, EventArgs e)
        {
            try
            {
                var mahsol = Mahsolat.Get(productId);
                if (mahsol == null ||
                    mahsol.MahsolatID <= 0)
                {
                    lbl_Status.Text = "محصول انتخاب شده موجود نیست !";
                    lbl_Status.Visible = true;


                    var fontSize = lbl_Status.Font.Size.Unit.Value;
                    if (fontSize < 20)
                        lbl_Status.Font.Size = 20;
                    else if (fontSize >= 30)
                        lbl_Status.Font.Size = 30;
                    else
                        lbl_Status.Font.Size = (int)(fontSize + 5);

                    return;
                }

                List<Card> list = new List<Card>();
                //get from session
                if (Session["CARD"] != null)
                {
                    list = Session["CARD"] as List<Card>;
                }

                //دریافت محصلی که قبلا وارد سبد خرید شده است
                var existModel = list.FirstOrDefault(x => x.MahsolatID == productId);

                if (existModel == null)
                //افزودن به سبد خرید
                {
                    list.Add(new Card()
                    {
                        MahsolatID = productId,
                        Count = 1
                    });
                }
                else
                //افزایش مقدار محصول
                {
                    existModel.Count++;
                }

                //set session
                Session["CARD"] = list;

                var lbl_CardItemCount = Page.Master.FindControl("lbl_cardItemCount") as Label;
                lbl_CardItemCount.Text = Card.GetCount(Session).ToString();
            }
            catch (Exception ee)
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

    }
}