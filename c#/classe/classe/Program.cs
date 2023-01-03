namespace mesclasses; 

class Program
{
    /*  une methode : une visibilité, un type de retour, un nom, des parametres */
    static void Main()
    {
        Console.WriteLine(" multiplication de 2 * 3 :{0}", Multiplyby3(2));
        Console.WriteLine(" multiplication de 20 * 3 :{0}", Multiplyby3(20));
        Console.WriteLine(AddMark("il fait beau","!!"));

    }

    static string AddMark(string sentence, string mark)
    {
        return sentence +' '+ mark;
    }

    static int Multiplyby3(int value)
    {
         return value * 3;
    }
}



