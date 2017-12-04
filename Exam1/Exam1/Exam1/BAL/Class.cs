using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Exam1.BAL
{
    public class Class
    {
        public Customer GetCustomer(string customerID)
        {
            using (var _context = new examDbContext())
            {
                Customer customer = (from data in _context.Customers
                                     where data.CustomerID == customerID
                                     select data).SingleOrDefault();
                return customer;
            }
        }
    }

   

    public class Customer
    {
    }
}