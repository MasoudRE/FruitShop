using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer.Utils
{
    public static class ExtensionMethods
    {
        public static bool IsNullOrEmpty(this string str)
        {
            try
            {
                return string.IsNullOrEmpty(str);
            }
            catch (Exception)
            {
                return true;
            }
        }


        public static bool IsNullOrEmpty(this long? str)
        {
            try
            {
                return string.IsNullOrEmpty(str.Value.ToString());
            }
            catch (Exception)
            {
                return true;
            }
        }

        public static bool IsNullOrFalse(this string str)
        {
            try
            {
                if (string.IsNullOrEmpty(str))
                    return true;

                if (bool.Parse(str) == false)
                    return true;

                return false;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
