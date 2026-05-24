PFont fuente;
PImage pantalla1, pantalla2,pantalla3,pantalla4,pantalla5,pantalla6,pantalla7;
PImage iconoscuro, iconclaro;
String texto = ""; 
Float valorAlpha;
int contador = 1;
int siguientepantalla = 0;
int claro = 255;
int tamxboton;
int tamyboton;
int posyboton;
int posxboton;
int posy;
int opacidad;
boolean modoclaro;
void setup(){
  size(640,480);
  fuente = loadFont("fuente.vlw");
  textFont(fuente,22);
  textAlign(CENTER);
  opacidad = 0;
  tamxboton = 80;
  tamyboton = 50;
  posyboton = 405;
  posxboton = 530;
  posy = 300;
  pantalla1 = loadImage("los100.png");
  pantalla2 = loadImage("arca.png");
  pantalla3 = loadImage("caen.jpg");
  pantalla4 = loadImage("tierra.jpg");
  pantalla5 = loadImage("terrestres.png");
  pantalla6 = loadImage("guerra.jpg");
  pantalla7 = loadImage("prime.jpg");
  iconoscuro = loadImage("luna.png");
  iconclaro = loadImage("sol.png");
  

  siguientepantalla = frameCount + 300;
}

void draw(){
  println("mouseX: "+ mouseX + " / mouseY "+ mouseY);
  background(255 - claro);
  
    
  if(frameCount >= siguientepantalla && contador<7) {
    contador++;
    opacidad = 0;
    siguientepantalla = frameCount + 500;
  }
  

  
  if(contador == 1){
    image(pantalla1,0,0,width,height);
  }
    else if(contador == 2){
    image(pantalla2,0,0,width,height/2);
    if(modoclaro == true)
      image(iconoscuro,540,412,width/10,height/10);
      
    else
    image(iconclaro,535,412,width/10,height/10);
    fill(0 + claro,opacidad);
    opacidad++;
    texto = "97 años después de que la tierra fuera devastada por un apocalipsis nuclear, del cual solo sobrevivieron los habitantes de estaciones espaciales,  los recursos comienzan a agotarse, por lo cual las estaciones se ven obligadas a disminuir la población.";
    text(texto,50,posy,540,150);
  }

  else if(contador == 3){
    image(pantalla3,0,0,width,height/2);
    if(modoclaro == true)
    image(iconoscuro,540,412,width/12,height/12);

    else
    image(iconclaro,535,412,width/10,height/10);

    fill(0 + claro,opacidad);
    opacidad++;
    texto = "Para hacerlo, decidieron enviar a la tierra a 100 jóvenes que habian cometido diversos crimenes, para ver si esta era habitable. ";
    text(texto,50,posy,540,150);
}  
 else if(contador == 4){
    image(pantalla4,0,0,width,height/2);
    if(modoclaro == true)
    image(iconoscuro,540,412,width/12,height/12);

    else
    image(iconclaro,535,412,width/10,height/10);
    fill(0 + claro,opacidad);
    opacidad++;
    texto = "Para la sorpresa de los 100, al llegar a la tierra,se encontraron con que era habitable, pensando que no había nadie más... ";
    text(texto,50,posy,540,150);
}

    else if(contador == 5){
    image(pantalla5,0,0,width,height/2);
    if(modoclaro == true)
    image(iconoscuro,540,412,width/12,height/12);

    else
    image(iconclaro,535,412,width/10,height/10);
    fill(0 + claro,opacidad);
    opacidad++;
    texto = "Pero no todo era color de rosas,unos días después descubrieron que no eran los únicos en la tierra. Habia muchos sobrevivientes del apocalipsis nuclear que no tenian intención de compartir los recursos...";
    text(texto,50,posy,540,150);
}

    else if(contador == 6){
    
    image(pantalla6,0,0,width,height/2);
    if(modoclaro == true)
    image(iconoscuro,540,412,width/12,height/12);

    else
    image(iconclaro,535,412,width/10,height/10);
    fill(0 + claro,opacidad);
    opacidad++;
    texto = "A lo largo de la serie se presentan diversos conflictos entre distintos grupos, guerras por territorio y recursos, traiciones, alianzas y decisiones morales muy difíciles. Los personajes constantemente deben elegir entre hacer lo correcto o hacer lo necesario para sobrevivir.";
    text(texto,50,300,540,150);
}

    else if(contador == 7){
    fill(40);
    rect(255,383,100,45);
    image(pantalla7,0,0,width,height/2);
    if(modoclaro == true)
    image(iconoscuro,540,412,width/12,height/12);

    else
    image(iconclaro,535,412,width/10,height/10);
    fill(0 + claro,opacidad);
    opacidad++;
    texto = "Si te interesa ver Los100, la puedes encontrar en prime video!! Tiene 7 temporadas pero cada una de ellas vale la pena..";
    text("Reiniciar",255,395,100,100);
    text(texto,50,300,540,150);
}
}
void mousePressed(){
    if(mouseX > 540 && mouseX < 594  && mouseY > 412 && mouseY < 452){
      if (modoclaro == false){
       modoclaro = true;
       claro = 0;
      }
      else{
        claro = 255;
        modoclaro = false;
      }
    }
    if (contador == 7) {
      if (mouseX > 255 && mouseX < 354 && mouseY > 383 && mouseY < 425) {
        contador = 0;    
      }
    }
}
