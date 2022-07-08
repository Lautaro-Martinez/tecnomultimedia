void creditos() {
  if (keyCode == RIGHT) {
    pantallaMenu = true;
  }
  if (pantallaMenu == true) {
    image(misImagenes[4], width/2, height/2);
    fill(0);
    textAlign(LEFT);
    textSize(30);
    text("Desarrollado por: Martinez Lautaro\n\nDirigido por: Martinez Lautaro\n\nInspirado en: Flappy Bird", width/12, 200);
    textSize(20);
    text("IZQ para Volver", 20, height - 20);
  }
  if (keyCode == LEFT) {
    pantallaMenu = false;
  }
}
