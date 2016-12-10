using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class ModelPage : Page
    {
        private object faction;
        private object _Model;
        private object wounds;
        private object repeatActions;
        private object repeatSpecialAbilities;
        private object resilianceValue;
        private object willpower;
        private object mobility;
        private object repeatDefenseChart;
        private object repeatTypes;
        private object repeatTraits;
        private object deploymentzone;
        private object rank;
        private object _base;
        private object size;

        public object name { get; private set; }
        public object LblWoundsValue { get; private set; }
        public object ImgGame { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            UpdateModel.NavigateUrl = String.Format("~/UpdatePage.aspx?");
            var name = Request.QueryString["name"];
            var faction = Request.QueryString["faction"];

            if (string.IsNullOrEmpty(name))
            {
                Response.Redirect("~/HomePage.aspx");
                return;
            }
            _Model = Global.Models.First(tModel => tModel.name == name && tModel.faction == faction);
            SetBindings();
        }

        private void SetBindings()
        {
           
            name.Text = _Model.name;
            faction.Text = _Model.faction;
            rank.Text = _Model.rank.ToString();
            _base.Text = _Model._base + "mm";
            size.Text = _Model.size.ToString();
            deploymentzone.Text = _Model.deploymentZone.ToString();

            repeatTraits.DataSource = _Model.traits;
            repeatTraits.DataBind();

            repeatTypes.DataSource = _Model.types;
            repeatTypes.DataBind();

            repeatDefenseChart.DataSource = _Model.defenseChart;
            repeatDefenseChart.DataBind();

            mobility.Text = _Model.mobility.ToString();
           willpower.Text = _Model.willpower.ToString();
            resilianceValue.Text = _Model.resiliance.ToString();
            wounds.Text = _Model.wounds.ToString();

            repeatActions.DataSource = _Model.Actions;
            repeatActions.DataBind();

            repeatSpecialAbilities.DataSource = _Model.specialAbilities;
            repeatSpecialAbilities.DataBind();

            
        }
    }
}