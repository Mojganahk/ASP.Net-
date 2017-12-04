using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VideoRentalStore.Models
{
    public class RentalRecords
    {


        public int ID { get; set; }
        public DateTime rentalDate { get; set; }

        public List<Media> Media { get; set; }
    }
}