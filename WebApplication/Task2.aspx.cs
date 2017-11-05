using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SelectModeList_SelectedIndexChanged(object sender, EventArgs e)
        {
            var list = sender as ListControl;
            if (SelectModeList.SelectedItem.Text == "predefined")
            {
                SubmitButton.Visible = true;
                PredefinedPositionList.Visible = true;
                CustomPositionText.Visible = false;
            }
            if (SelectModeList.SelectedItem.Text == "custom")
            {
                SubmitButton.Visible = true;
                CustomPositionText.Visible = true;
                PredefinedPositionList.Visible = false;
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            var orderDetails = string.Empty;

            if (SelectModeList.SelectedItem.Text == "predefined")
            {
                orderDetails = PredefinedPositionList.SelectedItem.Text;
            }
            if (SelectModeList.SelectedItem.Text == "custom")
            {
                orderDetails = CustomPositionText.Text;
            }
            SubmitButton.Visible = false;
            PredefinedPositionList.Visible = false;
            CustomPositionText.Visible = false;
            SelectModeList.SelectedIndex = 0;
        }
    }
}