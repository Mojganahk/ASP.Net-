using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VideoRentalStore.Models
{
    public class Media
    {

        public int ID { get; set; }
        public string title { get; set; }
        public string type { get; set; }
        public DateTime productionDate { get; set; }

     
    }
}