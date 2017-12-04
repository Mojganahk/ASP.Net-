using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace VideoRentalStore.Models
{
    public class VideoRentalDBContext : DbContext
    {
       
            public DbSet<RentalRecords> RentalRecords { get; set; }
            public DbSet<Media> Media { get; set; }
        


    }
}