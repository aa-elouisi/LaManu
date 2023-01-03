var tab;
var full;
var mens;
var girls;

full = document.querySelector("#full");
mens = document.querySelector("#mens");
girls = document.querySelector("#girls");
tab = [
    {sexe: 'Fille', prénom: 'Jade'},
    {sexe: 'Fille', prénom: 'Louise'},
    {sexe: 'Fille', prénom: 'Emma'},
    {sexe: 'Fille', prénom: 'Alice'},
    {sexe: 'Fille', prénom: 'Ambre'},
    {sexe: 'Fille', prénom: 'Lina'},
    {sexe: 'Fille', prénom: 'Rose'},
    {sexe: 'Fille', prénom: 'Chloé'},
    {sexe: 'Fille', prénom: 'Mia'},
    {sexe: 'Fille', prénom: 'Léa'},
    {sexe: 'Garçon', prénom: 'Léo'},
    {sexe: 'Garçon', prénom: 'Gabriel'},
    {sexe: 'Garçon', prénom: 'Raphaël'},
    {sexe: 'Garçon', prénom: 'Arthur'},
    {sexe: 'Garçon', prénom: 'Louis'},
    {sexe: 'Garçon', prénom: 'Jules'},
    {sexe: 'Garçon', prénom: 'Adam'},
    {sexe: 'Garçon', prénom: 'Maël'},
    {sexe: 'Garçon', prénom: 'Lucas'},
    {sexe: 'Garçon', prénom: 'Hugo'}];

full.onclick = function fulltab()
{
    for (let i = 0; i < tab.length; i++)
    {
        if (tab[i].sexe == 'Fille') 
            document.write(tab[i].prénom.fontcolor("pink") + '\n');
        else
            document.write(tab[i].prénom.fontcolor("blue") + '\n');
    }  
}
mens.onclick = function mentab()
{
    for (let i = 0; i < tab.length; i++)
        if (tab[i].sexe == 'Garçon') 
            document.write(tab[i].prénom.fontcolor("blue") + '\n');
}
girls.onclick = function girltab()
{
    for (let i = 0; i < tab.length; i++)
        if (tab[i].sexe == 'Fille') 
            document.write(tab[i].prénom.fontcolor("pink") + '\n');
}