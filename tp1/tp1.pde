//Candela Marra tp 1 comi 2 legajo 119081/0
PImage miPaisaje;
void setup (){
size (800,400);
background (12,120,247);
miPaisaje=loadImage("palmera.jpg");
}
void draw(){
 image (miPaisaje,400,0,400,400);
 noStroke();
 fill(114,240,228); //mar
 rect(0,230,400,70);//mar
 fill(246,252,222);//arena
 rect(0,280,400,600);//arena

 ellipse(70, 200, 40,15);//nube1
 ellipse(100,200,40,15);//nube1
 ellipse(84,188,40,15);//nube1
  
 ellipse(320,150, 40,15);//nube2
 ellipse(350,150, 40, 17);//nube2
 ellipse(380,150, 40, 15);//nube2
 ellipse(350,141, 40, 15);//nube2
 
 ellipse(70, 100, 40, 15);//nube3
 ellipse(100,100,40,15);//nube3
 ellipse(100,200,35,15);//nube3
  ellipse(85,91,35,25);//nube3
 
 fill(0);
 rect(62,300,3,40);//sombrilla
 println (mouseX+"/"+mouseY);
 fill(255,228,72);
 triangle(30,300,64,263,94, 298);//sombrilla 
 noStroke();
 fill(255);
 curve(70,257,70,257,292,257,292,150);//ola


 
 
}
