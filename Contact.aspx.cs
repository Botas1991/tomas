using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SendEmail se= new SendEmail();
        se.prop_from = TextBox1.Text;
        se.prop_to = TextBox1.Text;
        se.prop_subject = TextBox2.Text;
        se.prop_body = TextBox3.Text;
        se.Send();

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}