import ddf.minim.*;
Minim minim;
AudioPlayer sonido;

PImage viking, title;
PFont bodyFont, botonFont;
int time = 0;
int posTex1 = 700;
int posTex2 = 20;
int posTex3 = 11400;
int alphaImgVkg = 255;
int alphaImgTitle = 0;
int botonColor = 0;
int colorR = 0;
color colorText1 = 255;
color colorText2 = 180;


void setup() {
  size(900, 600);
  minim = new Minim(this);
  sonido = minim.loadFile("Victory.mp3");
  bodyFont = loadFont("Perpetua-48.vlw");
  botonFont = loadFont("Arial-BoldMT-48.vlw");
  viking = loadImage("Frame1.jpg");
  title = loadImage("Frame2.png");
}

void draw() {

  background(0);
  if (time == 1) {
    sonido.play();
  }

  fill(botonColor, 0, 0);
  rect(825, 525, 50, 50);
  fill(colorR);
  textAlign(CENTER, CENTER);
  textFont(botonFont);
  text("R", 850, 550);
  tint(255, alphaImgVkg);
  image(viking, 0, 0, width, height);
  tint(255, alphaImgTitle);
  image(title, 100, 100, 700, 400);
  textFont(bodyFont);
  textSize(30);

  fill(colorText1);
  textAlign(CENTER);
  text("CAST", width/2, posTex1);

  textAlign(LEFT);
  text("\n\n\nDean Ridge\nRoss O´Heennessey\nKezia Burrows\nJames Groom\nIoan Hefin\nChris Hampson\nIan Virgo\nMichelle McTernan\nElin Hayes\nKatra Knight\n"+
    "Ean Skinner\nChris Barnicoat\nPhillip Jones\nWolfie Hughes\nStuar McNeil\nLee Partridge\nLes Kenny-Green\nKeith Wallis\nKarin Floengard Jonsson\n"+
    "Chris O´Reilly\nKiel O´Shea\nBilly Bilham\nSean Bingham\nDan Styles\nCarl Sykes\n\n\nAdam Hassan\nJevan Cannon\nThomas Littlejohns\nDean Prosser\n"+
    "Katherine Aldridge\n\n\nChistopher Volwles\nTim Howard\nEwen Weatherburn\nJevan Cannon\nJon Sutton\nDayle Winston\nStuart Moss\nGary Coomber\nNeil Beer\n"+
    "Gavin Hargest\n\n\nJane Hadfield\nRebecca Heskey\nBen Warman\nChristos Gauci\nDavid Shillitoe\n\n\nSally Mattingley\nCharlotte Jones\nJodie Gall\n"+
    "Gemma Maloney\nSophie Bamford\nCharlotte Swain\nLeah Needham\nKelly Passaro\nChelsea Naylo-Mordecai\nEmma Jason\nBethan Lagford\nNicole Rugman\nPaula Hof\n"+
    "Fred Smart\n\n\nDaniel Butterworth\nTim Howard\nGary Vaughan Davies\nDaniel Ryves\nGuillaume Rivaud\nGeraint Nott\nGary Ralph\nPeter Shanley\nJames Russell\n"+
    "Mark Bullwright\nChristopher Short\nPaul Terry\nAdam Hassan\nLuke Charters\nJohnathan Jeffreys\nLucy Whiffing\nIwan Hancock\nLewis Stocker\nTim Hodgson\n"+
    "Brad Hall\nZoe Thomas\nGeorgina Vowles\nNatasha Pattermore\nScott Britton\nGavin Hargest\nMathew Thomas\n\n\n\n\nEmmet Cummins\n\n\n\nDavid Shillitoe\n"+
    "Emmet Cummins\nVictor Mawer\n\n\n\nDavid Shillitoe\n\nRhodri Davies\n\nAntony Smith\n\n\n\n\nDafydd Parry\n\nSara Hawley\n\nZoe Morgan\n\nJoseph Axl Nash\n"+
    "\n\nJoseph Axl Nash\nJames Best\nScott Britton\n\n\n\nOlivia Bruford\n\n\n\n\nRhys Warlow\n\nNick Perry\nRebecca Heskey (Pick Ups)\n\nDaniel Williams"+
    "\nSamuel Hinton (Pick Ups)\n\nCharles Donnelly\n\n\nJoshua Stitt\nKirsty Evans\n\n\nSean Harding\n\n\nNick Perry\n\nBarry Hopkins\nDavid Ozkoidi\n\n\n\n"+
    "\nIan Abraham\n\n\nTom Colwill\nDafydd Weeks (Pick Ups)\n\nShaun Moseley\nAdam-James Laveaux\nHarry Johnson\nNathan Launchbury-Jones\n\nAdam-James Laveaux\n"+
    "\nSimon Howard Jones\n\nDai Shell\n\nAdam-James Laveaux\nEmmet Cummins\nGavin Hargest\nRhodri Davies\n\n\n\nShaun Moseley\n\n\n\nMathew Thomas\n\n"+
    "\nClaire Moore\nIsobel Harries(Pick Ups)\n\nColin Wellington\n\nNaomi Hopkins\n\nAlan Jones\nNaomi Hopkins\nJohn Anthony\nRachel Williams\n\nNicole Rugman\n"+
    "\n\n\n\nTessa Robinson\n\n\nKerry Green\n\nTiffany Bale\nGemma Moloney\nRebecca Heskey\nDemi Stanley\n\n\n\nSarah Panigada\n\n\nAgata Losa\n\nBi Wen Tutssel\n"+
    "\nKimberly Hopkins\n\n\n\n\nNathaniel Marten\nDan Styles\n\n\nBilly Bilham\n\nKeith Wallis\nNathaniel Marten\nDan Styles\nChris O´Reilly\nKarin Floengard Jonsson"+
    "\nSean Bingham\nBilly Bilham\nKiel O´Shea\nFrancesca Mansfield\nCraig Hamblyn\nGordon Kemp\nKhaterine Aldridge\n\nDavid Barber\n\nRory Richards\n\n\n\n\nRhys Warlow"+
    "\n\n\nLeila Dean\n\nTalisha Weston\n\nAndrew Lewis\nEmmet Cummins\n\n\n\nColin Vine\n\n\nColin Vine\nOlly Townsend\nEllen Jaram\nMarius Dirmantas\nGavin Hargest\n"+
    "\nGavin Hargest\n\nVaughan Weston\n\n\n\n\nGavin Hargest\n\n\nZoe Morgan\n\nTony Hayes\nMari Hayes\n\nBig Fish Little Fish\n\n\nIndependent Drama", width/2 + posTex2, posTex1);

  textAlign(RIGHT);
  fill(colorText2);
  text("\n\n\nVitharr\nWyman\nHerja\nDominus Cassius\nThe Hermit\nSkuld\nAsbjorn\nInger\nRuna\nNara\nMaedoc\nBrunn\nSeward\nWyman´s Men\n\n\n\n\nFaran\nWild Woman\n"+
    "The Brothers\n\nBurly Fighter\nBorrs\nLimping Welshman\n\n\nPit Fighters\n\n\n\n\n\n\nThe Last Legion\n\n\n\n\n\n\n\n\n\n\n\nCaptives\n\n\n\n\n\n\nVillagers\n"+
    "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nMercenaries\nand Vikigns\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nDirected By\n\n\n\nWritten By\n\n\n\n\n\n"+
    "Producer\n\nLine Producer\n\nExecutive Producer\n\n\n\n\nFirst Assistant Director\n\nSecond Assistant Director\n\nThird Assistant Director\n\n"+
    "First Assistant Director\n(Pick Ups)\n\nProduction Runners\n\n\n\n\n\nProduction Assistant\n\n\n\n\nDirector of Photography\n\nFirst Assistant Camera\n\n\n"+
    "Second Assistant Camera\n\n\nDirector of Photography\n(Pick Ups)\n\nCamera Trainees\n\n\n\nGrip\n\n\nHead of Lighting\n\nLighting Technicians\n\n\n\n\n"+
    "\nSupervising Sound Editor\n\n\nSound Recordists\n\n\nBoom Operators\n\n\n\n\nSound Desing\n\nFoley Artist\n\nDialogue Editor\n\nAdditional Voices\n\n\n\n"+
    "\n\n\nMusic By\n\n\n\nProduction Designer\n\n\nArt Directors\n\n\nConstruction Manager\n\nArt Department Trainee\n\nSet Construction\n\n\n\n\nSeamstress\n\n"+
    "\n\n\nCostume Designer\n\n\nCostume Supervisor\n\nCostume Assistants\n\n\n\n\n\n\nHair Make-Up & SFX Designer\n\n\nHair & Make-Up Supervisor\n"+
    "\nHair & Make-Up Assistant\n\nHair & Make-Up Artist\n\n\n\n\nStunt Coordinators\n\n\n\nAssistant Stunt Coordinator\n\nStunt Performers\n\n\n\n\n\n\n\n\n\n"+
    "\n\n\nHorse Master\n\nHorse Rider\n\n\n\n\nEditor\n\n\nAssistant Editor\n\nDigital Imaging Technician\n\nColourists\n\n\n\n\nVFX Supervisor\n\n\nVFX Artists\n"+
    "\n\n\n\n\nMatte Painter\n\nOn Set VFX Supervision\n\n\n\n\nPhotographer\n\n\nDeliverables Co-ordinator\n\nChaperones\n\n\nCatering By\n\n\nWeapons Supplied By", width/2 - posTex2, posTex1);

  textAlign(CENTER);
  textSize(30);
  text("Production & Post Production Facilities\nProvided By Tornado Studios\n\n\n\nThe Producers Would Like To Thanks:\n\nL&A The Outdoor Centre\n"+
    "The Welsh Wildlife Trust\nNeath Port Talbot Country Borough Council\nMike Penny At Candleston Campsite\nLone Wolf Camping\nDunraven Estate\nNatural Resources Wales"+
    "\nElwyn Morgan At Marion Hall\nJane Beard At Coleg Y Cymoedd\nSandfields Bisiness Centre, Port Talbot\n\n\n\nFilmed On Location Wales.", width/2, posTex3);
  textSize(25);
  text("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nCopyright © 2017 The Lost Viking Ltd, All Rights Reserved."+
    "\nThe Lost Viking Ltd Is The Author of this motion picture for the purpose of\ncopyright and other laws. This motion picture is protected pursuant to the"+
    "\nprovisions of the laws of Great Britain and other countries.\nAny unauthorized duplication, distribution and/or exhibition of this motion\n"+
    "picture may result in civil liability and/or criminal prosecution in\naccordance whit applicable laws.\n\n\nThis motion picture is a work of fiction, any similarity between the events"+
    "\nand persons depicted and any real events or persons is purely coincidential.\n\n\n\nNo animals were in the making of this film.", width/2, posTex3);


  /////////////////////////////////Logica///////////////////////
  if (frameCount%60 == 0) {
    time++;
  }
  if (time >= 3) {

    posTex1-=2;
    posTex3-=2;
  }
  if (time >= 2) {
    alphaImgVkg--;
  }
  if (alphaImgVkg <= 0) {
    alphaImgVkg = 0;
  }

  if (time >= 111) {
    alphaImgTitle++;
  } 
  if (time >= 120) {
    botonColor = 200;
    colorR = 255;
    sonido.pause();
  }
  if (keyPressed && keyCode == RIGHT) {
    colorText1 = 180;
    colorText2 = 255;
  } else if (keyPressed && keyCode == LEFT) {
    colorText1 = 255;
    colorText2 = 180;
  } else if (keyPressed && keyCode == UP) {
    colorText1 = round(random(50, 255));
  } else if (keyPressed && keyCode == DOWN) {
    colorText2 = #3DC0D8 ;
  }




  println(frameCount, time, posTex1, mouseX, mouseY);
}

void mouseClicked() {
  boolean estaDentroDelBoton = 
    mouseX > 825 && mouseX < 875 && 
    mouseY > 525 && mouseY < 575;

  if (estaDentroDelBoton && botonColor >= 200 ) {
    time = 0;
    sonido.rewind();
    posTex1 = 700;
    posTex2 = 20;
    posTex3 = 11400;
    alphaImgVkg = 255;
    alphaImgTitle = 0;
    botonColor = 0;
    colorR = 0;
    colorText1 = 255;
    colorText2 = 180;
  }
}

void keyPressed() {
  if (keyCode == ENTER || keyCode == BACKSPACE ) {
    botonColor = 200;
    colorR = 255;
  }
}
/////////////////////////////Logica///////////////////////
