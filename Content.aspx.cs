using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content : System.Web.UI.Page
{


    protected void Button1_Click(object sender, EventArgs e)
    {
        Article a = new Article();
        int id = a.Read() + 1;
        a.prop_id = id;
        a.prop_tittle = TextBox1.Text;
        a.prop_paragraph = TextBox2.Text; 
        a.Write();
        Button2_Click(sender, e);
        TextBox1.Text = "";
        TextBox2.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        ListBox1.Items.Clear();
        string[] pole = new string[50];
        Article a = new Article();
        pole = a.Select();
        for (int i = 0; i < pole.Length; i++)
        {

            ListBox1.Items.Add(pole[i]);
        }
        //  ListBox1.Items.Add();
    
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        Article a = new Article(Convert.ToInt32(TextBox3.Text), TextBox4.Text, TextBox5.Text);
        a.Update();
        Button2_Click(sender,e);
        TextBox5.Text = "";
        TextBox4.Text = "";
        TextBox3.Text = "";
    }

    protected void Button4_Click(object sender, EventArgs e)
    {

        Article a = new Article();
        a.Delete(TextBox6.Text);
        Button2_Click(sender, e);
        TextBox6.Text = "";
    }

}