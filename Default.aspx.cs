using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   

    protected void Button1_Click(object sender, EventArgs e)
    {
        Article a = new Article();
        int id = a.Read() + 1;
        a.prop_id = id;
        a.prop_paragraph = TextBox2.Text;
        a.prop_tittle = TextBox1.Text;
        a.Write();
    }
}