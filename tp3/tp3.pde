// https://youtu.be/UN5UqVzHkT0
//Serena Gerace - Comisión 1

PImage ilusion;
int filas;
int columnas;
int tamcelda;
float mouseXmap;
color colorpar;
color colorimpar;
float rotacion;
void setup() {
  size(800, 400);
  background(255);
  ilusion = loadImage("ilusion.jpg"); 
  columnas = 12;
  filas = 12;
  tamcelda = width / 24;
  rotacion = 35;
 
  colorpar = color(255, 188, 219);
  colorimpar = color(176, 98, 173);
}

void draw() {
  int doble = 0;
  boolean blanco = false;
  
  image(ilusion, 0, 0, 400, 400);
  translate(width/2, 0);
  
  // grilla de cuadrados
  for (int i = 0; i <= columnas; i++) {  
    for (int j = 0; j <= filas; j++) {
   
       fill(0);
      if (par(i, j) == true) {
        fill(colorpar);
      } else {
        fill(colorimpar);
      }
      rect(i * tamcelda, j * tamcelda, tamcelda, tamcelda);
    }
  }
   
  //  corazones
  for (int i = 0; i <= columnas; i++) {  
    for (int j = 0; j <= filas; j++) {
    

      if (blanco == false) {
         corazon(j * tamcelda, i * tamcelda, tamcelda, color(176, 16, 27)); 
         if (doble == 2){
           j++;
           corazon(j * tamcelda, i * tamcelda, tamcelda, color(176, 16, 27)); 
           doble = -1;
         } 
      } else {
         corazon(j * tamcelda, i * tamcelda, tamcelda, color(255)); 
         if (doble == 2) {
           j++;
           corazon(j * tamcelda, i * tamcelda, tamcelda, color(255)); 
           doble = -1;
         }
      }
      doble++; 
      blanco = !blanco;
    }
    blanco = !blanco;
  }
}

void corazon(float x, float y, float tam, color a) {
  int posX;
  int posY;

  push();
  posX = int(tam / 6); 
  posY = int(-tam / 10);
  translate(x, y);
  fill(a);
  rotate(radians(rotacion));
  ellipse(posX, posY, tam/4, tam/2);
  pop();

  push();
  posX = 0;
  posY = 0;
  translate(x, y);
  fill(a);
  rotate(radians(-rotacion));
  ellipse(posX, posY, tam/4, tam/2);
  pop();
  noStroke();
}
void mouseDragged() {

  float distancia = dist(mouseX, mouseY, pmouseX, pmouseY);

  rotacion = map(distancia, 0, 30, 30, 40);

  if (rotacion < 20) {
    rotacion = 20;
  }

  if (rotacion > 70) {
    rotacion = 70;
  }
}
boolean par(int valor1, int valor2) {
  return ((valor1 + valor2) % 2 == 0);
}
  

void coloresrandom() {
  
  colorpar = color(random(255), random(255), random(255));
  colorimpar = color(random(255), random(255), random(255));
}

void mousePressed() {
  coloresrandom();
  
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    colorpar = color(255, 188, 219);
    colorimpar = color(176, 98, 173);
    tamcelda = width/24;
  

  }
  if(key == 'p' || key == 'P'){
    filas++;
  }
  
  }
