/////////////////////////Tp3: Juego Interactivo Libre
/////////////////////////Comisión 4
/////////////////////////Martinez Lautaro 89492/6
////////////////////////Link a Video: https://youtu.be/nUS81FwdKjQ

int estadoJuego = 1;
int puntos = 0, maximosPuntos = 0; 
int x = -200, y, velY = 0;
boolean pantallaMenu = false;

int [] distX = new int[2];
int [] distY = new int[2];
PImage [] misImagenes = new PImage[5];

void setup() { 
  size(600, 700);

  misImagenes[0] = loadImage("fondo.png");
  misImagenes[1] = loadImage("bird.png");
  misImagenes[2] = loadImage("pared.png");
  misImagenes[3] = loadImage("menu.jpg");
  misImagenes[4] = loadImage("creditos.jpg");
}

void draw() { 
  logica_general();
  creditos();
}
void mousePressed() { 
  jugabilidad();
}
