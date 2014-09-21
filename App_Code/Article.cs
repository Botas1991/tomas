using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;


public class Article
{
    private int id;
    private string tittle;
    private string paragraph;

#if DEBUG
    private string path = "C:\\Users\\Botas\\Desktop\\Projekty\\tomas\\DB.txt";
#else
    private string path = "d:\\home\\site\\wwwroot\\DB.txt";
#endif


    public Article(int id, string tittle, string paragraph)
    {
        this.id = id;
        this.tittle = tittle;
        this.paragraph = paragraph;

    }

    public Article()
    {
    }

    public string prop_tittle
    {
        get { return tittle; }
        set { tittle = value; }
    }
    public string prop_paragraph
    {
        get { return paragraph; }
        set { paragraph = value; }
    }
    public int prop_id
    {

        get { return id; }
        set { id = value; }

    }


    public int Read()
    {
        String[] division = new String[4];
        int help = 0;

        using (StreamReader sr = new StreamReader(path))
        {

            String line;
            while ((line = sr.ReadLine()) != null)
            {
                division = line.Split(';');
                help = int.Parse(division[0]);

            }
            sr.Close();
            return help;
        }

    }

    public void Write()
    {

        using (StreamWriter sw = new StreamWriter(path, true))
        {

            sw.WriteLine(prop_id + ";" + prop_tittle + ";" + prop_paragraph + ";");
            sw.Flush();


        }

    }

    public void Delete(string hodnota_textboxu)
    {
        List<string> myList = new List<string>();
        String[] division = new String[3];

        using (StreamReader sr = new StreamReader(path))
        {

            String line;
            while ((line = sr.ReadLine()) != null)
            {

                division = line.Split(';');

                if (division[0] != hodnota_textboxu)
                {
                    myList.Add(line);

                }

            } //end while
            sr.Close();
        }//end using

        using (StreamWriter sw = new StreamWriter(path))
        {

            foreach (String i in myList)
            {
                sw.WriteLine(i);

            }
        }

    }

    public void Update()
    {

        List<string> myList = new List<string>();
        String[] division = new String[3];

        using (StreamReader sr = new StreamReader(path))
        {

            String line;
            while ((line = sr.ReadLine()) != null)
            {

                division = line.Split(';');

                if (division[0] != prop_id.ToString())
                {

                    myList.Add(line);

                }
                else
                {

                    line = prop_id + ";" + prop_tittle + ";" + prop_paragraph + ";";
                    myList.Add(line);

                }

            } //end while
            sr.Close();
        }//end using

        using (StreamWriter sw = new StreamWriter(path))
        {

            foreach (String i in myList)
            {
                sw.WriteLine(i);

            }
        }

    }


    public string[] Select()
    {
        String[] division = new String[3];
        string[] myList = new string[10];
        using (StreamReader sr = new StreamReader(path))
        {
            int i = 0;
            String line;
            while ((line = sr.ReadLine()) != null)
            {

                myList[i] = line;
                i++;
            }
        }

        return myList;
    }


}