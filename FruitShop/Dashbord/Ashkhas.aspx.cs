using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FruitShop.Dashbord
{
    public partial class Page_Ashkhas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var nextID = Ashkhas.GetNextID();

            Ashkhas.Show(GridView_listAshkhas);
        }

        private static void Show(GridView gridView_listAshkhas)
        {
            throw new NotImplementedException();
        }


        protected void LinkButton_Edit_Click(object sender, EventArgs e)
        {
        }
    }
}