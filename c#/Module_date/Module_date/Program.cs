// EXERCICE 6 :
/*Console.WriteLine("entre un mois");
string? mois = Console.ReadLine();
int saison = (mois == "janvier") ? 1 :
    (mois == "février") ? 2 :
    (mois == "mars") ? 3 :
    (mois == "avril") ? 4 :
    (mois == "mai") ? 5 :
    (mois == "juin") ? 6 :
    (mois == "juillet") ? 7 :
    (mois == "aout") ? 8 :
    (mois == "septembre") ? 9 :
    (mois == "octobre") ? 10 :
    (mois == "novembre") ? 11 :
    (mois == "décembre") ? 12 :
        Convert.ToInt32(mois);

string str = (saison >= 3 && saison <= 5) ? "le PRINTEMPS" :
    (saison >= 6 && saison <= 8) ? "l'ÉTÉ" :
    (saison >= 9 && saison <= 11) ? "l'AUTOMNE" :
    "l'HIVER";
Console.WriteLine("La saison du mois saisi est " + str + ".");*/

/*//EXERCICE 7 :

Console.WriteLine("entre ton age");
string? value = Console.ReadLine();
int age = Convert.ToInt32(value);
string str = (age < 18) ? "mineur" : "majeur";
Console.WriteLine("vous avez " + age + " ans, vous êtes donc " + str + ".");*///bratislava

Console.WriteLine("entre un mois");
string? mois = Console.ReadLine();
switch (mois)
{
    case "janvier":
    case "février":
    case "décembre":
        Console.WriteLine("la saison du mois saisie est l'HIVER");
    break;
    case "avril":
        Console.WriteLine("la saison du mois saisie est le PRINTEMPS");
    break;
    default:
        Console.WriteLine("saisie n'existe pas");
    break;
}

/*//exercice 2

int i = 0;
while (i <= 10)
    Console.WriteLine("bonjour, je suis le message n°" + i++);*/

//exercice 3

/*int i = 0;
string str = "bien joué"; 
do
{
    Console.WriteLine("capitale de la Slovaquie?");
    i++; 
} while (Console.ReadLine() != "Bratislava");
if (i >= 3 && i <= 7)
    Console.ForegroundColor = ConsoleColor.Yellow;
else if (i > 7 && i < 10 )
    Console.ForegroundColor = ConsoleColor.Red;
else if (i == 10)
{
    Console.ForegroundColor = ConsoleColor.Red;
    //str = str.ToUpper();
    str = "PLUS DE TENTATIVES, DOMMAGE";
}
    Console.WriteLine(str);*/