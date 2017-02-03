using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace DataLayer.Models
{
    public enum Mahsolat_Type : byte
    {
        None,

        Miveh,

        SeyfiJat,

        Other,
    }

    public partial class Mahsolat
    {
        public static bool Add(Mahsolat mahsolat)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    db.Mahsolats.Add(mahsolat);
                    db.SaveChanges();
                }

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static void Show(GridView gv, Mahsolat_Type type)
        {
            try
            {
                string[] t = new string[1];
                t[0] = "MahsolatID";
                gv.DataKeyNames = t;

                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var list = db.Mahsolats.Where(x => x.Type == type).ToList();
                    gv.DataSource = list;
                }
                gv.DataBind();
            }
            catch (Exception ee)
            {
            }
        }

        public static void Show(DropDownList ddl, Mahsolat_Type type)
        {
            try
            {
                ddl.DataTextField = "Name";
                ddl.DataValueField = "MahsolatID";

                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var list = db.Mahsolats.Where(x => x.Type == type)
                                        .Select(x => new
                                        {
                                            x.MahsolatID,
                                            x.Name,
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

        public static void Show(ListBox lb, Mahsolat_Type type)
        {
            try
            {
                lb.DataTextField = "Name";
                lb.DataValueField = "MahsolatID";

                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var list = db.Mahsolats.Where(x => x.Type == type)
                                        .Select(x => new
                                        {
                                            x.MahsolatID,
                                            x.Name,
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

        public static void Show(Repeater rp, Mahsolat_Type type)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var list = db.Mahsolats.Where(x => x.Type == type)
                                        .OrderByDescending(x => x.MahsolatID)
                                        .ToList();

                    rp.DataSource = list;
                }
                rp.DataBind();
            }
            catch (Exception)
            {
            }
        }

        public static void Show(Repeater rp, List<Mahsolat> list)
        {
            try
            {
                rp.DataSource = list;
                rp.DataBind();
            }
            catch (Exception)
            {
            }
        }

        public static List<Mahsolat> Get()
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    return db.Mahsolats.ToList();
                }
            }
            catch (Exception)
            {
                return new List<Mahsolat>();
            }
        }

        public static List<Mahsolat> Get(Mahsolat_Type type, int pageIndex = 1, int pageSize = 4)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    return db.Mahsolats.Where(x => x.Type == type)
                        .Distinct()
                        .OrderByDescending(x => x.MahsolatID)
                        .Skip(pageSize * (pageIndex - 1))
                        .Take(pageSize)
                        .ToList();
                }
            }
            catch (Exception)
            {
                return new List<Mahsolat>();
            }
        }

        public static Mahsolat Get(int id)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    return db.Mahsolats.Single(x => x.MahsolatID == id);
                }
            }
            catch (Exception)
            {
                return new Mahsolat();
            }
        }

        public static bool Update(Mahsolat mahsolat)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var model = db.Mahsolats.Single(x => x.MahsolatID == mahsolat.MahsolatID);

                    model.Name = mahsolat.Name;

                    db.SaveChanges();
                }

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static string GetImagePath(object imageUrl)
        {
            try
            {
                return Utils.Image.DIRECTORY_FRUIT + imageUrl;
            }
            catch (Exception)
            {
                return Utils.Image.DEFAULT_IMAGE;
            }
        }
    }
}
