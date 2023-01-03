var img = document.getElementById("image1");
img.addEventListener("mouseover", addBorder);
img.addEventListener("mouseleave", deletBorder);

function addBorder()
{
    img.style.border = "3px solid red"
}
function deletBorder()
{
    img.style.border = "0px";
}