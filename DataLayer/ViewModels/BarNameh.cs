using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace DataLayer.Models
{
    public partial class BarNameh
    {
        public static bool Add(BarNameh bar)
        {
            try 
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    db.BarNamehs.Add(bar);
                    db.SaveChanges();
                }

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static void Show(GridView gv)
        {
            try
            {
                string[] t = new string[1];
                t[0] = "BarNamehID";
                gv.DataKeyNames = t;

                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var list = db.BarNamehs.ToList();
                    gv.DataSource = list;
                }
                gv.DataBind();
            }
            catch (Exception ee)
            {
            }
        }

        public static List<BarNameh> Get()
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    return db.BarNamehs.ToList();
                }
            }
            catch (Exception)
            {
                return new List<BarNameh>();
            }
        }

        public static BarNameh Get(int id)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    return db.BarNamehs.Single(x => x.BarNamehID == id);
                }
            }
            catch (Exception)
            {
                return new BarNameh();
            }
        }

        public static bool Update(BarNameh bar)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var model = db.BarNamehs.Single(x => x.BarNamehID == bar.BarNamehID);

                    model.GhimatKol = bar.GhimatKol;

                    db.SaveChanges();
                }

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
