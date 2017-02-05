using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer.Models;
using System.Web.UI.HtmlControls;

namespace FruitShop.Dashbord
{
    public partial class Page_SeyfiJat : System.Web.UI.Page
    {
        public static int MahsolatID = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Mahsolat.Show(GridView_listSeyfiJat, Mahsolat_Type.SeyfiJat);
            }
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            Div_AddSeyfiJat.Visible = true;
            Div_EditSeyfiJat.Visible = false;
            Div_ShowSeyfiJat.Visible = false;
        }

        protected void LinkButton_Edit_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton btn = sender as LinkButton;
                GridViewRow gvr = btn.NamingContainer as GridViewRow;
                MahsolatID = int.Parse(GridView_listSeyfiJat.DataKeys[gvr.RowIndex].Value.ToString());

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
            Div_ShowSeyfiJat.Visible = false;

            Div_EditSeyfiJat.Visible = true;

            txt_Name_DEdit.Text = mahsol.Name;
            txt_OldPrice_Dedit.Text = mahsol.OldPrice.ToString();
            txt_NewPrice_Dedit.Text = mahsol.NewPrice.ToString();
            txt_Description_DEdit.Text = mahsol.Description;

        }

        protected void btn_AddSeyfiJat_DAdd_Click(object sender, EventArgs e)
        {
            var mahsol = new Mahsolat()
            {
                MahsolatID = MahsolatID,
                Name = txt_Name_DEdit.Text,
                OldPrice = long.Parse(txt_OldPrice_DAdd.Text),
                NewPrice = long.Parse(txt_NewPrice_DAdd.Text),
                Description = txt_Description_DEdit.Text,
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


        protected void txt_Repeat_DAdd_Click(object sender, EventArgs e)
        {

        }

        protected void Exit_DAdd_Click(object sender, EventArgs e)
        {
            Div_AddSeyfiJat.Visible = false;
            Div_ShowSeyfiJat.Visible = true;
        }

        protected void GridView_listSeyfiJat_RowDataBound(object sender, GridViewRowEventArgs e)
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

        protected void Exit_DEdit_Click(object sender, EventArgs e)
        {
            Div_EditSeyfiJat.Visible = false;
            Div_ShowSeyfiJat.Visible = true;
        }
    }
}