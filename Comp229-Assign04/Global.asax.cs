using System;
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

namespace Comp229_Assign04
{
    public class Global : HttpApplication
    {
        public static IEnumerable<Model.class1> Models;
        private const string ModelsJsonPath = "~/Content/Assign04.json";
        private const string ModelsJsonPathNew = "~/Content/NewJson.json";

        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            prepareModelCollection();
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
            
        } 
    }

}

        