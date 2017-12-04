using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Exam1.Models
{
    public class Customer
    {


            public int customerId { get; set; }
            public string contactname { get; set; }
            public string address { get; set; }
            public string phone { get; set; }
          
            public List<Customer> customer { get; set; }
       
    }
}