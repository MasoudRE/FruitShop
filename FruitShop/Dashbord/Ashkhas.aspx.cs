using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FruitShop.Dashbord
{
    public partial class Page_Ashkhas : System.Web.UI.Page
    {
        public static int AshkhasID = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            var nextID = Ashkhas.GetNextID();

            Ashkhas.Show(GridView_listAshkhas);
        }

        private static void Show(GridView gridView_listAshkhas)
        {
            throw new NotImplementedException();
        }


        protected void LinkButton_Edit_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton btn = sender as LinkButton;
                GridViewRow gvr = btn.NamingContainer as GridViewRow;
                AshkhasID = int.Parse(GridView_listAshkhas.DataKeys[gvr.RowIndex].Value.ToString());

                //دریافت اطلاعات کاربر از بانک
                var shakhs = Ashkhas.Get(id: AshkhasID);

                //نمایش ان در دایو ویرایش
                Fill_DivEdit(shakhs);

            }
            catch (Exception ee)
            {
            }
        }

        private void Fill_DivEdit(Ashkhas shakhs)
        {
            Div_ShowAshkhas.Visible = false;

            Div_EditAshkhas.Visible = true;

            txt_Family_DEdit.Text = shakhs.Family;
            txt_Name_DEdit.Text = shakhs.Name;
            txt_CodeMeli_DEdit.Text = shakhs.CodeMeli.ToString();
            txt_Tel_DEdit.Text = shakhs.Tel;
            txt_Mobile_DEdit.Text = shakhs.Mobile;
            txt_Address_DEdit.Text = shakhs.Address;
        }

        protected void Exit_DivAdd_Click(object sender, EventArgs e)
        {
            Div_ShowAshkhas.Visible = true;

            Div_AddAshkhas.Visible = false;
            Ashkhas.Show(GridView_listAshkhas);
        }

        protected void btn_EditAshkhas_Click(object sender, EventArgs e)
        {
            var shakhs = new Ashkhas()
            {
                AshkhasID= AshkhasID,
                Family = txt_Family_DEdit.Text,
                Name = txt_Name_DEdit.Text,
                Tel = txt_Tel_DEdit.Text,
                Mobile = txt_Mobile_DEdit.Text,
                Address = txt_Address_DEdit.Text,
                CodeMeli=int.Parse( txt_CodeMeli_DEdit.Text),
            };
            if (Ashkhas.Update(shakhs))
            {
                lb_Status_DEdit.Visible = true;
                lb_Status_DEdit.Text = "ویرایش با موفقیت انجام شد";
                lb_Status_DEdit.ForeColor = System.Drawing.Color.Green;

            }
            else
            {
                lb_Status_DEdit.Text = "مشکل در ویرایش";
            }


            Ashkhas.Show(GridView_listAshkhas);
        }

        protected void Exit_DivEdit_Click(object sender, EventArgs e)
        {
            Div_ShowAshkhas.Visible = true;

            Div_EditAshkhas.Visible = false;

            Ashkhas.Show(GridView_listAshkhas);
        }

        protected void Repeat_DivAdd_Click(object sender, EventArgs e)
        {

        }

        protected void btn_AddAshkhas_Click(object sender, EventArgs e)
        {
            var shakhs = new Ashkhas()
            {
                Family = txt_Family_DAdd.Text,
                Name = txt_Name_DAdd.Text,
                CodeMeli = int.Parse(txt_CodeMeli_DAdd.Text),
                Tel = txt_Tel_DAdd.Text,
                Mobile = txt_Mobile_DAdd.Text,
                Address = txt_Address_DAdd.Text
            };

            if (Ashkhas.Add(shakhs))
            {
                lb_Status_DAdd.Visible = true;
                lb_Status_DAdd.Text = "ثبت با موفقیت انجام شد";
                lb_Status_DAdd.ForeColor = System.Drawing.Color.Green;
                //کاربر با موفققیت ویرایش دش
            }
            else
            {
                lb_Status_DAdd.Text = "اشکال در ثبت";
                //ایراد در وارایش کاربر
            }

            Ashkhas.Show(GridView_listAshkhas);
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            Div_AddAshkhas.Visible = true;
            Div_EditAshkhas.Visible = false;
            Div_ShowAshkhas.Visible = false;
        }
    }
}