using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI.WebControls;

namespace DataLayer.Utils
{
    public class Image
    {
        public const int MAX_SIZE_BYTE = int.MaxValue;
        public const string DEFAULT_IMAGE = "";
        public const string DIRECTORY_IMAGE = "/Image/Product/ImgeUrl/";

        public enum UploadErrors : int
        {
            Success = 1,
            BigFile = 2,
            InvalidType = 3,
            NoFile = 4,
            Error
        }

        public static UploadErrors SaveImage(FileUpload fileUpload, out string fileName)
        {
            fileName = "";
            try
            {
                int max_FileSize_Byte = int.MaxValue;

                //فایل وجود ندارد
                if (!fileUpload.HasFile)
                    return UploadErrors.NoFile;

                //عکس نمی تواند از یک اندازه مشخص شده ای بیشتر باشد
                if (fileUpload.PostedFile.ContentLength > max_FileSize_Byte)
                    return UploadErrors.BigFile;

                //اپلود عکس
                fileName = Path.GetRandomFileName() + "_" + fileUpload.FileName;
                string filePath = HttpContext.Current.Server.MapPath(DIRECTORY_IMAGE) + fileName;

                fileUpload.SaveAs(filePath);

                return UploadErrors.Success;
            }
            catch (Exception ee)
            {
                return UploadErrors.Error;
            }
        }
    }
}
