void mostrar_puntaje(int posPuntajeX, int posPuntajeY) {
  imageMode(CENTER);
  image(misImagenes[3], width/2, height/2);
  textAlign(LEFT);
  textSize(20);
  fill(255);
  text("High Score: " + maximosPuntos, posPuntajeX, posPuntajeY);
  text("Score: " + puntos, posPuntajeX, posPuntajeY * 2);
  fill(0);
  textAlign(RIGHT);
  textSize(20);
  text("DER para Créditos", width - 20, height - 20);
}
