/*
  TP #2 - Animación créditos
  
  Alumno: Martinez Lautaro
  
  Temática: Los tres mosqueteros - Alejandro Dumas
  
  Desarrollo inspirado en la película D' Artagnan y los tres mosqueteros (2005)
*/
int time = 0;
PImage portada,fondo;
PFont cuerpo, titulo, lema;
int ancho,ancho2,alto2;
int textoX,textoY,textoY2;
int imagenY, imagenX;
int espacioX = 25;
int espacioY = 200;
int espacioY2 = 590;
int textoY3;
float brillo = 0;
int brillo2 = 0;
int desvanece = 255;
int desvanece2 = 255;

///////////////
int vel = 3;
//////////////

import ddf.minim.*;
Minim musica;
AudioPlayer player;

void setup(){
  size(1000,600);
  musica = new Minim(this);
  player = musica.loadFile("legend.wav");//musicalizacion
  portada = loadImage("portada2.jpg");//portada inicial
  fondo = loadImage("imagenfondo.png");
  cuerpo = loadFont("ArialMT-48.vlw");
  titulo = loadFont("Castellar-48.vlw");
  lema = loadFont("FootlightMTLight-48.vlw");
  ancho = 0;
  ancho2 = width;
  alto2 = height;
  textoX = width/2;
  textoY = height;
  textoY2 = textoY + 1760;
  textoY3 = 10850;
  imagenX = width;
  imagenY = height;
}  

