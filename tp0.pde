
////////////////////////////Tp0: Dibujo básico y Github//////////////////////////

void setup() {
  size(500, 300);
}


void draw() {
  background(134, 232, 255);
  stroke(0);
  strokeWeight(2);
  line(0, 99, 500, 99);
  noStroke();
  fill(239, 240, 87);

  /////////////////////////////sol rayos rectos/////////////////////////////  
  ellipse(50, 50, 40, 40);
  triangle(50, 12, 43, 25, 57, 25);
  triangle(50, 88, 43, 75, 57, 75);
  triangle(12, 50, 25, 43, 25, 57);
  triangle(88, 50, 75, 43, 75, 57);

  ///////////////////////////// sol rayos diagonales////////////////////////
  triangle(78, 22, 64, 27, 73, 36);
  triangle(22, 78, 27, 64, 36, 73);
  triangle(22, 22, 36, 27, 27, 36);
  triangle(78, 78, 64, 73, 73, 64);

  /////////////////////////////nubes///////////////////////////
  fill(249);
  ellipse(200, 50, 25, 25);
  ellipse(250, 50, 25, 25);
  ellipse(215, 40, 25, 25);
  ellipse(235, 40, 30, 30);
  ellipse(215, 60, 30, 30);
  ellipse(235, 60, 25, 25);
   
  ellipse(110, 60, 25, 25);
  ellipse(160, 60, 25, 25);
  ellipse(145, 50, 25, 25);
  ellipse(125, 50, 30, 30);
  ellipse(125, 70, 30, 30);
  ellipse(145, 70, 25, 25);

  ///////////////////////////Edificios//////////////////
  rectMode(CORNER);
  fill(#098E17);
  rect(0, 100, 500, 200);
  stroke(0);
  strokeWeight(4);


  fill(#7C7777);
  rect(340, 40, 90, 90);
  fill(#E81F00);
  triangle(360, 10, 325, 40, 440, 40);
  fill(#D15B2C);
  rect(230, 80, 120, 120);
  fill(#0E98AF);
  rect(340, 130, 90, 85);
  fill(#E81F00);
  triangle(385, 80, 330, 130, 440, 130);


  /////////////////////Ventanas, Puertas/////////////////
  strokeWeight(2);

  rectMode(CENTER);
  fill(#C2F8FA);
  rect(250, 100, 20, 20);
  rect(290, 100, 20, 20);
  rect(330, 100, 20, 20);
  ellipse(405, 155, 35, 35);
  rect(365, 60, 25, 25);

  fill(#6F500D);
  rect(275, 175, 50, 50);
  rect(365, 200, 30, 30);


  fill(#D15B2C);
  rect(310, 65, 30, 30);
  fill(#C2F8FA);
  ellipse(310, 60, 10, 10);

  ///////////////////////////////árboles////////////////////////

  noStroke();
  fill(#6F500D);
  rect(100, 250, 25, 50);
  rect(50, 190, 25, 50);


  fill(#12CB6A);
  ellipse(100, 200, 50, 100);
  ellipse(50, 140, 50, 100);
  
 //////////////////////////////trencito//////////////////////////
  
  strokeWeight(2); 
  stroke(0);
  
  fill(#FAC800);
  rect(480,270,30,30);
  rect(450,270,30,30);
  fill(#007AFA);
  rect(415,270,30,30);
  rect(385,270,30,30);
  fill(#FA0000);
  rect(350,270,30,30); 
  rect(350,245,20,20);
  rect(325,275,20,20);
  fill(#C2F8FA);
  rect(350,245,12,12);
  fill(#FA8A00);
  triangle(315,270,295,285,315,285);
  
  fill(60);
  stroke(60);
  ellipse(480, 285, 20,20);
  ellipse(450, 285, 20,20);
  ellipse(415, 285, 20,20);
  ellipse(385, 285, 20,20);
  ellipse(325, 285, 20,20);
  ellipse(350, 285, 20,20);
  
  stroke(0);
  strokeWeight(4);
  line(366,270,369,270);
  line(431,270,434,270);
  

  println(mouseX, mouseY);
}
