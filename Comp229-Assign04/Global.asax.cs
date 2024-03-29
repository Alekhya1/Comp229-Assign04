﻿using System;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Hosting;
using Comp229_Assign04.Models;
using System.Net.Mail;

namespace Comp229_Assign04
{
    public class Global : HttpApplication
    {
        public static IEnumerable<Model.class1> Models;
        private const string ModelsJsonPath = "~/Content/Assign04.json";
        private const string ModelsJsonPathNew = "~/Content/NewJson.json";
        private static object statusLabel;

        public static string NewModelsJson { get; private set; }
  
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            prepareModelCollection();
        }

        internal static void EmailJsonFile()
        {
            throw new NotImplementedException();
        }

        private void prepareModelCollection()
        {
            using (StreamReader streamReader = new StreamReader(System.Web.Hosting.HostingEnvironment.MapPath(ModelsJsonPath)))
            {
                var jsonstring = streamReader.ReadToEnd();
                Models = JsonConvert.DeserializeObject<List<Model.class1>>(jsonstring);
            }
        }
        public static void updateNewJsonFile() 
            {
            using (StreamWriter streamWriter = File.CreateText(System.Web.Hosting.HostingEnvironment.MapPath(ModelsJsonPathNew)))
            {
                streamWriter.WriteLine(JsonConvert.SerializeObject(Models));
            }
            }
        public static void EmailJsonFile(string clientEmailAddress, string clientName, string attachmentFileName)
        {
            SmtpClient smtpClient = new SmtpClient("smtp-mail.outlook.com", 587);
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;

            MailMessage message = new MailMessage();
            try
            {
                MailAddress fromAddress = new MailAddress("cc-comp229f2016@outlook.com", "Comp229-Assign04");
                MailAddress toAddress = new MailAddress(clientEmailAddress, clientName);
                message.From = fromAddress;
                message.To.Add(toAddress);
                message.Subject = "Comp229-Assign04 email";
                message.Body = "This is the body of a sample message";

                smtpClient.Host = "smtp-mail.outlook.com";
                smtpClient.EnableSsl = true;

                // SET UseDefaultCredentials to false BEFORE setting Credentials - we all have 'ugh' moments
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new System.Net.NetworkCredential("cc-comp229f2016@outlook.com", "comp229pwd");

                System.Net.Mime.ContentType contentType = new System.Net.Mime.ContentType();
                contentType.MediaType = System.Net.Mime.MediaTypeNames.Application.Octet;
                contentType.Name = attachmentFileName;
                message.Attachments.Add(new Attachment(System.Web.Hosting.HostingEnvironment.MapPath(NewModelsJson), contentType));

                smtpClient.Send(message);
                statusLabel = "Email sent.";
            }
            catch (Exception )
            {
                statusLabel = "Coudn't send the message!";
            }
        }
    } 
    }



        