using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace VideoRentalStore.Models
{
    public class VideoRentalDbContextInitializer : DropCreateDatabaseIfModelChanges<VideoRentalDBContext>
    {


        //prop tab tab = create property

        protected override void Seed(VideoRentalDBContext context)
        {
            //---------------------------customer------------------------
            Customer tempCustomer = new Customer();

            tempCustomer.ID = 1;
            tempCustomer.FirstName = "Ali";
            tempCustomer.LastName = "RAAD";
            tempCustomer.Address = "IT";
            tempCustomer.phone = "5141234568";




            tempCustomer.ID = 2;
            tempCustomer.FirstName = "Alice";
            tempCustomer.LastName = "RAAtD";
            tempCustomer.Address = "Design";
            tempCustomer.phone = "5141234567";


            //--------------------------------------tempRentalRecords--------------------
            RentalRecords tempRentalRecords = new RentalRecords();

       
            tempRentalRecords.ID = 1;
            tempRentalRecords.rentalDate = DateTime.Now;


            tempRentalRecords.ID = 2;
            tempRentalRecords.rentalDate = DateTime.Now;



            //------------------------------------------------------------


            //  List----------------------RentalRecords>

            List<RentalRecords> RentalRecord = new List<RentalRecords> {

                    new RentalRecords {
                           ID =1,
                           rentalDate =DateTime.Now.AddDays(-14),
                                       },

                     new RentalRecords {
                           ID =2,
                           rentalDate =DateTime.Now.AddDays(-13),
                                       },

    };

            //  List-------------------Medias---


            List<Media> Medias = new List<Media> {

                    new Media {
                           ID =1,
                          title ="Beautiful Mind",
                           type=" movie"

                                       },

                     new Media {
                           ID =2,
                           title ="Ellen Show",
                           type="tv show"
                                       },


    };


            tempRentalRecords.Media = Medias;

            tempCustomer.RentalRecords = RentalRecord;
            // context.Customer.Add(tempCustomer);



            base.Seed(context);
        }
    }
}

