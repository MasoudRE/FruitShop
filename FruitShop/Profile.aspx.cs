using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangePass.aspx");
    }

    protected void btn_InfoUser_Click(object sender, EventArgs e)
    {
        Div_EdiInfoUser.Visible = true;
    }

    //protected void btn_SaveInfo_Click(object sender, EventArgs e)
    //{
    //    Div_EdiInfoUser.Visible = false;
    //}
}