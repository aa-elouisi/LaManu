function getValue()
{
    var text = document.querySelector("#text").value;
    var occurence;
    let i;
    let j;
    let result;

    i = 0;
    j = 1;
    result = 0;
    while (i < text.length)
    {
        if (text[i] == ' ')
            j++;
        i++;
    }
    alert("nombre de caractere : " + i + "\nnombre de mots : " + j);
    occurence = prompt("nombre d'occurence du mot :");
    i = 0;
    j = 0;
    while (i < text.length)
    {
        while (text[i++] == occurence[j++])
        {
            if (!occurence[j + 1])
                result++;
        }
        j = 0;
        i++;
    }
    alert("le mot \"" + occurence + "\" est présent " + k + " fois.");
}