using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace timetracker.Models
{
    public class TimeTrackerDbContextInitializer : DropCreateDatabaseIfModelChanges<TimeTrackerDbContext>
    {
        //prop tab tab = create property

        protected override void Seed(TimeTrackerDbContext context)
        {
            Employee tempEmployee = new Employee();

            tempEmployee.ID = 1;
            tempEmployee.FirstName = "Ali";
            tempEmployee.LastName = "RAAD";
            tempEmployee.Department = "IT";
            tempEmployee.HireDate = DateTime.Now.AddDays(-14);




            tempEmployee.ID = 2;
            tempEmployee.FirstName = "Alex";
            tempEmployee.LastName = "Radin";
            tempEmployee.Department = "Finance";
            tempEmployee.HireDate = DateTime.Now.AddDays(-14);


            List<TimeCard> timeCards = new List<TimeCard> {



                    new TimeCard {
                         ID =1, submissionDate = DateTime.Now,
                           MondayHours = 8,
          TuesdayHours =9,
          WednesdayHours =5,
          ThursdayHours =8,
          FridayHours =9,
          SaturdayHours =0,
          SundayHours =0 },


                    new TimeCard {
                         ID =2, submissionDate = DateTime.Now,
                           MondayHours = 8,
          TuesdayHours =9,
          WednesdayHours =5,
          ThursdayHours =8,
          FridayHours =9,
          SaturdayHours =0,
          SundayHours =0 },

    };


            tempEmployee.timeCards = timeCards;
            context.Employees.Add(tempEmployee);

                
            
            base.Seed(context);
        }
    }
}