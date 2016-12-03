using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Net.Mail;
using System.Windows;
using System.Net;

namespace WorkBetter.CommonFunctions
{
    public static class MrPostMan
    {
        public static bool SendMail(string _Subject, string Content, string DestinationEmail)
        {
            try
            {
                var fromAddress = new MailAddress("avnteamwork@gmail.com", "Kiem toan Avn");
                var toAddress = new MailAddress(DestinationEmail);
                const string fromPassword = "ahklhn39";

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
                    Subject = _Subject,
                    Body = Content
                })
                {
                    smtp.Send(message);
                    smtp.Dispose();
                    return true;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
                return false;
            }
        }
    }
}
