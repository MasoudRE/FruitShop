using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FruitShop.Element
{
    public partial class GridView : System.Web.UI.Page
    {
        public static int userID = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Users.Show(GridView_listUser,
                        DataLayer.Models.User_Type.Customer);
        }

        protected void LinkButton_Edit_Click(object sender, EventArgs e)
        {
            try
            {
                LinkButton btn = sender as LinkButton;
                GridViewRow gvr = btn.NamingContainer as GridViewRow;
                userID = int.Parse(GridView_listUser.DataKeys[gvr.RowIndex].Value.ToString());

                //دریافت اطلاعات کاربر از بانک
                var user = Users.Get(id: userID);

                //نمایش ان در دایو ویرایش
                Fill_DivEdit(user);

            }
            catch (Exception ee)
            {
            }
        }

        private void Fill_DivEdit(Users user)
        {
            div_list.Visible = false;

            div_Edit.Visible = true;

            txt_Address.Text = user.Address;
            txt_Family.Text = user.Family;
            txt_Name.Text = user.Name;
        }

        protected void Button_Cancel_Click(object sender, EventArgs e)
        {
            div_list.Visible = true;

            div_Edit.Visible = false;
        }

        protected void Button_Edit_Click(object sender, EventArgs e)
        {
            var user = new Users()
            {
                UserID = userID,
                Name = txt_Name.Text.Trim(),
                Family = txt_Family.Text.Trim(),

                //....
            };


            if (Users.Update(user))
            {
                Label_Status.Text = "Success";
                Label_Status.ForeColor = System.Drawing.Color.Green;
                Button_Cancel_Click(sender, e);
                //کاربر با موفققیت ویرایش دش
            }
            else
            {
                Label_Status.Text = "Error";
                //ایراد در وارایش کاربر
            }
        }
    }
}