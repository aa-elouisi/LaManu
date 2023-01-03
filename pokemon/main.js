

/*var myAudio = document.createElement("audio");
myAudio.src = "./song.mp3";
myAudio.play();*/

/*var obstacles = [
    {
        width : 80,
        height : 290,
        posX : 0,
        posY : 0
    },
    {
        width : 50,
        height : 250,
        posX : 290,
        posY : -80
    },
    {
        width : 80,
        height : 280,
        posX : 540,
        posY : -130
    },
    {
        width : 50,
        height : 150,
        posX : 790,
        posY : -210
    },
    {
        width : 305,
        height : 280,
        posX : 980,
        posY : -255
    },
    {
        width : 130,
        height : 170,
        posX : 1230,
        posY : -530
    },
    {
        width : 50,
        height : 250,
        posX : 1405,
        posY : -610
    },
    {
        width : 110,
        height : 250,
        posX : 1630,
        posY : -660
    },
    {
        width : 160,
        height : 300,
        posX : 1620,
        posY : 0
    },
    {
        width : 65,
        height : 145,
        posX : 1920,
        posY : -160
    },
    {
        width : 210,
        height : 110,
        posX : 1880,
        posY : -160
    },
    {
        width : 100,
        height : 165,
        posX : 2185,
        posY : -270
    },
    {
        width : 8,
        height : 195,
        posX : 2355,
        posY : -415
    },
    {
        width : 80,
        height : 75,
        posX : 2530,
        posY : -355
    },
    {
        width : 350,
        height : 75,
        posX : 2400,
        posY : -420
    },
    {
        width : 140,
        height : 200,
        posX : 2680,
        posY : -625
    },
    {
        width : 80,
        height : 195,
        posX : 2915,
        posY : -545
    },
]*/

/*function displayObstacles(){
    for (let i = 0; i < obstacles.length; i++)
    {
        var obj = document.createElement("div");

        obj.classList.add("obstacle")
        obj.style.width = obstacles[i].width + "px";
        obj.style.height = obstacles[i].height + "px";
        obj.style.position = "relative";
        obj.style.bottom = obstacles[i].posX + "px";
        obj.style.right = obstacles[i].posY + "px";
        obj.style.border = "2px solid red";

        document.querySelector(".map").append(obj);
    }
}*/
//displayObstacles();


/*function collision()
{
    for (let i = 0; i < obstacles.length; i++) {
        if ((sprite.X + 10) >= obstacles[i].posX && sprite.X <= (obstacles[i].posX + obstacles[i].width)) 
        {
            console.log("touché x");
        }
        if (sprite.Y + 10 >= obstacles[i].posY && sprite.Y <= (obstacles[i].posY + obstacles[i].height))
        {
            console.log("touché y");
        }
    }
}*/


const sprite = {
    "size" : 128,
    "frame" : 4,
    "path" : "./dresseur.png",
    "position" : 0,
    "Y" : 0,
    "X" : -290,
}

let perso;
addPerso();
document.addEventListener("keydown", directionKey)

function addPerso()
{
    perso = document.createElement("div");

    perso.classList.add("perso");
    perso.style.width = sprite.size / sprite.frame + "px";
    perso.style.height = sprite.size / sprite.frame + "px";
    perso.style.backgroundImage = "url(" + sprite.path + ")";
    perso.style.position = 'relative';
    perso.style.bottom = '-290px';
    perso.style.border = "2px solid red";

    document.querySelector(".map").append(perso);
    return perso;
}


//var obstacle = [{x: 0, y: 0, w: -500, h: -500}]




function directionKey(event)
{
    console.log(event.keyCode)
    const keyBoardTouch = event.keyCode
    switch(keyBoardTouch)
    {
        case 37: //gauche
            sprite.position += 32;
            perso.style.backgroundPosition = sprite.position + 'px -32px';
            if (sprite.Y + 10 > 0)
                break;
            sprite.Y += 10;
            perso.style.right = sprite.Y + 'px';
        break;
        case 38: //haut
            sprite.position +=32;
            perso.style.backgroundPosition = sprite.position + 'px 32px';
            if (sprite.X + 10 > 0)
                break;
            sprite.X += 10;
            perso.style.bottom = sprite.X + 'px';
        break;
        case 39: //droite
            sprite.position += 32;
            perso.style.backgroundPosition = sprite.position + 'px 64px';
            if (sprite.Y - 32 <= -772)
                break;
            sprite.Y -= 10;
            perso.style.right = sprite.Y + 'px';
        break;
        case 40: //bas
            sprite.position += 32;
            perso.style.backgroundPosition = sprite.position + 'px 0px';
            if (sprite.X - 32 <= -642)
                break;
            sprite.X -= 10;
            perso.style.bottom = sprite.X + 'px';
        break;
    }

    console.log(sprite.X)
    console.log(sprite.Y)
    console.log("_________________")


    /*let i = 0;
    while ( + 10 > 0)
    {
        console.log(sprite.X)
        console.log(sprite.Y)
        console.log("_________________")
        i++;
    }*/
}

