using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace DataLayer.Utils
{
    public class Image
    {
        public const int MAX_SIZE_BYTE = int.MaxValue;
        public const string DEFAULT_IMAGE = "";
        public const string DIRECTORY_FRUIT = "/Image/Product/Fruit/";

        public enum UploadErrors : int
        {
            Success = 1,
            BigFile = 2,
            InvalidType = 3,
            Nofile = 4,
            Error
        }
    }
}
