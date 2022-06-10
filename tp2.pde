////////////// Link a video: https://youtu.be/oTLTqXLQj4s
////////////// TP2: Ilusión óptica interactiva
////////////// Alumno: Martinez Lautaro David
////////////// Legajo: 89492/6
////////////// Comisión 4


void setup() {

  size(600, 600);
}

void draw() {

  dibujaMisLineas();

  cambioColorFondoLineas();

  cambioGrosorLineas();

  println(time);
}
void keyPressed() {

  reinicioConTeclas();
}

void mouseClicked() {

  botonReinicio();
}
