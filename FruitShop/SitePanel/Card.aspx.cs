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
        public static int productId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                Fill_Card(GridView_Card);
            }
            catch (Exception)
            {

            }
        }

        //--------------------------------
        //base function
        //--------------------------------
        public void Fill_Card(GridView gv)
        {
            try
            {
                List<Mahsolat> list = new List<Mahsolat>();
                //get from session
                if (Session["CARD"] != null)
                {
                    list = Session["CARD"] as List<Mahsolat>;
                }

                var listProduct = list.Select(x => new
                {
                    mahsol = x,
                    count = list.Where(i => i.MahsolatID == x.MahsolatID).Count()//دریافت تعداد محصولات مشابه
                }).ToList();




                //----------------------------------------
                //حذف محصولات تکراری
                //----------------------------------------

                //دریافت محصولات تکراری
                var listDuplicateProduct = listProduct.Where(x => x.count > 1);

                foreach (var item in listDuplicateProduct)
                {
                    //محصول تکراری را از لیست اصلی حذف می کند
                    var a = list.Where(x => x.MahsolatID == item.mahsol.MahsolatID);
                }


                string[] t = new string[1];
                t[0] = "MahsolatID";
                gv.DataKeyNames = t;
            }
            catch (Exception)
            {
            }
        }
    }
}