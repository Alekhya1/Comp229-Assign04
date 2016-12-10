using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity.Migrations.Model;
using System.IO;

namespace Comp229_Assign04
{
    public partial class HomePage : Page
    {
                protected void Page_Load(object sender, EventArgs e)
        {

            GameRepeater.DataSource = Global.Models;
            GameRepeater.DataBind();
           
           

            
        }
       
            public string name { get; set; }
            public string faction { get; set; }
            public int rank { get; set; }
            public int _base { get; set; }
            public int size { get; set; }
            public string deploymentZone { get; set; }
            public string[] traits { get; set; }
            public string[] types { get; set; }
            public string[] defenseChart { get; set; }
            public int mobility { get; set; }
            public int willpower { get; set; }
            public int resiliance { get; set; }
            public int wounds { get; set; }
            public Action[] actions { get; set; }
            public Specialability[] specialAbilities { get; set; }
            public string imageUrl { get; set; }
        public object Gamelink { get; private set; }
    }

        public class Action
        {
            public string name { get; set; }
            public string type { get; set; }
            public int rating { get; set; }
            public string range { get; set; }
            public string description { get; set; }
        }

        public class Specialability
        {
            public string name { get; set; }
            public string description { get; set; }
        }

    }

