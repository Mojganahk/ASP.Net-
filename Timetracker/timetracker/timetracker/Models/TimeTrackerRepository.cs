using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace timetracker.Models
{
    public class TimeTrackerRepository
    {
        TimeTrackerDbContext _context = new TimeTrackerDbContext();

        //eemployeee
        public List<Employee> getAllEmployees() {

            List<Employee> allEmps =

                ( from data in _context.Employees
                  orderby data.LastName
                  select data )
                  .ToList();

            return allEmps;

        }




        public List<TimeCard> getemployeeTimeCard(int empID)
        {

            List<TimeCard> myTimeCards =

                (from data in _context.Employees
                 where data.ID == empID
                 select data.timeCards).SingleOrDefault();
                 
                 

            return myTimeCards;

        }


        public List<string> getDepartment(int empID)
        {

            List<string> myDepartment =

                (from data in _context.Employees
                 select data.Department).Distinct().ToList();
                


            return myDepartment;

        }




        public List<Employee> getAllEmployeesDepartment(string department)
        {

            List<Employee> allEmps =

                (from data in _context.Employees
                 where data.Department == department
                 select data).ToList();

            return allEmps;

        }

        public Employee GetEmployee(int empID)
        {

            Employee myEmp =

                (from data in _context.Employees
                 where data.ID == empID
                 select data).SingleOrDefault();

            return myEmp;

        }






        public void  insertEmployee(int ID, string FirstName, string LastName, string department, DateTime hireDate)
        {

            Employee e = new Employee();

            e.ID = ID;
            e.FirstName = FirstName;
            e.LastName = LastName;
            e.Department = department;
            e.HireDate = hireDate;

            _context.Employees.Add(e);
            _context.SaveChanges();


        }
    }
}