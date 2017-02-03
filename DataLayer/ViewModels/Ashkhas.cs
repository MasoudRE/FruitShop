using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace DataLayer.Models
{
    public partial class Ashkhas
    {
        public static bool Add(Ashkhas shakhs)
        {
            try 
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    db.Ashkhas.Add(shakhs);
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
                t[0] = "AshkhasID";
                gv.DataKeyNames = t;

                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var list = db.Ashkhas.ToList();
                    gv.DataSource = list;
                }
                gv.DataBind();
            }
            catch (Exception ee)
            {
            }
        }

        public static void Show(DropDownList ddl)
        {
            try
            {
                ddl.DataTextField = "FullName";
                ddl.DataValueField = "AshkhasID";

                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var list = db.Ashkhas
                                        .Select(x => new
                                        {
                                            x.AshkhasID,
                                            FullName = x.Name + " " + x.Family,
                                        })
                                        .ToList();

                    ddl.DataSource = list;
                }
                ddl.DataBind();
            }
            catch (Exception)
            {
            }
        }

        public static void Show(ListBox lb)
        {
            try
            {
                lb.DataTextField = "FullName";
                lb.DataValueField = "AshkhasID";

                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var list = db.Ashkhas
                                        .Select(x => new
                                        {
                                            x.AshkhasID,
                                            FullName = x.Name + " " + x.Family,
                                        })
                                        .ToList();

                    lb.DataSource = list;
                }
                lb.DataBind();
            }
            catch (Exception)
            {
            }
        }

        public static List<Ashkhas> Get()
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    return db.Ashkhas.ToList();
                }
            }
            catch (Exception)
            {
                return new List<Ashkhas>();
            }
        }

        public static Ashkhas Get(int id)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    return db.Ashkhas.Single(x => x.AshkhasID == id);
                }
            }
            catch (Exception)
            {
                return new Ashkhas();
            }
        }

        public static bool Update(Ashkhas shakhs)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var model = db.Ashkhas.Single(x => x.AshkhasID == shakhs.AshkhasID);

                    model.Name = shakhs.Name;
                    model.Family = shakhs.Family;

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
