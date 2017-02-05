using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer.Utils;

namespace FruitShop.SitePanel
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_SaveUser_Click(object sender, EventArgs e)
        {
            try
            {
                var user = new Users()
                {
                    Name = txt_Name.Text,
                    Family = txt_Family.Text,
                    CodeMeli = txt_CodeMeli.Text,
                    CodePosti = txt_CodePost.Text.ToInt(),
                    Email = txt_Email.Text,
                    Username = txt_User.Text,
                    Password = txt_Pass.Text,
                    Mobile = txt_Mobile.Text,
                    Phone = txt_Phone.Text,
                    Address = txt_Address.Text,
                    Type = User_Type.Customer,
                };

                user.Customers.Add(new DataLayer.Models.Customer()
                {
                });

                if (!user.Password.Equals(txt_PassRepeat.Text))
                {
                    lbl_ErrorStatus.Text = "پسورد با تکرار آن مطابقت ندارد";
                    lbl_SuccessStatus.Text = "";
                    return;
                }

                if (Users.IsExistUsername(user.Username))
                {
                    lbl_ErrorStatus.Text = "نام کاربری تکراری است";
                    lbl_SuccessStatus.Text = "";
                    return;
                }


                if (Users.IsExistCodeMeli(user.CodeMeli))
                {
                    lbl_ErrorStatus.Text = "کد ملی تکراری است";
                    lbl_SuccessStatus.Text = "";
                    return;
                }



                if (Users.Add(user))
                {
                    lbl_SuccessStatus.Text = "شما با موفقیت ثبت نام کردید";
                    lbl_ErrorStatus.Text = "";
                }
                else
                {
                    lbl_ErrorStatus.Text = "ایراد در ثبت نام";
                    lbl_SuccessStatus.Text = "";
                    return;
                }
            }
            catch (Exception)
            {
            }
        }
    }
}