void draw(){
  background(0);
  fill(255);
//////////////////////////////////////////////sonido e imágenes//////////////////////////////////////////////////
  time++;
  
    if(desvanece2 <= 80){        
       player.play();
       alto2--;
       
  }
    if(time >= 6000){
      player.close();
      
  }
  tint(255,desvanece);
  image(fondo,0,0,width,height);
  tint(255,desvanece2);
  image(portada,ancho,0,ancho2,height);
  
    if(time >= 100){ 
      desvanece2-=4;    
  }
//////////////////////////////////////////////sonido e imágenes//////////////////////////////////////////////////
/////////////////////////////////////////////////textos//////////////////////////////////////////////////////////
  textAlign(CENTER);//////alineacion central
  fill(255);
  textFont(cuerpo);
  textSize(25);
  text("Un film de\nPierre Aknine",textoX,textoY+50);
  
  text("Puesta en escena\n\nDirector segundo equipo\nMarion Lallier\n\n\nImagen segundo equipo\nDaniel Sauvé\n\nFrédérique Giess, Rabia El Bouhati, Jérôme Franc,\nMarketa Magerova, Aurée Tommi Lepage, "+
       "Estelle Barris,\nAnnie St Pierre, Zuzana Kobedova, Delphine Menant,\nChris Stoalling, Katie Keates, Adib Nessim,\nPeter Frank De Wulf\n\nEspecialistas\n\nJean-Marc Bellu, Patrick Medioni, Patrick Steltzer,"+
       "\nChristian Hening de Franceschi, Philippe Morel\n\n\n\n\n\n\nImagen\n\nDaniel Sauvé, Christian Abomnes, Vladimir Duben,\nRobert Dibble, Jay J. Odedra, Patrick Beaulac, Martin Lebel,\nDan Balzer, Vincent Richard, Martin Brych, George Griève,"+
       "\nAnn Berrie, Alain Rousseau, Martin Schmarc, Otto Matejka,\nJulie Sageau\n\n\nConformación de Imagen : Phillip Lee, Dave Whelton\n\nCalibradores : Duncan Russell, Graham Hayes\n\nFotógrafo TF1 : Patrick Roncen"+
       "\n\n\nDirección de Producción\n\nAndreas Bajohra,\nGinette Guillard,\nMichal Prikryl\n\n\nAdministración de Producción\n\nLaure Blaes\nDenisa Murinova, Shruti Shah, Sylvain Proulx,\nRichard Hyland, Stephen Joberns, Lenka Zamenickova,"+
       "\nManon Proux, Nicolas Gay\n\n\nCoordinación de Producción\n\nSylvie François\nMirka Valova, Alexandra Kosevic, Marie-Elaine Bailly,\nHeather Noble, Simon Keating, Deitan Trudeau\nEmily Kyriakides"+
       "\n\nFrançoise Grizaud, Ruth Charest, Shirine Best\n\n\nDirección financiera\n\nDominik Schmelck, Mark G. Sorella\nDanielle Phocas\n\n\nControl\n\nThierry Cretagne\nZbynek Pippal, David Pinnington, Karim Djerbi,"+
       "\nDavid Seaton, Ali James, Zdenek Fiala, Hana Jenny,\nJindriska Vorlova, Sébastien Giorgetti, Reza Boihramady,\nSylvain Marques, Antonio Tavares, Arnaud Boudet,\nVanessa Odde, Gary Birmingham, Bruce McCallum,"+
       "\nNigel Howard, Daniel Bourdreau,\nJim Lévesque, Benoit Thériault, Sophie Tessier,\nMichel Mollicone, Daniel Malefant, Dominic Thiffault\n\n\nSon\nFrancis Peloquin\n\n\nCorredor de sincronización\nJim Guthrie"+
       "\n\n\nDisfraces\n\nGilles Bodu-Lemoine\nLenka Koultkova, Jonh Stowe, Ilona Holekova,\nHana Jelinkova, Sylvia Vanickova, Maritza Reitzman,\nBrigitte Masson, Nathalie Chrétien, Christophe Vialaret\n\n\nMaquillaje"+
       "\n\nMarie-Angèle Breitner-Proat\nMarie Lastennet, Gabriela Polakova, René Stejskal,\nJonathan Lavallée\n\n\nPeinado\n\nGhislaine Torterau\nReynald Desbant, Barbara Kichiova, Franck Vaclac,\nMartin Lapointe\n\n\nDecoración"+
       "\n\nRéal Proulx, Anne Bourleyre\nCatherine Werner-Schmit, Beata Brentnerova, Célia Bobak,\nAnnie Gilhooly, Francine Danis, Jean-Pierre Chevallier,\nPetra Kobedova, Bruno La Haye, Radan Kapinos,\nStéphane Linet, Alfie Smith, Christian-Paul Peyron,"+
       "\nCyrille Autissier, Philippe Margottin, Virginie Le Romain,\nFrédéric Amblard, Fabien Raymondaud,\nJean-Claude Davignon, Marine Antoine,\nJessica Labet, Claude Leclair\n\n\nConstrucción\n\nPatrick Veron\nFrançois Combastel, Brigitte Renard,"+
       "\nSacha Malherauxm François Gascon, Luc Gagnier,\nFrançois Gosselin, Eric Gosselin, Serge Archambault,\nJosée Létourneau, Stéphen Craig, Annie Saint Pierre,\nJean Larose, Marie-France Lavoie, Harry Metcalfe,\nCraig Gleeson, Clint Hellyer, Mick Sinnott"+
       "\n\n\nMaquinaria\n\nPatrick Lima, Laurent Guyot\nRoman Hodek, Lucho Zuidema, Patrice Dagenais,\nDaniel Havelka, Vathana Kang, Frédéric Bentowski,\nJean-Pascal Jobert, Hervé Le Berrigaud, Glyn Fielding,\nMalcolm McGilchrist, Jocelyn Beaulac, Amélie Douville,"+
       "\nSamuel Eusano, Otto Matejka\n\n\nElectricidad\n\nCharles Beetz\nThierry Labille, Paval Caslavsky, Jullian White,\nVaclav Korcik, Stéphane Cry, Philippe Cadeau,\nDamien Bret, Jacques Ulrich, Philippe Gibier,"+
       "\nRicky Stelling, Paul Duffy, Stephen Finberg,\nRicky Davies, Alan Grayley, Peter Mathys,\nSerge Raymond, Alec Comtois, Charles Marcotte\n\n\nCamarín\n\nEmilka Triskova, Gilles Paquette, Ludovic Tymkov,"+
       "\nGavin Charlton & The Mobile Mouthful,\nAna Maria Lyrio, Jasmine Kapoor\n\n\nDirector de post-producción\nFrédéric J. Lozet\n\n\nMontage son\nGraham Headicar, Craig Butters\nAndré Schmidt\n\n\nPost-sincronización"+
       "\n\nJean-Max Morise, Sébastien Adamczak\nBruno Lecoeur\n\n\nEfecto de sonido\n\nAndi Derrick, Pete Burgis, Ricky Butt\nAlex Ellerington, Marc Haefner\n\n\nMezcla\nStuart Hilliker\n\n\nEfectos especiales\n\nClare Tinsley, Diego Vazquez, Vania Alban Zapata,"+
       "\nMatt Tinsley, Emmanuelle Lecchi, Eric d'Souza\n\n\nAsesores técnicos",textoX,textoY2);
  
  text("Música\n\nProducción musical : Antmusic UK Ltd\nCoordinación musicale : Anthony Vanger\nAsistente de coordinación musical : Tom Lown\n\n\nMúsica compuesta, orquestada y dirigida por\nMatt Dunkley\n\nMúsica producida por Matt Dunkley y Geoff Foster"+
       "\nMezcla musical por Geoff Foster en Air Studio, Londres\nMúsica registrada por Gary Chester en CNSO Studio, Praga\n\nJake Jackson, Dave Donaldson, James Bandbury\nIngeniero Pro Tools : Cenda Kotzmann\nDakota Music Service\n\n\nProductor asociado\nAlex Marshall"+
       "\n\n\nProductor ejecutivo UK\nEd Harper\n\n\nProductor ejecutivo República Checa\nMarc Jenny\n\n\nUna coproducción\nFrancia - Canada - Rusia - República Checa\n\n\nCon la participación de TF1\nCentro Nacional de Cinematografía\n\n\nProductor delegado"+
       "\n\nJean-Pierre Guérin\nVéronique Marchat\n\nDirección de la ficción TF1\n\nTakis Candilis\nDominique Deviosse-Nayrole\nAnne Santa-Maria\n\n\nEscrito por\nAlejandro Dumas",textoX,textoY2 + 6340);
  
  textSize(60);
  textFont(titulo);
  fill(#C68500);
  text("Los 3 Mosqueteros",textoX, textoY3);
  
  textSize(30);
  fill(255,brillo);
  textFont(lema);
  text("¡Uno para todos y todos para uno!",textoX, textoY3 + 60);


  textFont(cuerpo);
  fill(255);
  textAlign(RIGHT);//////alineacion a la derecha
  textSize(25);
  text("D'Artagnan\nMilady de Winter\nRicheliu\nAthos\nAramis\nPorthos\nAnne d'Autriche\nConstance Bonacieux\nBonacieux\nLouis XIII\nMorgan\nMonsieur de Tréville\nBuckingham\nMadame de Guéménée\nLe père de d'Artagnan\nD'Artagnan enfant\nMousquetaire manoir"+
       "\nGarde Richelieu\nLes Jurés\nJussac\nHéroard\nGentilhomme chez le roi\nGuillaume\nRutaford\nPostillon\nSir Hiller\nMaitre Cérémonie\nLe Père Cortes\nLe Pêtre\nLe Parrain\nLa Marraine\nLe Bedeau\nLe lieutenant de Tréville\nMousquetaires\n\nMadame Delaunoy"+
       "\nLe Duc d'Aulnay\nLa duchesse de Joyeuse\nL'officier Buckingham\nFelton\nL'abbesse\n\n\nDoublure cascade\nd'Artagnan\nDoublure cascade Athos\nDoublure cascade Porthos\nDoublure cascade Aramis\nDoublure cascade Milady", textoX - espacioX,textoY + espacioY);
  
  text("Coach\nGuion\nCasting\nCasting Figuration",textoX - espacioX,textoY2 + espacioY2);
  
  text("Efectos especiales numéricos\nCoreografía\nCoordinador de cascada\nCaballos\nVehículos\nTablero de la historia\nArmero\nAnimales\nConstructor de decoración CZ\nTomas aéreas",textoX - espacioX,textoY2 + 5990);


  textAlign(LEFT);//////alineacion a la izquierda
  text("Vincent Elbaz\nEmmanuelle Béart\nTcheky Karyo\nHeino Ferch\nGrégori Derangère\nGrégory Gadebois\nStéfania Rocca\nDiana Amft\nJacques Spiesser\nTristan Ulloa\nStéphane Boucher\nGilles Renaud\nMattheu Chambers\nJulia Thurnau"+
       "\nPatrick Steltzer\nEmeric George\nJerôme Lecouet\nMichel Bouis\nPierre Aknine, Marc Vadé\nJean-Marc Bellu\nHubert St Macary\nMartin Sochor\nAntoine Chain\nColin Baker\nJaromir Janecek\nDamien Thomas\nTomas Hanak\nRémy Girard"+
       "\nFrantisek Kreuzman\nJakub Hais\nKiara Cibulkova\nJean-Michel Mole\nVicent Ribeiro\nPhilippe Gaulé,\nSwann Arlaud\nTatiana Vialle\nVaclav Mares\nEva Indruchova\nRobert Styles\nGunther Gillian\nFrançoise Pinkwasser\n\n\nYves Girard"+
       "\n\nJean Girard\nAlbert Goldberg\nWilliam Cagnard\nSybille Blouin", textoX + espacioX,textoY + espacioY);
  
  text("Marceline Corthesy\nFrance Lachapelle\nTatiana Vialle\nDaniel Ben Loulou",textoX + espacioX,textoY2 + espacioY2);
  
  text("Benoit Brière\nCorinne Devaux\nFilmka - Martin Hub\nGeorges et Corinne Branche\nFrédéric Hardy\nFabien Lacaf\nStéphane Linet\nPierre Cadéac\nArva\nFred North, ACS France",textoX + espacioX,textoY2 + 5990);

    if(alto2 <= 500){
      textoY-=vel;
      textoY2-=vel;
      textoY3-=vel;

    if(textoY3 <= height/2){
      textoY3 = height/2;
      brillo = brillo + 1.5;
      desvanece--;
    }    
  }
    if(textoY3 == height/2 && brillo >= 20 ){
      player.close();
  }
    if(brillo >= 255){
      brillo = 255;
  }


//println("time:" + time,"portada:" + desvanece2, "brillo:" + brillo);

}
