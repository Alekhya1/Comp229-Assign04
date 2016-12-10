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

namespace Comp229_Assign04
{
    public class Global : HttpApplication
    {
        public static object Models { get; internal set; }

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
                Models = JsonConvert.DeserializeObject<List<Model>>(jsonstring);
            }
public static void updateNewJsonFile() 
        {
            using (StreamWriter streamWriter = new StreamWriter(jsonConvert.SerializeObject(Models))) ;
            {
                File.CreateText(System.Web.Hosting);
            }
        }
        public static EmailJson;
    }
    }

        