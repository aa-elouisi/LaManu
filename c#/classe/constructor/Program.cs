namespace mesclasses;

class Program
{
    static void Main()
    {
        // ici je crée un employé qui sera représenté par un object 
        Employee Employee1 = new();
        Employee1.Name = "Durand";
        Employee1.FirstName = "Denis";
        Employee1.Describ();

        Employee Employee2 = new Employee();
        Employee2.Name = "Hanna";
        Employee2.FirstName = "Jade";
        Employee2.Describ();

        Employee Employee3 = new();
        Employee3.Name = "Han";
        Employee3.FirstName = "Jhon";

        Color color1 = new("blue");
        Console.WriteLine("mon objet est de couleur {0} ",color1.ColorName);
    }
}


/* ici j'ai ma classe qui représente un employé */

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


class Color
{
    public string ? ColorName { get; set; }
    public Color(string color)
    {
        ColorName = color;
    }
}


