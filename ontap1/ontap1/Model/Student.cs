using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ontap1.Model
{
    public class Student
    {
        private long id;
        private string name;
        private int age;
        private string address;

        public Student()
        {
        }

        public Student(long id, string name, int age, string address)
        {
            this.id = id;
            this.name = name;
            this.age = age;
            this.address = address;
        }

        public long Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public int Age { get => age; set => age = value; }
        public string Address { get => address; set => address = value; }
    }
}