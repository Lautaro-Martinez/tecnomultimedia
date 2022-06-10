void botonReinicio() {
  boolean estaDentroDelBoton = 
    mouseX > 525 && mouseX < 575 && 
    mouseY > 525 && mouseY < 575;

  if (estaDentroDelBoton && time >= tiempoDefinido ) {
    time = 0;
    fondo = 0;
    linea = 200;
    grosor = 12;
    colorEllipse = 255;
  }
}
