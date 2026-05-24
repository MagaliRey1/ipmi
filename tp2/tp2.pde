int pantalla = 0;
int tiempoCambio = 10000;
int ultimoCambio = 0;
boolean iniciar;
PImage fondo, logo, ash, pikachu, misty, brock, rocket, todos, bosque1, bosque2, centropokemon, campeon, rio, pelea;
int tam = 350;
int tam2 = 200;
PFont fuente;
float opacidad = 0; 
int posX1 = 600;
int posY1 = 300;
int posX2 = 10;
int posY2 = 600;

void setup() {
 
size(640, 480);
   
fuente = loadFont("letra.vlw");
fondo = loadImage("fondo.jpg");
logo = loadImage("pokemonlogo.png");
ash = loadImage("Ash.png");
pikachu = loadImage("Pikachu.png");
misty = loadImage("Misty.png");
brock = loadImage("Brock.png");
rocket = loadImage("teamrocket1.png");
todos = loadImage("todos.png");
bosque1 = loadImage("bosque.jpg");
bosque2 = loadImage("bosque2.jpg");
campeon = loadImage("campeon.jpg");
centropokemon = loadImage("centropokemon.jpg");
rio = loadImage("rio.jpg");
pelea = loadImage ("pelea.png");
}
 
void draw(){
  
  
  switch(pantalla) {

  //MENU
  case 0:
  
    menu();
    break;

 //PANTALLA 1
  case 1:
  
  image(fondo, 0, 0, 640, 480);
  
   textSize(20);
   
    text("Pokémon cuenta la historia de Ash Ketchum, un chico de Pueblo Paleta que sueña con convertirse en Maestro Pokémon. En su primer día como entrenador llega tarde y el único Pokémon disponible para él es Pikachu, que al principio no le hace caso.", 20, 0, 600, 200);

  image(pikachu, posX1, posY1, 200, 200);
  if(posX1 > 430){
    posX1--;
   }
   
   image(ash, posX2, posY2, 300, 400);
   if(posY2 > 150){
     posY2--;
   }
   
    cambioAutomatico();
    break;

 //PANTALLA 2
  case 2:
 
 image(centropokemon, 0, 0, 640, 480);

    text("Durante su viaje, Ash recorre distintas regiones atrapando Pokémon y enfrentando líderes de gimnasio para ganar medallas. Con el tiempo, Pikachu y Ash crean una gran amistad basada en la confianza y el trabajo en equipo.", 30, 300, 600, 200);
 
  image(pelea, posX1, posY1 - 300, 700, 300);
  if(posX1 > 0){
    posX1--;
   }
  
    cambioAutomatico();
    break;

//PANTALLA 3
  case 3:

 image(rio, 0, 0, 640, 480);
  
    text("En el camino conoce compañeros como Misty y Brock, quienes lo ayudan en sus aventuras. También aparecen rivales que lo desafían constantemente y lo impulsan a mejorar como entrenador.", 200, 0, 200, 500);

   image(misty, posX2, posY2, 200, 300);
   if(posY2 > 50){
     posY2--;
   }

   image(brock, posX2 + 400, posY2, 200, 300);
   if(posY2 > 50){
     posY2--;
   }
  
    cambioAutomatico();
    break;

//PANTALLA 4
  case 4:

 image(bosque2, 0, 0, 640, 480);
 
    text("Uno de los enemigos recurrentes es el Equipo Rocket, un grupo que intenta robar Pokémon raros, especialmente a Pikachu. Aunque suelen causar problemas, muchas veces terminan siendo personajes cómicos.", 30, 300, 600, 200);
   
 image(rocket, posX1, posY1 - 300, 700, 300);
  if(posX1 < 0){
    posX1--;
   }
   
    cambioAutomatico();
    break;

//PANTALLA 5
  case 5:

 image(campeon, 0, 0, 640, 480);

  fill(0);
  
    text("A lo largo de la serie, Ash participa en importantes torneos Pokémon y madura como persona y entrenador. Después de muchos años de aventuras, finalmente logra convertirse en campeón mundial Pokémon, cumpliendo el sueño con el que comenzó su viaje.", 30, 300, 600, 200);

  }
}

// menu
void menu() {

 image(fondo, 0, 0, 640, 480);
 
  tint(255, opacidad);

  image(logo, 20, 10, 600, 200);
  image(todos, 150, 250, 300, 300);

  if (opacidad < 255) {
    opacidad += 10;
  }
 
  boolean hover =
    mouseX > 220 && mouseX < 420 &&
    mouseY > 190 && mouseY < 270;

  // color boton

  if (hover) {
    fill(255, 0, 0);
  } else {
    fill(0, 200, 0);
  }

  rect(220, 190, 200, 80, 15);

  fill(255);

  textAlign(CENTER, CENTER);
  textFont(fuente);
  textSize(32);

  text("PLAY", 320, 230);
}


// texto
void textoPantalla(String txt) {

  fill(255);

  textAlign(CENTER, CENTER);
  textFont(fuente);
  textSize(40);

  text(txt, width/2, height/2);
}


// cambioauto
void cambioAutomatico() {

  if (millis() - ultimoCambio > tiempoCambio) {

    pantalla++;
    ultimoCambio = millis();
  }
}


// CLICK
void mousePressed() {

  // PLAY
  if (pantalla == 0) {

    if (mouseX > 220 && mouseX < 420 &&
        mouseY > 190 && mouseY < 270) {

      pantalla = 1;

      // reinicia
      ultimoCambio = millis();
    }
  }
}
