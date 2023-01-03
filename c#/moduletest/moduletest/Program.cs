/*Console.WriteLine("entre ta couleur préféré");
string? Couleur = Console.ReadLine();
if (Couleur == "bleu")
{
    Console.ForegroundColor = ConsoleColor.Blue;
    Console.WriteLine("tout comme moi");
}
else if (Couleur == "rouge")
{
    Console.ForegroundColor = ConsoleColor.Red;
    Console.WriteLine("tu est sanguin");
}
else
{
    Console.ForegroundColor = ConsoleColor.Yellow;
    Console.WriteLine("tu est ininteréssant");
}*/

/*int i = 4;
int j = 11;
int k = 10;
Console.WriteLine("le résultat est " + k * (j + i));*/

/*Console.WriteLine("entre ton nom et ton prénom");
string? Nom = Console.ReadLine();
string? Prenom = Console.ReadLine();
DateTime Ajd = DateTime.Today;
Console.WriteLine("Bonjour, " + Nom + " " + Prenom + " nous sommes " + Ajd + " , comment allez-vous ?");*/

Console.WriteLine("entre ton nom, prénom et ton année de naissance");
string? Nom = Console.ReadLine();
string? Prenom = Console.ReadLine();
int Date = Convert.ToInt32(Console.ReadLine());

Console.WriteLine("Fiche de renseignement :");
Console.WriteLine("Nom : " + Nom);
Console.WriteLine("Prénom : " + Prenom);
Console.WriteLine("Age : " + (2022 - Date));