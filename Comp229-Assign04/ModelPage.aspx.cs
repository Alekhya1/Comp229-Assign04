using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Comp229_Assign04.Models;

namespace Comp229_Assign04
{
    public partial class ModelPage : Page
    {
       private  Model.class1 _Model;      
        
        protected void Page_Load(object sender, EventArgs e)
        {
           string name= Request.QueryString["ID"];

            if (name.Equals(" "))
            {
                Response.Redirect("~/HomePage.aspx");
               
            }
            _Model = Global.Models.First(tModel => tModel.name == name);
            SetBindings();
          
        }

        private void SetBindings()
        {
            image.ImageUrl = _Model.imageUrl;
            faction.Text = _Model.faction;
            gamename.Text = _Model.name;
            faction.Text = _Model.faction;
            rank.Text = _Model.rank.ToString();
            base1.Text = _Model._base + "mm";
            size.Text = _Model.size.ToString();
            deploymentZone.Text = _Model.deploymentZone.ToString();

            traits.DataSource = _Model.traits;
            traits.DataBind();

            types.DataSource = _Model.types;
            types.DataBind();

            defenseChart.DataSource = _Model.defenseChart;
            defenseChart.DataBind();

            mobility.Text = _Model.mobility.ToString();
           willpower.Text = _Model.willpower.ToString();
            resiliance.Text = _Model.resiliance.ToString();
            wounds.Text = _Model.wounds.ToString();

            actions.DataSource = _Model.actions;
            actions.DataBind();

            specialAbilities.DataSource = _Model.specialAbilities;
            specialAbilities.DataBind();

            
        }

        protected void update_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Update.aspx?name=" + gamename.Text);
        }
    }
}