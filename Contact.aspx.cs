using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        RegexUtilities util = new RegexUtilities();
        
        string emailAddress =TextBox1.Text;
        if (util.IsValidEmail(emailAddress))
        {
            SendEmail se = new SendEmail();
            se.prop_from = TextBox1.Text;
            se.prop_to = TextBox1.Text;
            se.prop_subject = TextBox2.Text;
            se.prop_body = TextBox3.Text;

            string path = "C:\\www\\tomas\\" + FileUpload1.FileName;
            FileUpload1.SaveAs(path);
            
            if (FileUpload1.HasFile == true)
            {
               se.attach = FileUpload1.PostedFile.InputStream;
               se.prop_filename = FileUpload1.FileName;
               se.ok = true;             
            }

            se.Send();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            File.Delete(path);
        }
        else 
        {
            TextBox1.Text = "Neplatna e-mail adresa";
        }
      
    }
}