//EXERCICE 1
/*var welcome = "bienvenue";
alert(welcome);*/

//EXERCICE 2
/*var name = "entrez votre prénom";
alert("Bonjour " + prompt(name));*/

//EXERCICE 3
/*function getValue()
{
    var age = document.getElementById("age").value;
    if(age < 18){
        document.write("Vous êtes mineur");
    }
    else
        document.write("Vous êtes majeur");
}*/

//EXERCICE 4
/*function getValue()
{
    var nb1 = document.getElementById("nb1").value;
    var nb2 = document.getElementById("nb2").value;
    document.write(parseInt(nb1) * nb2);
}*/

//EXERCICE 5
function getValue()
{
    var nb = 16;
    var nbFind = document.getElementById("nbFind").value;
    if (nbFind < nb)
        alert("mon nombre est plus grand");
    else if (nbFind > nb)
        alert("mon nombre est plus petit");
    else
    {
        alert("félicitation, c'est le bon nombre !");
        document.write("BRAVO !");
    }
}