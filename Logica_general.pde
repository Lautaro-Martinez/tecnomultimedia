void logica_general() {
  if (estadoJuego == 0) {

    fondo();

    for (int i = 0; i < 2; i++) {
      imageMode(CENTER);
      image(misImagenes[2], distX[i], distY[i] - (misImagenes[2].height/2 + 100));
      image(misImagenes[2], distX[i], distY[i] + (misImagenes[2].height/2 + 100));
      if (distX[i] < 0) { 
        distY[i] = (int)random(200, height - 200);
        distX[i] = width;
      }

      if (distX[i] == width/2) { 

        suma_de_puntos();
      }
      if (y > height || y < 0 || (abs(width/2 - distX [i]) < 25 && abs(y - distY [i] )> 100)) { 
        //Si tocas el techo, el suelo, o una pared, mueres.
        estadoJuego=1;
      }
      distX[i] -= 6;
    }

    personaje_mas_puntos();
  } else {

    mostrar_puntaje(width - width/4, 25);
  }
}
