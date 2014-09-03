using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;
using System.Net;

public class SendEmail
{
    private string to;
    private string from;
    private string body;
    private string subject;

    public SendEmail()
    { }

    public string prop_to
    {
        get { return to; }
        set { to = value; }
    }

    public string prop_from
    {
    get{return from;}
    set{from = value;}
    }

    public string prop_body
    {
        get { return body; }
        set { body = value + "\n" + prop_from; }
    }

    public string prop_subject
    {
        get { return subject; }
        set { subject = value; }
    }


    public void Send()
    {

        var fromAddress = new MailAddress("tomas.hqtesting@gmail.com", "Server Service Mail");
        var toAddress = new MailAddress("TBotor@seznam.cz", "To Name");
        const string fromPassword = "tomashqtesting";

        var smtp = new SmtpClient
        {
            Host = "smtp.gmail.com",
            Port = 587,
            EnableSsl = true,
            DeliveryMethod = SmtpDeliveryMethod.Network,
            Credentials = new NetworkCredential(fromAddress.Address, fromPassword),
            Timeout = 20000
        };
        using (var message = new MailMessage(fromAddress, toAddress)
        {
            Subject = prop_subject,
            Body = prop_body 
        })
        {
            smtp.Send(message);
        }

        string kopie = "Kopie zprávy, kterou jsem zaslal na server http://tomas.hqtesting.cz/   \n \n";
         toAddress = new MailAddress(prop_to);      
        using (var message = new MailMessage(fromAddress, toAddress)
        {
            Subject = prop_subject,
            Body = kopie + prop_body
        })
        {
            smtp.Send(message);
        }


    }

}
