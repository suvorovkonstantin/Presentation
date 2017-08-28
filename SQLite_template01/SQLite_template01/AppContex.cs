using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SQLite_template01
{
    class AppContex : DbContext
    {
        public AppContex() : base("SQLite_DefaultConnection")
        { }
        public DbSet<Employee> Emlpoyees { get; set;}
    }
}
