using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.SessionState;
using System.Web.UI.WebControls;

namespace DataLayer.Models
{
    public enum User_Type : byte
    {
        None,

        /// <summary>
        /// مدیر
        /// </summary>
        Admin,

        /// <summary>
        /// مشتری
        /// </summary>
        Customer,
    }

    public partial class Users
    {
        public static bool Add(Users user)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    db.Users.Add(user);
                    db.SaveChanges();
                }

                return true;
            }
            catch (Exception ee)
            {
                return false;
            }
        }

        public static void Show(GridView gv, User_Type type)
        {
            try
            {
                string[] t = new string[1];
                t[0] = "UserID";
                gv.DataKeyNames = t;

                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var list = db.Users.Where(x => x.Type == type).ToList();
                    gv.DataSource = list;
                }
                gv.DataBind();
            }
            catch (Exception ee)
            {
            }
        }

        public static void Show(DropDownList ddl, User_Type type)
        {
            try
            {
                ddl.DataTextField = "FullName";
                ddl.DataValueField = "UserID";

                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var list = db.Users.Where(x => x.Type == type)
                                        .Select(x => new
                                        {
                                            x.UserID,
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

        public static void Show(ListBox lb, User_Type type)
        {
            try
            {
                lb.DataTextField = "FullName";
                lb.DataValueField = "UserID";

                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var list = db.Users.Where(x => x.Type == type)
                                        .Select(x => new
                                        {
                                            x.UserID,
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

        public static List<Users> Get()
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    return db.Users.ToList();
                }
            }
            catch (Exception)
            {
                return new List<Users>();
            }
        }

        public static Users Get(int id)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    return db.Users.Single(x => x.UserID == id);
                }
            }
            catch (Exception)
            {
                return new Users();
            }
        }


        public static Users GetLogin(HttpSessionState session)
        {
            try
            {
                var id = int.Parse(session["LOGIN"].ToString());
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    return db.Users.Single(x => x.UserID == id);
                }
            }
            catch (Exception)
            {
                return new Users();
            }
        }

        public static bool IsLogin(HttpSessionState session, out Users user)
        {
            user = new Users();
            try
            {
                var id = int.Parse(session["LOGIN"].ToString());
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    user = db.Users.Single(x => x.UserID == id);

                    if (user.UserID > 0)
                        return true;
                }
                return false;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static bool Update(Users user)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var model = db.Users.Single(x => x.UserID == user.UserID);

                    model.Name = user.Name;
                    model.Family = user.Family;
                    model.Address = user.Address;
                    model.Email = user.Email;
                    model.CodePosti = user.CodePosti;
                    model.Mobile = user.Mobile;
                    model.Phone = user.Phone;

                    db.SaveChanges();
                }

                return true;
            }
            catch (Exception ee)
            {
                return false;
            }
        }

        public static bool Login(string username, string pass, out int userID)
        {
            userID = 0;
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var model = db.Users.First(x => x.Username == username &&
                                              x.Password == pass);

                    if (model.UserID > 0)
                    {
                        userID = model.UserID;
                        return true;
                    }
                }
                return false;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static bool IsExistUsername(string username)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var model = db.Users.Where(x => x.Username == username);

                    if (model.Count() > 0)
                    {
                        return true;
                    }
                }
                return false;
            }
            catch (Exception ee)
            {
                return false;
            }
        }

        public static bool IsExistCodeMeli(string code)
        {
            try
            {
                using (FruitShopEntity db = new FruitShopEntity())
                {
                    var model = db.Users.Where(x => x.CodeMeli == code);

                    if (model.Count() > 0)
                    {
                        return true;
                    }
                }
                return false;
            }
            catch (Exception ee)
            {
                return false;
            }
        }

    }
}
