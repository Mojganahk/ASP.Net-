using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Exam1.Models
{
    public class examRepository
    {


        //public class TimeTrackerRepository
    
        examDbContext _context = new examDbContext();

    
            




        public Customer GetCustomer(int cusID)
        {

            Customer myCus =

                (from data in _context.customer
                 where data.ID == cusID
                 select data).SingleOrDefault();

            return myCus;

        }


        


    }
}