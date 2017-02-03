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
                return false;
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
