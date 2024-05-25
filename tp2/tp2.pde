PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PFont fuente;
String texto1 = "El juego agua y fuego trata sobre dos \npersonajes que tiene que cumplir un objetivo.";
String texto2 = "El juego se divide en niveles, \ndonde para hacer el nivel 2 \nhay que acertar el 1.";
String texto3 = "Su mision es que los dos personajes,\npasen una serie de obstaculos en un determinado tiempo.\nDonde si agua toca el fuego muere y visceversa. ";
String texto4 = "Al lograr pasar todos los obstaculos,\ncada uno tiene que ingresar a su determinada \npuerta para pasar al siguiente nivel.";
int pantalla = 1; 
int numero = 0;
int botonAncho = 200; 
int botonAlto = 100; 
color bordeColor = color(0);

void setup() {
  background (255);
  size(640, 480);
  textSize (25);
  fuente= loadFont("BookmanOldStyle-Bold-48.vlw");
  imagen1=loadImage("image1.jpg"); 
  imagen2=loadImage("image2.jpg");
  imagen3=loadImage("image3.jpg");
  imagen4=loadImage("image4.jpg"); 

}


void draw(){

   background(200);
  if (pantalla == 1) {
     background (255);
      image(imagen1, 0, 0, 640, 480);
      textFont(fuente, 25);
      fill(255);
      text(texto1, 20, numero);
       numero=numero + 2;
          if (numero == 600){
          pantalla=2;
          numero=0;
        }
  } else if (pantalla == 2) {
       background(255);
      image(imagen2, 0, 0, 640, 480);
      fill(255);
      text(texto2, numero, numero);
       numero=numero+2;
          if (numero == 590){
          pantalla=3;
          numero=0;
          }
  } else if (pantalla == 3) {
    textSize(20);   
    background(255);
    image(imagen3, 0, 0, 640, 480);
      fill(255);
      text(texto3, 20, numero);
       numero=numero+2;
       if (numero == 590){
          pantalla=4;
          numero=0;
          }
    } else if (pantalla == 4) {
      background(255);
      image(imagen4, 0, 0, 640, 480);
      fill(255);
      text(texto4, numero, numero);
       numero=numero+2;
    if (numero == 590){
          pantalla=5;
          numero=0;
          }

    } else if (pantalla == 5) {
    background (126,221,240);
    fill(255, 0, 0);
    stroke(bordeColor); 
    strokeWeight(5);
    rect(width/2 - botonAncho/2, height/2 - botonAlto/2, botonAncho, botonAlto);
    fill(255);
    textSize(30); 
    text("Reiniciar", width/2.5, height/1.9);
     
  }
}

void mousePressed() {
  if (mouseX > width/2 - botonAncho/2 && mouseX < width/2 + botonAncho/2 && mouseY > height/2 - botonAlto/2 && mouseY < height/2 + botonAlto/2 && pantalla == 5) {
    pantalla = 1; 
    numero = 0;
  }
}
