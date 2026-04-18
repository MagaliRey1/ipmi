PImage miImagen;

void setup(){
  size(800,400);
  miImagen = loadImage("Perla.jpg");
}
  
  void draw(){
   background(0);
   image(miImagen, 0, 0, 400, 400);
   
  //pañuelo amarillo
  fill(245, 195, 80);
  ellipse(640, 60, 60, 40);
  ellipse(620, 80, 100, 70);
  ellipse(653, 91, 60, 90);
 
  //nuca
  fill(0, 19, 34);
  ellipse(640, 130, 55, 100);
    
  //Pañuelo
  fill(35, 110, 175);
  noStroke();
  beginShape();
  vertex(530, 90);
  bezierVertex(550, 55, 590, 35, 660, 80);
  bezierVertex(690, 145, 670, 180, 530, 100);
  endShape(CLOSE);
  
  //cuello
  fill(117, 42, 32);
  noStroke();
  beginShape();
  vertex(581, 221);
  bezierVertex(520, 198, 630, 176, 635, 175);
  bezierVertex(689, 220, 639, 235, 605, 258);
  bezierVertex(593, 241, 593, 241, 581, 221);
  endShape(CLOSE);
  
  //Cabeza
  fill(254, 194, 139);
  noStroke();
  beginShape();
  vertex(530, 100);
  bezierVertex(560, 90, 606, 110, 635, 140);
  bezierVertex(660, 145, 660, 146, 615, 205);
  bezierVertex(570, 235, 548, 226, 540, 205);
  bezierVertex(530, 190, 530, 150, 530, 130);
  bezierVertex(540, 120, 530, 115, 530, 100);
  endShape(CLOSE);
  
  ellipse(542, 150, 30, 70);
  ellipse(549, 120, 40, 40);
  ellipse(542, 111, 27, 25);
  
  //perla
  fill(250);
  ellipse(637, 177, 20, 20);
 
  //Sombra cara
  fill(0, 0, 0, 50);
  ellipse(640, 160, 120, 120);
  ellipse(660, 160, 100, 100);
  ellipse(680, 160, 90, 90);
  ellipse(700, 160, 70, 70);
  
  //perla brillo
  fill(250);
  ellipse(634, 175, 10, 10);
  
  //ropa parte blanca
  fill(255);
  ellipse(680, 300, 180, 200);
  
  //ropa parte marron
  fill(42, 8, 1);
  ellipse(700, 315, 180, 200);
  
  fill(0, 0, 0, 128);
  ellipse(800, 400, 300, 300);
  ellipse(800, 400, 200, 200);
  ellipse(800, 400, 100, 100);
  
  fill(219, 118, 40);
  ellipse(630, 320, 100, 100);
  
  fill(0, 0, 0, 128);
  ellipse(650, 320, 75, 100);
  
  fill(219, 118, 40);
  ellipse(650, 400, 170, 200);
  
  fill(0, 0, 0, 128);
  ellipse(690, 400, 100, 200);
  ellipse(710, 400, 50, 175);
  
  fill(0, 0, 0, 250);
  ellipse(800, 150, 200, 300);
  
  //pañuelo amarillo
  fill(245, 195, 80);
  noStroke();
  triangle(680, 300, 715, 293, 670, 53);
  
  fill(100, 49, 3);
  noStroke();
  triangle(699, 270, 730, 250, 670, 53);
  
  fill(0, 0, 0, 50);
  ellipse(685, 70, 100, 100);
  ellipse(690, 70, 70, 70);
  
  //cara
  fill(0, 0, 0, 30);
  ellipse(578, 138, 30, 20);
  ellipse(535, 130, 30, 20);
  
  triangle(563, 136, 540, 170, 567, 173);
  ellipse(555, 172, 25, 10);
  ellipse(545, 170, 10, 10);
  
  fill(255, 255, 255, 50);
  ellipse(557, 135, 15, 25);
  ellipse(548, 182, 10, 10);
  
  fill(171, 59, 35, 230);
  ellipse(553, 192, 23, 10);
  ellipse(555, 196, 24, 13);
  
  fill(255, 255, 255, 200);
  ellipse(553, 194, 15, 2);
 
  //ojos
  fill(255);
  noStroke();
  beginShape();
  vertex(530, 126);
  bezierVertex(538, 123, 550, 130, 545, 133);
  bezierVertex(530, 135, 530, 130, 530, 130);
  endShape(CLOSE);
  
  noStroke();
  beginShape();
  vertex(567, 136);
  bezierVertex(575, 127, 600, 135, 580, 141);
  bezierVertex(571, 140, 567, 136, 567, 136);
  endShape(CLOSE);
  
  fill(0);
  ellipse(544, 130, 10, 10);
  ellipse(585, 137, 10, 10);
  
  fill(255, 255, 255, 127);
  ellipse(542, 129, 5, 5);
  ellipse(583, 135, 5, 5);
 }
