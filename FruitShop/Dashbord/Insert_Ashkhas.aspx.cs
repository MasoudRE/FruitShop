using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FruitShop.Dashbord
{
    public partial class Page_Insert_Ashkhas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_EditAshkhas_Click(object sender, EventArgs e)
        {
           
        }

        protected void btn_SaveUser_Click(object sender, EventArgs e)
        {
            DataLayer.Models.Ashkhas Shakhs = new DataLayer.Models.Ashkhas()
            {
                Name = txt_Name.Text.Trim(),
                Family = txt_Family.Text.Trim(),
                Mobile = txt_Mobile.Text.Trim(),
                Tel = txt_Tel.Text.Trim(),
                Address = txt_Address.Text.Trim(),
                //....
            };


            //if (DataLayer.Models.Ashkhas.Add(Shakhs))
            //{
            //    lb_Status.Text = "ثبت با موفقیت انجام شد";
            //    lb_Status.ForeColor = System.Drawing.Color.Green;


            //}
            //else
            //{
            //    lb_Status.Text = "Error";
            //    //ایراد در وارایش کاربر
            //}
        }
    }
}