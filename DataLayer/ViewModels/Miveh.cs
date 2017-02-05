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
        public static bool Add(Mahsolat mahsol)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    db.Mahsolats.Add(mahsol);
                    db.SaveChanges();
                }

                return true;
            }
            catch (Exception)
            {
                return false;
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

        public static bool Update(Mahsolat mahsol)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var model = db.Mahsolats.Single(x => x.MahsolatID == mahsol.MahsolatID);

                    model.Name = mahsol.Name;
                    model.Description = mahsol.Description;

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
