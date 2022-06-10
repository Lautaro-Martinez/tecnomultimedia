void  dibujaMisLineas() {
  background(fondo);
  strokeWeight(grosor);
  stroke(linea);

  int cant = 8; //recomendado de 4 a 8
  int tamX, tamY;
  tamX = width/cant;
  tamY = height/cant;


  for (int i = 1; i < cant; i++) {
    line(0, i * tamY, width, i * tamY);
  }
  for (int j = 1; j < cant; j++) {
    line(j*tamX, 0, j*tamX, height);
  }
  fill(colorEllipse);
  stroke(colorEllipse);
  for (int x = 1; x < cant; x++) {
    for (int y = 1; y < cant; y++) {
      ellipse(x*tamX, y*tamY, grosor, grosor);
    }
  }
  if (frameCount%60 == 0) {
    time++;
  }
  if (time >= tiempoDefinido) {
    noStroke();
    fill(botonColor, 0, 0);
    rect(525, 525, 50, 50);
    fill(colorR);
    textAlign(CENTER, CENTER);
    textSize(30);
    text("R", 550, 545);
  }
}
