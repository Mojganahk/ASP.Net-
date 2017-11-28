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
        public List<Employee> getAllEmployees() {

            List<Employee> allEmps =

                ( from data in _context.Employees
                  orderby data.LastName
                  select data )
                  .ToList();

            return allEmps;

        }
    }
}