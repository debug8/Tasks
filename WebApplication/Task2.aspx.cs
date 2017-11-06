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
        protected override void OnPreInit(EventArgs e)
        {
            OrderControl.SubmitButtonClick += OnSubmit;

            OrderControl.PredefinedOrderDetails.Add("position 1");
            OrderControl.PredefinedOrderDetails.Add("position 2");
            OrderControl.PredefinedOrderDetails.Add("position 4");
            OrderControl.PredefinedOrderDetails.Add("position 8");
            OrderControl.PredefinedOrderDetails.Add("position 16");
            OrderControl.PredefinedOrderDetails.Add("position 44");

            base.OnPreInit(e);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        private void OnSubmit(object sender, OrderEventArgs e) 
        {
            var orderDetails = e.OrderDetails;
        }
    }
}