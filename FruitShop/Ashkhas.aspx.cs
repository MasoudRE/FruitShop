using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer.Models;

public partial class Ashkhas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btn_SaveUser_Click(object sender, EventArgs e)
    {
        DataLayer.Models.Ashkhas Shakhs = new DataLayer.Models.Ashkhas()
        {
            Name = txt_Name.Text.Trim(),
            Family = txt_Family.Text.Trim(),
            Mobile = txt_Mobile.Text.Trim(),
            Tel = txt_Tel.Text.Trim(),
            Address= txt_Address.Text.Trim(),
            //....
        };


        if (DataLayer.Models.Ashkhas.Add(Shakhs))
        {
            Label_Status.Text = "Success";
            Label_Status.ForeColor = System.Drawing.Color.Green;
           
         
        }
        else
        {
            Label_Status.Text = "Error";
            //ایراد در وارایش کاربر
        }
    }

    protected void LinkButton_Edit_Click(object sender, EventArgs e)
    {
    }
}