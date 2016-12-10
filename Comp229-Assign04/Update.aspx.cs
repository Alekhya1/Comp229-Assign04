using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Comp229_Assign04.Models;

namespace Comp229_Assign04
{
    public partial class Update : Page
    {
        private Model.class1 _Model;
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Request.QueryString["name"];

            if (name.Equals(" "))
            {
                Response.Redirect("~/HomePage.aspx");

            }
            _Model = Global.Models.First(tModel => tModel.name == name);
            Gamename.Text = _Model.name;
            faction.Text = _Model.faction;
        }

        protected void update_Click(object sender, EventArgs e)
        {
            _Model.name = Gamename.Text;
            _Model.faction = Gamename.Text;
            Global.updateNewJsonFile();

            Response.Redirect("~/HomePage.aspx");
        }
    }
}