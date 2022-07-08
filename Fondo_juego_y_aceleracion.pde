void fondo() {
  imageMode(CORNER);
  image(misImagenes[0], x, 0);
  image(misImagenes[0], x + misImagenes[0].width, 0);
  x -= 6;
  velY += 1;
  y += velY; // Esta será la aceleración de caída de nuestro personaje
  if (x == -1800) x = 0;
}
