using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Post : System.Web.UI.Page
{


    protected void Button1_Click(object sender, EventArgs e)
    {
        //Insert
        Article a = new Article();
        int id = a.Read() + 1;
        a.prop_id = id;
        a.prop_tittle = TextBox1.Text;
        a.prop_paragraph = TextBox2.Text; 
        a.Write();
        Button2_Click(sender, e);
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        //Select

        ListBox1.Items.Clear();
        string[] pole = new string[50];
        Article a = new Article();
        pole = a.Select();
        for (int i = 0; i < pole.Length; i++)
        {

            ListBox1.Items.Add(pole[i]);
        }
       
    
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        //update
        Article a = new Article(Convert.ToInt32(TextBox3.Text), TextBox4.Text, TextBox5.Text);
        a.Update();
        Button2_Click(sender,e);
        TextBox5.Text = "";
        TextBox4.Text = "";
        TextBox3.Text = "";
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        //delete
        
        Article a = new Article();
        a.Delete(TextBox6.Text);
        Button2_Click(sender, e);
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";

    }



    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        int help;
        string title, article;
        String[] division = new String[4];
        string textbox6txt="";
        ListBox l = sender as ListBox;
        if (l.SelectedIndex != -1)
        {
            textbox6txt = ListBox1.SelectedItem.ToString();
            division = textbox6txt.Split(';');
            help = int.Parse(division[0]);
            title = division[1];
            article = division[2];

            TextBox6.Text = help.ToString();
            TextBox3.Text = help.ToString();
            TextBox4.Text = title;
            TextBox5.Text = article;
        }
       
    }



}