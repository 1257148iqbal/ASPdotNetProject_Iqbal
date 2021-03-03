using ASPdotNetProject_Iqbal.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPdotNetProject_Iqbal.BL
{
    public class StudentsReg
    {
        private string _Name ;
        private string _Email;
        private string _Gender;
        private string _DOB;


        public string Name { get => _Name; set => _Name = value; }
        public string Email { get => _Email; set => _Email = value; }
        public string Gender { get => _Gender; set => _Gender = value; }
        public string DOB { get => _DOB; set => _DOB = value; }

        public bool Save()
        {
            try
            {
                Trainee trainee = new Trainee();
                trainee.RegisterData(Name, Email, _Gender, _DOB);
                return true;
            }
            catch (Exception ex)
            {
                throw new Exception("Not Executed");
            }
        }
    }
}