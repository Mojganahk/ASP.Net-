using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace VideoRentalStore.Models
{
    public class VideoRentalRepository
    {


        //getllCustomers( )
        //getCustomerbyID(…)
        //updateCustomer(…)
        // getMediabyTitle(…)
        //addRentalRecord(…)
        //addNewCustomer( …)
        //addNewMedia( …)


        VideoRentalDBContext _context = new VideoRentalDBContext();


        //getllCustomers( )
        public List<Customer> getllCustomers()
        {

            List<Customer> allCus =

                (from data in _context.Customers
                 orderby data.LastName
                 select data)
                  .ToList();

            return allCus;

        }




        public List<RentalRecords> getCustomerbyID(int CustID)
        {

            List<RentalRecords> RentalRecords =

                (from data in _context.Customers
                 where data.ID == CustID
                 select data.timeCards).SingleOrDefault();



            return RentalRecords;

        }





        //updateCustomer(…)
        public void updateCustomer(int ID, string FirstName, string LastName, string Address, string phone)
        {

            Customer c = new Customer();

            c.ID = ID;
            c.FirstName = FirstName;
            c.LastName = LastName;
            c.Address = Address;
            c.phone = phone;

            
        _context.Customers.Add(e);
            _context.SaveChanges();


        }


        // getMediabyTitle(…)

    }
}


