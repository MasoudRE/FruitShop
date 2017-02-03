using DataLayer.Utils;
using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace FruitShop.SitePanel
{
    public partial class ShowProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Show_Slider_Fruit();
            Show_Slider_Vegetables();
            Show_Slider_OtherProduct();
        }

        /// <summary>
        /// اسلایدر میوه
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Repeater_SlideFruit_Item_ItemDataBound(object sender, RepeaterItemEventArgs e)
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

        /// <summary>
        /// اسلایدر سبزیجات
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Repeater_SlideVegetables_Item_ItemDataBound(object sender, RepeaterItemEventArgs e)
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

        /// <summary>
        /// اسلایدر دیکر محصولات
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Repeater_SlideOtherProduct_Item_ItemDataBound(object sender, RepeaterItemEventArgs e)
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
        

        //----------------------------------------------
        //base function
        //----------------------------------------------
        public void Show_Slider_Fruit()
        {
            try
            {
                var listSlideItem_1 = Mahsolat.Get(Mahsolat_Type.Miveh);
                var listSlideItem_2 = Mahsolat.Get(Mahsolat_Type.Miveh, pageIndex: 2);
                var listSlideItem_3 = Mahsolat.Get(Mahsolat_Type.Miveh, pageIndex: 3);


                ///بررسی می شود اگر ایتم اولی مقدار داشت اسلایدر مربوط به آن را نمایش دهد
                /// 
                if (listSlideItem_1.Count > 0)
                {
                    liTag_SlideFruit_Item_Navigation_1.Visible = true;
                    Div_SlideFruit_Item_1.Visible = true;

                    Mahsolat.Show(Repeater_SlideFruit_Item_1, listSlideItem_1);
                }

                ///بررسی می شود اگر ایتم دومی مقدار داشت اسلایدر مربوط به آن را نمایش دهد
                /// 
                if (listSlideItem_2.Count > 0)
                {
                    liTag_SlideFruit_Item_Navigation_2.Visible = true;
                    Div_SlideFruit_Item_2.Visible = true;

                    Mahsolat.Show(Repeater_SlideFruit_Item_2, listSlideItem_2);
                }


                ///بررسی می شود اگر ایتم سومی مقدار داشت اسلایدر مربوط به آن را نمایش دهد
                /// 
                if (listSlideItem_3.Count > 0)
                {
                    liTag_SlideFruit_Item_Navigation_3.Visible = true;
                    Div_SlideFruit_Item_3.Visible = true;

                    Mahsolat.Show(Repeater_SlideFruit_Item_3, listSlideItem_3);
                }
            }
            catch (Exception ee)
            {
            }
        }

        public void Show_Slider_Vegetables()
        {
            try
            {
                var listSlideItem_1 = Mahsolat.Get(Mahsolat_Type.SeyfiJat);
                var listSlideItem_2 = Mahsolat.Get(Mahsolat_Type.SeyfiJat, pageIndex: 2);
                var listSlideItem_3 = Mahsolat.Get(Mahsolat_Type.SeyfiJat, pageIndex: 3);


                ///بررسی می شود اگر ایتم اولی مقدار داشت اسلایدر مربوط به آن را نمایش دهد
                /// 
                if (listSlideItem_1.Count > 0)
                {
                    liTag_SlideVegetables_Item_Navigation_1.Visible = true;
                    Div_SlideVegetables_Item_1.Visible = true;

                    Mahsolat.Show(Repeater_SlideVegetables_Item_1, listSlideItem_1);
                }

                ///بررسی می شود اگر ایتم دومی مقدار داشت اسلایدر مربوط به آن را نمایش دهد
                /// 
                if (listSlideItem_2.Count > 0)
                {
                    liTag_SlideVegetables_Item_Navigation_2.Visible = true;
                    Div_SlideVegetables_Item_2.Visible = true;

                    Mahsolat.Show(Repeater_SlideVegetables_Item_2, listSlideItem_2);
                }


                ///بررسی می شود اگر ایتم سومی مقدار داشت اسلایدر مربوط به آن را نمایش دهد
                /// 
                if (listSlideItem_3.Count > 0)
                {
                    liTag_SlideVegetables_Item_Navigation_3.Visible = true;
                    Div_SlideVegetables_Item_3.Visible = true;

                    Mahsolat.Show(Repeater_SlideVegetables_Item_3, listSlideItem_3);
                }
            }
            catch (Exception ee)
            {
            }
        }

        public void Show_Slider_OtherProduct()
        {
            try
            {
                var listSlideItem_1 = Mahsolat.Get(Mahsolat_Type.Other);
                var listSlideItem_2 = Mahsolat.Get(Mahsolat_Type.Other, pageIndex: 2);
                var listSlideItem_3 = Mahsolat.Get(Mahsolat_Type.Other, pageIndex: 3);


                ///بررسی می شود اگر ایتم اولی مقدار داشت اسلایدر مربوط به آن را نمایش دهد
                /// 
                if (listSlideItem_1.Count > 0)
                {
                    liTag_SlideOtherProduct_Item_Navigation_1.Visible = true;
                    Div_SlideOtherProduct_Item_1.Visible = true;

                    Mahsolat.Show(Repeater_SlideOtherProduct_Item_1, listSlideItem_1);
                }

                ///بررسی می شود اگر ایتم دومی مقدار داشت اسلایدر مربوط به آن را نمایش دهد
                /// 
                if (listSlideItem_2.Count > 0)
                {
                    liTag_SlideOtherProduct_Item_Navigation_2.Visible = true;
                    Div_SlideOtherProduct_Item_2.Visible = true;

                    Mahsolat.Show(Repeater_SlideOtherProduct_Item_2, listSlideItem_2);
                }


                ///بررسی می شود اگر ایتم سومی مقدار داشت اسلایدر مربوط به آن را نمایش دهد
                /// 
                if (listSlideItem_3.Count > 0)
                {
                    liTag_SlideOtherProduct_Item_Navigation_3.Visible = true;
                    Div_SlideOtherProduct_Item_3.Visible = true;

                    Mahsolat.Show(Repeater_SlideOtherProduct_Item_3, listSlideItem_3);
                }
            }
            catch (Exception ee)
            {
            }
        }
    }
}