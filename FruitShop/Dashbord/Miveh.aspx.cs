using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using DataLayer.Utils;

namespace FruitShop.Dashbord
{
    public partial class Page_Miveh : System.Web.UI.Page
    {
        public static int MahsolatID = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Mahsolat.Show(GridView_listMiveh, Mahsolat_Type.Miveh);
            }
        }

        protected void GridView_listMiveh_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            try
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    var div_Oldprice = e.Row.FindControl("div_Oldprice") as HtmlGenericControl;
                    var hf_IsDiscount = e.Row.FindControl("hf_IsDiscount") as HiddenField;

                    if (hf_IsDiscount.Value.Equals("False"))
                    {
                        div_Oldprice.Visible = false;
                    }
                    else
                    {
                        div_Oldprice.Visible = true;
                    }
                }
            }
            catch (Exception)
            {
            }
        }

        protected void LinkButton_Edit_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton btn = sender as LinkButton;
                GridViewRow gvr = btn.NamingContainer as GridViewRow;
                MahsolatID = int.Parse(GridView_listMiveh.DataKeys[gvr.RowIndex].Value.ToString());


                //دریافت اطلاعات کاربر از بانک
                var mahsol = Mahsolat.Get(id: MahsolatID);

                //نمایش ان در دایو ویرایش
                Fill_DivEdit(mahsol);

            }
            catch (Exception ee)
            {
            }
        }

        private void Fill_DivEdit(Mahsolat mahsol)
        {
            Div_MivehShow.Visible = false;

            Div_EditMiveh.Visible = true;

            txt_Name_DEdit.Text = mahsol.Name;
            txt_OldPrice_DEdit.Text = mahsol.OldPrice.ToString();
            txt_NewPrice_DEdit.Text = mahsol.NewPrice.ToString();
            txt_Description_DEdit.Text = mahsol.Description;


            img.Src = DataLayer.Models.Mahsolat.GetImagePath(mahsol.ImageUrl);
        }

        protected void btn_AddMiveh_Click(object sender, EventArgs e)
        {
            string imageUrl = "";
            var resUpload = DataLayer.Utils.Image.SaveImage(FileUpload_Picture_DAdd, out imageUrl);

            switch (resUpload)
            {
                case DataLayer.Utils.Image.UploadErrors.BigFile:
                    {
                        lb_Status_DAdd.Visible = true;
                        lb_Status_DAdd.Text = "اندازه فایل زیاد می باشد";
                        lb_Status_DAdd.ForeColor = System.Drawing.Color.Green;
                        return;
                    }
                case DataLayer.Utils.Image.UploadErrors.NoFile:
                    {
                        lb_Status_DAdd.Visible = true;
                        lb_Status_DAdd.Text = "فایلی وجود ندارد";
                        lb_Status_DAdd.ForeColor = System.Drawing.Color.Green;
                        return;
                    }
                case DataLayer.Utils.Image.UploadErrors.Error:
                    {
                        lb_Status_DAdd.Visible = true;
                        lb_Status_DAdd.Text = "مشکل سیستمی";
                        lb_Status_DAdd.ForeColor = System.Drawing.Color.Green;
                        return;
                    }
            }


            var mahsol = new Mahsolat()
            {
                ImageUrl = imageUrl,
                MahsolatID = MahsolatID,
                Name = txt_Name_DAdd.Text,
                OldPrice = txt_OldPrice_DAdd.Text.ToLong(),
                NewPrice = txt_NewPrice_DAdd.Text.ToLong(),
                Description = txt_Description_DAdd.Text,
            };

            if (Mahsolat.Add(mahsol))
            {
                lb_Status_DAdd.Visible = true;
                lb_Status_DAdd.Text = "ویرایش با موفقیت انجام شد";
                lb_Status_DAdd.ForeColor = System.Drawing.Color.Green;
                //کاربر با موفققیت ویرایش دش
            }
            else
            {
                lb_Status_DAdd.Text = "اشکال در ویرایش";
                //ایراد در وارایش کاربر
            }
        }

        protected void btn_Repeat_DAdd_Click(object sender, EventArgs e)
        {

        }

        protected void Exit_DAdd_Click(object sender, EventArgs e)
        {
            Div_MivehShow.Visible = true;

            Div_AddMiveh.Visible = false;
        }

        protected void btn_EditMiveh_DEdit_Click(object sender, EventArgs e)
        {
            string imageUrl = "";
            var resUpload = DataLayer.Utils.Image.SaveImage(FileUpload_Picture_DEdit, out imageUrl);


            switch (resUpload)
            {
                case DataLayer.Utils.Image.UploadErrors.BigFile:
                    {
                        lb_Status_DEdit.Visible = true;
                        lb_Status_DEdit.Text = "اندازه فایل زیاد می باشد";
                        lb_Status_DEdit.ForeColor = System.Drawing.Color.Green;
                        return;
                    }
                case DataLayer.Utils.Image.UploadErrors.Error:
                    {
                        lb_Status_DEdit.Visible = true;
                        lb_Status_DEdit.Text = "خطا سیستمی";
                        lb_Status_DEdit.ForeColor = System.Drawing.Color.Green;
                        return;
                    }
            }

            var mahsol = new Mahsolat()
            {
                ImageUrl = imageUrl,

                MahsolatID = MahsolatID,
                Name = txt_Name_DEdit.Text,
                OldPrice = txt_OldPrice_DEdit.Text.ToLong(),
                NewPrice = txt_NewPrice_DEdit.Text.ToLong(),
                Description = txt_Description_DEdit.Text,
            };
            if (Mahsolat.Update(mahsol))
            {
                lb_Status_DEdit.Visible = true;
                lb_Status_DEdit.Text = "ویرایش با موفقیت انجام شد";
                lb_Status_DEdit.ForeColor = System.Drawing.Color.Green;

            }
            else
            {
                lb_Status_DEdit.Text = "مشکل در ویرایش";
            }
        }

        protected void btn_Exit_DEdit_Click(object sender, EventArgs e)
        {
            Div_MivehShow.Visible = true;

            Div_EditMiveh.Visible = false;

            Mahsolat.Show(GridView_listMiveh, Mahsolat_Type.Miveh);
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            Div_AddMiveh.Visible = true;
            Div_EditMiveh.Visible = false;
            Div_MivehShow.Visible = false;
        }
    }
}