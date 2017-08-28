using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace SQLite_template01
{
    class Employee : INotifyPropertyChanged
    {
        private string _name;
        private string _surname;
        private string _email;
        private string _phone;
        
        [Key]
        public int Id { get; set; }
        
        [Required, MinLength(3), MaxLength(20)]
        public string Name { get { return _name; }  set { _name = value; OnPropertyChanged("name"); } }

        [Required, MinLength(3), MaxLength(20)]
        public string Surname { get { return _surname; } set { _surname = value; OnPropertyChanged("surname"); } }

        [MinLength(3), MaxLength(30)]
        public string Email { get { return _email; } set { _email = value; OnPropertyChanged("email"); } }

        [MinLength(3), MaxLength(30)]
        public string Phone { get { return _phone; } set { _phone = value; OnPropertyChanged("phone"); } }

        public event PropertyChangedEventHandler PropertyChanged;
        public void OnPropertyChanged([CallerMemberName]string prop = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(prop));
        }
    }
}
