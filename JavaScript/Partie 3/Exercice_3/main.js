var green;
var red;
var blue;
var text;

green = document.getElementById("green");
red = document.getElementById("red");
blue = document.getElementById("blue");
text = document.getElementById("text");

green.addEventListener("click", displayGreen);
red.addEventListener("click", displayRed);
blue.addEventListener("click", displayBlue);

function displayGreen()
{
    console.log("greentouched")
    text.style.color = "green";
}
function displayRed()
{
    text.style.color = "red";
}
function displayBlue()
{
    text.style.color = "blue";
}