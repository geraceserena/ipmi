PImage imagen;
void setup(){
  size(800,400);
  imagen = loadImage("lola.jpg");
}
void draw(){
  println("mouseX: "+ mouseX + " / mouseY "+ mouseY);
  background(165,32,25);
  image(imagen, 0, 0, 400, 400);
  
  fill(60); //negro grisaceo
  triangle(405,180,480,29,624,70);
  triangle(480,30,650,0,769,70);
  triangle(480,30,620,105,769,75);
  arc(610, 66, 150, 150, PI, TWO_PI, PIE);
  triangle(479,30,570,0,635,63);
  
  fill(252, 209, 198);//color piel
  ellipse(599,120,180,90);
  triangle(650,330,520,360,505,100);
  triangle(505,100,650,80,650,330);
  
  fill(243,211,248);//piel rosa claro
  triangle(650,340,650,80,770,70);
  fill(160); //gris
  triangle(400,322,400,400,530,400);
  triangle(520,400,710,280,750,400);
 
  fill(252, 209, 198);
  rect(648, 145, 32, 60);
  
  fill(165,32,25);
  ellipse(780,280,150,299); 
  
  fill(255);
  rect(618,145,32,60);
  
  fill(60, 76, 143);//azul - ojos
  triangle(435,169,505,133,506,168); 
  triangle(556,140,620,119,690,116); 
  triangle(556,139,645,145,688,115);
  
  fill(300, 128, 99);//naranja
  rect(433,170,73,30);
  
  fill(220);
  triangle(433,201,517,359,506,200); //cara izq
  
  fill(60); //pelo derecho
  ellipse(754,133,60,140); 
  quad(726,69,697,194,759,203,770,70); 
  triangle(690,193,709,152,708,195);
  
  fill(193, 49,49);
  circle(689,61,120); 
  
  fill(60); 
  triangle(470,137,531,70,506,130);
 
  fill(220, 20, 60); //rojo claro
  triangle(479,29,406,29,408,169);
  arc(689, 60, 120, 120, HALF_PI, PI+HALF_PI, PIE);
  
  fill(165,32,25);//  labios
  triangle(500, 302,514,318,513,295);
  triangle(515,296,538,302,517,320);
 
  fill(252, 209, 198);
  quad(507,127,499,275,590,276,525,140);
  stroke(165,32,25);
  strokeWeight(3);
  line(505,130,499,275);
  line(499,275,511,276);
  line(771,72,760,62);
  noStroke();
  
  fill(78,77,103);
  quad(535,116,638,94,649,106,542,128);
  triangle(535,117,587,98,640,90);
  triangle(547,113,593,111,635,90);
  quad(612,95,637,90,638,95,615,100);
  
  
  
}
  
