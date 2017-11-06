using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class OrderEventArgs : EventArgs
    {
        public string OrderDetails { private set; get; }

        public OrderEventArgs(string orderDetails) 
        {
            OrderDetails = orderDetails;
        }
    }
}