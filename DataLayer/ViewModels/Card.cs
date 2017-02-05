using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.SessionState;
using System.Web.UI.WebControls;

namespace DataLayer.Models
{
    public class Card
    {
        public int MahsolatID { get; set; }

        public int Count { get; set; }

        public Mahsolat Mahsol { get; set; }

        public static int GetCount(HttpSessionState session)
        {
            try
            {
                List<Card> list = new List<Card>();
                //get from session
                if (session["CARD"] != null)
                {
                    list = session["CARD"] as List<Card>;
                }

                int count = 0;
                foreach (var item in list)
                {
                    count += item.Count;
                }

                return count;
            }
            catch (Exception)
            {
                return 0;
            }
        }

        public static void Show(GridView gv, HttpSessionState session)
        {
            List<Card> list = new List<Card>();
            //get from session
            if (session["CARD"] != null)
            {
                list = session["CARD"] as List<Card>;
            }

            foreach (var item in list)
            {
                item.Mahsol = Mahsolat.Get(item.MahsolatID);
            }

            string[] t = new string[1];
            t[0] = "MahsolatID";
            gv.DataKeyNames = t;

            gv.DataSource = list;
            gv.DataBind();
        }

        public static bool Add(int mahsolatID, HttpSessionState session)
        {
            try
            {
                List<Card> list = new List<Card>();
                //get from session
                if (session["CARD"] != null)
                {
                    list = session["CARD"] as List<Card>;
                }

                var model = list.First(x => x.MahsolatID == mahsolatID);
                model.Count++;

                session["CARD"] = list;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static bool Delete(int mahsolatID, HttpSessionState session)
        {
            try
            {
                List<Card> list = new List<Card>();
                //get from session
                if (session["CARD"] != null)
                {
                    list = session["CARD"] as List<Card>;
                }

                var model = list.First(x => x.MahsolatID == mahsolatID);

                if (model.Count > 1)
                {
                    model.Count--;
                }
                else
                {
                    list.Remove(model);
                }

                session["CARD"] = list;
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
