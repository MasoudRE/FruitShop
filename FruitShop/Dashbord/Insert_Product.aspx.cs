using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FruitShop.Dashbord
{
    public partial class Page_Insert_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_SaveUser_Click(object sender, EventArgs e)
        {
            DataLayer.Models.Mahsolat Shakhs = new DataLayer.Models.Mahsolat()
            {
                //Name = txt_Name.Text.Trim(),
                //OldPrice = Convert.ToDouble(txt_OldPrice.Text.Trim(),
                //NewPrice = Convert.ToDouble( txt_NewPrice.Text.Trim(),
                //Description = txt_Description.Text.Trim(),
                ////....
            };
        }
    }
}