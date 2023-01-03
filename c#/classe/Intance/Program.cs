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

        Employee Employee3 = new Employee();
        Employee3.Name = "Han";
        Employee3.FirstName = "Jhon";
        

    }
}


/* ici j'ai ma classe qui représente un employé */

class Employee
{

    public static int nbEmployee = 0;
    /*
        Name :
            set -> object.Name = "jkjkjkj";
            get -> object.Name;
     */
    public string Name { get; set; }

    public string FirstName { get; set; }

    public void Describ()
    {
        Console.WriteLine("l'employé s'appelle : {0} {1}", Name, FirstName);
        nbEmployee++;
        Console.WriteLine("il y a maintenant {0} employés", nbEmployee);
    }

}



