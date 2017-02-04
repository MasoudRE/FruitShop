using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI.WebControls;

namespace DataLayer.Models
{
    public enum Miveh_Type : byte
    {
        None,
    }

    public partial class Miveh
    {
        public static bool Add(Miveh mahsolat)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    db.Mivehs.Add(mahsolat);
                    db.SaveChanges();
                }

                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static void Show(GridView gv, Miveh_Type type)
        {
            try
            {
                string[] t = new string[1];
                t[0] = "MivehID";
                gv.DataKeyNames = t;

                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var list = db.Mivehs.Where(x => x.Type == type).ToList();
                    gv.DataSource = list;
                }
                gv.DataBind();
            }
            catch (Exception ee)
            {
            }
        }

        public static void Show(DropDownList ddl, Miveh_Type type)
        {
            try
            {
                ddl.DataTextField = "Name";
                ddl.DataValueField = "MivehID";

                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var list = db.Mivehs.Where(x => x.Type == type)
                                        .Select(x => new
                                        {
                                            x.MivehID,
                                            x.Mahsolat.Name,
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

        public static void Show(ListBox lb, Miveh_Type type)
        {
            try
            {
                lb.DataTextField = "Name";
                lb.DataValueField = "MivehID";

                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var list = db.Mivehs.Where(x => x.Type == type)
                                        .Select(x => new
                                        {
                                            x.MivehID,
                                            x.Mahsolat.Name,
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

        public static void Show(Repeater rp, Miveh_Type type)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var list = db.Mivehs.Where(x => x.Type == type)
                                        .OrderByDescending(x => x.MivehID)
                                        .ToList();

                    rp.DataSource = list;
                }
                rp.DataBind();
            }
            catch (Exception)
            {
            }
        }

        public static void Show(Repeater rp, List<Miveh> list)
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

        public static List<Miveh> Get()
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    return db.Mivehs.ToList();
                }
            }
            catch (Exception)
            {
                return new List<Miveh>();
            }
        }

        public static List<Miveh> Get(Miveh_Type type, int pageIndex = 1, int pageSize = 4)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    return db.Mivehs.Where(x => x.Type == type)
                        .Distinct()
                        .OrderByDescending(x => x.MivehID)
                        .Skip(pageSize * (pageIndex - 1))
                        .Take(pageSize)
                        .ToList();
                }
            }
            catch (Exception)
            {
                return new List<Miveh>();
            }
        }

        public static Miveh Get(int id)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    return db.Mivehs.Single(x => x.MivehID == id);
                }
            }
            catch (Exception)
            {
                return new Miveh();
            }
        }

        public static bool Update(Miveh mahsolat)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var model = db.Mivehs.Single(x => x.MivehID == mahsolat.MivehID);

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
