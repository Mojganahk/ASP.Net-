using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace Exam1.Models
{
    public class examDbContext
    {

            public DbSet <Customer> customer { get; set; }
         
        
    }
}