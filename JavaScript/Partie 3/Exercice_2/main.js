var afficher = document.getElementById("afficher");
var masquer = document.getElementById("masquer");
var text = document.getElementById("text");
afficher.addEventListener("click", displayOn);
masquer.addEventListener("click", displayOff);

function displayOn()
{
   text.style.visibility = "visible";
}
function displayOff()
{
    text.style.visibility = "hidden";
}