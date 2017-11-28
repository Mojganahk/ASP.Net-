using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace timetracker.Models
{
    public class Employee
    {
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Department { get; set; }

        public List<TimeCard> timeCards { get; set; }
    }
}