using separation.classes;

namespace separation;

class Program
{
    static void Main()
    {
        // JE RECUPERE LA CLASSE EMPLOYEE DANS LE FICHIER QUI CE TROUVE DANS 
        // LE DOSSIER CLASSES 
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

        // JE RECUPERE LA CLASSE COLOR DANS LE FICHIER QUI CE TROUVE DANS 
        // LE DOSSIER CLASSES 
        Color color1 = new("blue");
        Console.WriteLine("mon objet est de couleur {0} ", color1.ColorName);
    }
}





