using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace separation.classes;

class Employee
{

    public static int NbEmployee = 0;

    public string? Name { get; set; }

    public string? FirstName { get; set; }

    public Employee()
    {
        Console.WriteLine(" un object vient d'être crée");
        NbEmployee++;
        Console.WriteLine("il y a maintenant {0} employés", NbEmployee);
    }

    public void Describ()
    {
        Console.WriteLine("l'employé s'appelle : {0} {1}", Name, FirstName);
    }

}
