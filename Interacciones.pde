int fondo = 0;
int linea = 200;
int grosor = 12;
int colorEllipse = 255;
int time = 0;
int botonColor = 255;
int colorR = 255;
int tiempoDefinido = 15;

void cambioColorFondoLineas() {
  if (keyPressed && keyCode == UP || keyCode == DOWN) {
    fondo = round(map(mouseX, 0, width, 0, 255));
    linea = round(map(mouseX, 0, width, 200, 100));
    colorEllipse = round(map(mouseX, 0, width, 255, 0));
  }
}

void cambioGrosorLineas() {
  if (keyPressed && keyCode == RIGHT) {
    grosor++;
  } else if (keyPressed && keyCode == LEFT) {
    grosor--;
  }
  if (grosor >= 21) {
    grosor = 10;
  } else if (grosor <= 9) {
    grosor = 20;
  }
}

void reinicioConTeclas() {
  if (keyCode == ENTER || keyCode == BACKSPACE ) {
    fondo = 0;
    linea = 200;
    grosor = 12;
    colorEllipse = 255;
    time = 0;
  }
}
