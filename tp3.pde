import ddf.minim.*;
Minim minim;
AudioPlayer player;

PImage Fondo, tomhuck, creditos, misuri, pant3, pant4, pant6, pant7, pant8, pant9, pant12;
PImage pant13, pant14, pant15, pant16, pant18, pant19, pant20, pant21, pant22, pant24, pant25;
PImage pant26, pant28, pant29, pant30, pant32, pant33, pant34, pant36, pant37, pant38, pant39, pant40, pant41;
String estado, pantFin;
PFont Berry, Tahoma, AltRes, AncRes;

void setup (){
size (800,600);
Fondo = loadImage ("presen.png");
creditos = loadImage ("creditos.png");
misuri = loadImage ("misuri.png");
pant3 = loadImage ("pant3.png");
pant4 = loadImage ("pant4.png");
pant6 = loadImage ("pant6.png");
pant7 = loadImage ("pant7.png");
pant8 = loadImage ("pant8.png");
pant9 = loadImage ("pant9.png");
pant12 = loadImage ("pant12.png");
pant13 = loadImage ("pant13.png");
pant14 = loadImage ("pant14.png");
pant15 = loadImage ("pant15.png");
pant16 = loadImage ("pant16.png");
pant18 = loadImage ("pant18.png");
pant19 = loadImage ("pant19.png");
pant20 = loadImage ("pant20.png");
pant21 = loadImage ("pant21.png");
pant22 = loadImage ("pant22.png");
pant24 = loadImage ("pant24.png");
pant25 = loadImage ("pant25.png");
pant26 = loadImage ("pant26.png");
pant28 = loadImage ("pant28.png");
pant29 = loadImage ("pant29.png");
pant30 = loadImage ("pant30.png");
pant33 = loadImage ("pant33.png");
pant32 = loadImage ("pant32.png");
pant34 = loadImage ("pant34.png");
pant36 = loadImage ("pant36.png");
pant37 = loadImage ("pant37.png");
pant38 = loadImage ("pant38.png");
pant39 = loadImage ("pant39.png");
pant40 = loadImage ("pant40.png");
pant41 = loadImage ("pant41.png");

minim = new Minim (this);
player = minim.loadFile("tom.mp3");

player.play();

estado = "intro";
Berry = createFont ("Berry-Rotunda.ttf", 25);
Tahoma = loadFont("Tahoma-48.vlw");
}

void draw(){
background(0);
image (Fondo,0,0);
 if (estado.equals("intro")) {
    image(Fondo, 0, 0);
    textAlign (CENTER);
    textFont(Tahoma,25);
    fill (0, 0, 0, 250);
    text ("PRESIONA UNA TECLA PARA CONTINUAR", 400, 553);
    fill(255);
    text ("PRESIONA UNA TECLA PARA CONTINUAR", 400, 550);
    strokeWeight(3);
    stroke(0);
    fill(255,255,255,100);
    rect (570,17,190,45);
    fill(0);
    text ("VER CREDITOS", 665, 50);
        if (mouseX > 570 && mouseX < 760 && 
    mouseY > 17 && mouseY < 62 && mousePressed){
    estado="creditos";
    }
 } 
 
 // Pantalla Final
 
if (estado.equals("creditos")){
    image (creditos,0,0);
    textFont(Tahoma,25);
    fill(255);
    textAlign (CENTER);
    text("Agradecimientos especiales a Mark Twain.", 400,250);
    text("Esta aventura gráfica fue hecha para la UNLP - Facultad de Bellas Artes", 400,300);
    text("Sin ánimo de lucro y con el fín de aprender de manera didactica", 400,350);
    text("y divertida, a programar en Processing...", 400,400);
    text("PRESIONE BARRA ESPACIADORA PARA VOLVER A EMPEZAR", 400, 550);
        if (mouseX > 710 && mouseX < 760 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="intro";
    }
    }

 // Pantalla 2
  if (estado.equals("misuri")){
    image (misuri,0,0);
    fill (0, 0, 0, 250);
    text ("PRESIONA ENTER PARA CONTINUAR", 402, 553);
    text ("Estados Unidos, Missouri - año 1876",402, 353);
    text ("En un poblado, a orillas del río Mississippi",402, 403);
    text ("vive Tom Sawyer, un muchacho travieso, experto",402, 433);
    text ("en saltarse las normas y escabullirse de la escuela...",402, 463);
    fill(255);
    text ("PRESIONA ENTER PARA CONTINUAR", 400, 550);
    textAlign(CENTER);
    text ("Estados Unidos, Missouri - año 1876",400, 350);
    text ("En un poblado, a orillas del río Mississippi",400, 400);
    text ("vive Tom Sawyer, un muchacho travieso, experto",400, 430);
    text ("en saltarse las normas y escabullirse de la escuela...",400, 460);
    fill (0, 0, 0, 250);
  }
  
 // Pantalla 3
if (estado.equals("pant3")){
    image(pant3,0,0);
    textAlign(CENTER);
    textSize(20);
    textFont(Berry);
    text ("Tom es buscado por su tía Polly...",400,510);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (660,535,40,50);
    fill (0);
    text (">",680,580);
    if (mouseX > 660 && mouseX < 700 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant4";
    }
}
    
 // Pantalla 4 y 5
if (estado.equals("pant4")){
    image (pant4,0,0);
    fill(255,255,255,75);
    rect(0,400,800,50);
    rect(0,470,800,50);
    textAlign(CENTER);
    fill(0);
    textSize(25);
    text("Esconderse y huir",400,435);
    text("Enfrentar la reprimenda",400,505);
    if (mouseX > 0 && mouseX < 800 && 
    mouseY > 400 && mouseY < 450 && mousePressed){
    estado="pant6";
    }
    if (mouseX > 0 && mouseX < 800 && 
    mouseY > 470 && mouseY < 520 && mousePressed){
    estado ="pant8";
    }
}
 
 // Pantalla 6
    if (estado.equals("pant6")){
    textAlign(CENTER);
    image (pant6,0,0);
    textSize(20);
    text("Tom es atrapado por su tía, sin embargo",400,500);
    text("audazmente logra escapar y se va a nadar al río...",400,530);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (660,535,40,50);
    fill (0);
    text (">",680,580);
    if (mouseX > 660 && mouseX < 700 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant7";
    }
    }
 // Pantalla 7
    if (estado.equals("pant7")){
    image (pant7,0,0);
    textSize(20);
    text("Tom vuelve a casa y su tía lo confronta ",400,510);
    text ("para saber si fue a clases...",400,540);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (700,535,40,50);
    fill (0);
    text (">",720,580);
        if (mouseX > 700 && mouseX < 740 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant8";
    }
    }
 // Pantalla 8
    if (estado.equals("pant8")){
    image (pant8,0,0);
    textSize(20);
    text("Al otro día, Tom es obligado a pintar la valla...",400,510);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (660,535,40,50);
    fill (0);
    text (">",680,580);
    if (mouseX > 660 && mouseX < 700 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant9";
    }
    }
    
 // Pantalla 9, 10 y 11
    if (estado.equals("pant9")){
    image (pant9,0,0);
    textSize(20);
    text("Unos niños se acercan a Tom mientras pinta las vallas...",400,50);
    fill(255,255,255,75);
    rect(0,400,800,50);
    rect(0,470,800,50);
    textAlign(CENTER);
    fill(0);
    textSize(25);
    text("Engañar a los niños",400,435);
    text("Seguir pintando solo",400,505);
    if (mouseX > 0 && mouseX < 800 && 
    mouseY > 400 && mouseY < 450 && mousePressed){
    estado="pant12";
    }
    if (mouseX > 0 && mouseX < 800 && 
    mouseY > 470 && mouseY < 520 && mousePressed){
    estado ="pant13";
    }
    }
    
 // Pantalla 12
    if (estado.equals("pant12")){
    image (pant12,0,0);
    textSize(20);
    text("Los niños pintan las vallas y le pagan a",400,500);
    text ("Tom por un turno pintando...", 400, 540);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (660,535,40,50);
    fill (0);
    text (">",680,580);
    if (mouseX > 660 && mouseX < 700 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant14";
    }
    }
    
 // Pantalla 13
    if (estado.equals("pant13")){
    image (pant13,0,0);
    textSize(20);
    text("Se hace de noche y Tom se va a casa",400,500);
    text ("agotado de tanto trabajo...", 400, 540);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (660,535,40,50);
    fill (0);
    text (">",680,580);
    if (mouseX > 660 && mouseX < 700 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant14";
    }
    }
    
    
 // Pantalla 14
    if (estado.equals("pant14")){
    image (pant14,0,0);
    textSize(20);
    text("Tia Polly felicita a Tom por el buen trabajo",400,500);
    text ("y lo recompensa con dulces...", 400, 540);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (700,535,40,50);
    fill (0);
    text (">",720,580);
        if (mouseX > 700 && mouseX < 740 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant15";
    }
    }
    
     // Pantalla 15
    if (estado.equals("pant15")){
    image(pant15,0,0);
    textSize(20);
    text(" Al otro día, Tom conoce a Huckleberry Finn",400,500);
    text("y se hacen los mejores amigos",400,540);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (660,535,40,50);
    fill (0);
    text (">",680,580);
    if (mouseX > 660 && mouseX < 700 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant16";
    }
    }
    
    // Pantalla 16 y 17
    if (estado.equals("pant16")){
    image(pant16,0,0);
    fill(255,255,255,75);
    rect(0,400,800,50);
    rect(0,470,800,50);
    textAlign(CENTER);
    fill(0);
    textSize(25);
    text("Quedarse a jugar con Huck",400,435);
    text("Ir a la escuela",400,505);
    if (mouseX > 0 && mouseX < 800 && 
    mouseY > 400 && mouseY < 450 && mousePressed){
    estado="pant20";
    }
    if (mouseX > 0 && mouseX < 800 && 
    mouseY > 470 && mouseY < 520 && mousePressed){
    estado ="pant18";
    }
    }
    
    // Pantalla 18
    if (estado.equals("pant18")){
    image(pant18,0,0);
    textSize(20);
    text("Tom va a Clases y les cuenta a sus compañeros",400,500);
    text ("acerca de Huckleberry Finn...", 400, 540);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (660,535,40,50);
    fill (0);
    text (">",680,580);
    if (mouseX > 660 && mouseX < 700 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant19";
    }
    }
    // Pantalla 19
    if (estado.equals("pant19")){
    image(pant19,0,0);
    textSize(20);
    text("Tom Conoce a Becky Thatcher en la escuela.",400,500);
    text("luego de una reprimenda del maestro...", 400, 540);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (700,535,40,50);
    fill (0);
    text (">",720,580);
        if (mouseX > 700 && mouseX < 740 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant20";
    }
    }
    
    // Pantalla 20
    if (estado.equals("pant20")){
    image(pant20,0,0);
    textSize(20);
    text("Tan pronto se hace de noche...",400,500);
    text("Tom visita el cementerio de noche con Huck", 400, 540);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (660,535,40,50);
    fill (0);
    text (">",680,580);
    if (mouseX > 660 && mouseX < 700 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant21";
    }
    }
    // Pantalla 21
    if (estado.equals("pant21")){
    image(pant21,0,0);
    textSize(20);
    text("Tom y Huck son testigos de un asesinato",400,500);
    text("Ambos presencian como Joe el Indio", 400, 540);
    text("asesina a sangre fría a otro sujeto", 400, 580);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (700,535,40,50);
    fill (0);
    text (">",720,580);
    if (mouseX > 700 && mouseX < 740 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant22";
    }
    }
    
    // Pantalla 22
    if (estado.equals("pant22")){
    image (pant22,0,0);
    fill(255,255,255,75);
    rect(0,300,800,50);
    rect(0,370,800,50);
    textAlign(CENTER);
    fill(0);
    textSize(25);
    text("¡Huir del pueblo!",400,335);
    text("¡Avisar a las autoridades!",400,405);
    if (mouseX > 0 && mouseX < 800 && 
    mouseY > 300 && mouseY < 350 && mousePressed){
    estado="pant24";
    }
    if (mouseX > 0 && mouseX < 800 && 
    mouseY > 370 && mouseY < 420 && mousePressed){
    estado ="pant25";
    }
    }
    // Pantalla 24
    if (estado.equals("pant24")){
    image (pant24,0,0);
    fill(255,255,255,75);
    rect(0,450,800,50);
    rect(0,520,800,50);
    textAlign(CENTER);
    fill(0);
    textSize(25);
    text ("Tom arma una balsa y escapa con sus amigos", 400, 100);
    text("Seguir navegando",400,485);
    text("Volver al pueblo",400,555);
    if (mouseX > 0 && mouseX < 800 && 
    mouseY > 450 && mouseY < 500 && mousePressed){
    estado="pant28";
    }
    if (mouseX > 0 && mouseX < 800 && 
    mouseY > 520 && mouseY < 570 && mousePressed){
    estado ="pant29";
    }
    }
    // Pantalla 25
    if (estado.equals("pant25")){
    image(pant25,0,0);
    textSize(20);
    text("Tom y sus amigos son recibidos",400,500);
    text("y deciden testificar sobre el homicidio.", 400, 540);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (660,535,40,50);
    fill (0);
    text (">",680,580);
    if (mouseX > 660 && mouseX < 700 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant33";
    }
    }
    // Pantalla 26
    if (estado.equals("pant26")){
    image (pant26,0,0);
    }
    // Pantalla 28
    if (estado.equals("pant28")){
    image (pant28,0,0);
    textSize(20);
    text("Tom llega a una pequeña isla y",400,500);
    text("la balsa es arrastrada río abajo...",400,540);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (660,535,40,50);
    fill (0);
    text (">",680,580);
    if (mouseX > 660 && mouseX < 700 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant30";
    }
    }
    // Pantalla 29
    if (estado.equals("pant29")){
    image (pant29,0,0);
    textSize(20);
    text("Tom es recibido por su Tía Polly",400,500);
    text("ella lo abraza con mucho cariño", 400, 530);
    text("debido a que los creían muertos.", 400, 560);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (710,535,40,50);
    fill (0);
    text (">",730,580);
    if (mouseX > 710 && mouseX < 760 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant25";
    }
    }
    
    // Pantalla opciones 30 y 27
    if (estado.equals("pant30")){
    image (pant30,0,0);
    fill(255,255,255,75);
    rect(0,300,800,50);
    rect(0,370,800,50);
    textAlign(CENTER);
    fill(0);
    textSize(25);
    text("Construir otra balsa",400,335);
    text("Volver al pueblo",400,405);
    if (mouseX > 0 && mouseX < 800 && 
    mouseY > 300 && mouseY < 350 && mousePressed){
    estado="pant32";
    }
    if (mouseX > 0 && mouseX < 800 && 
    mouseY > 370 && mouseY < 420 && mousePressed){
    estado ="pant29";
    }
    }
        // Pantalla 32
    if (estado.equals("pant32")){
    image (pant32,0,0);
    textSize(20);
    text ("Tom comienza sus aventuras formando una pandilla.",400,510);
    text ("con sus amigos y emprenden un nuevo viaje...",400,540);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (710,535,40,50);
    fill (0);
    text (">",730,580);
    if (mouseX > 710 && mouseX < 760 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant41";
    }
    }
    // Pantalla 33
    if (estado.equals("pant33")){
    image (pant33,0,0);
    textSize(20);
    text ("Joe el indio es encontrado culpable de asesinato.",400,510);
    text ("Sin embargo, logra escapar del juicio",400,540);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (710,535,40,50);
    fill (0);
    text (">",730,580);
    if (mouseX > 710 && mouseX < 760 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant34";
    }
    }
    
    // Pantalla 34
    if (estado.equals("pant34")){
    image (pant34,0,0);
    fill(255,255,255,75);
    rect(0,400,800,50);
    rect(0,470,800,50);
    textAlign(CENTER);
    fill(0);
    textSize(25);
    text("Ir con Becky",400,435);
    text("Ir con Huck",400,505);
    if (mouseX > 0 && mouseX < 800 && 
    mouseY > 400 && mouseY < 450 && mousePressed){
    estado="pant36";
    }
    if (mouseX > 0 && mouseX < 800 && 
    mouseY > 470 && mouseY < 520 && mousePressed){
    estado ="pant37";
    }
    }
    // Pantalla 36
    if (estado.equals("pant36")){
    image (pant36,0,0);
    textSize(20);
    text ("Tom y Becky se aventuran a explorar",400,510);
    text ("una antigua cueva minera cerrada hace tiempo",400,540);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (710,535,40,50);
    fill (0);
    text (">",730,580);
    if (mouseX > 710 && mouseX < 760 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant38";
    }
    }
    
    // Pantalla 37
    if (estado.equals("pant37")){
    image (pant37,0,0);
    textSize(20);
    text ("Tom y Huck se juntan por la tarde a pescar.",400,510);
    text ("Becky los encuentra y se une a la diversión",400,540);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (710,535,40,50);
    fill (0);
    text (">",730,580);
    if (mouseX > 710 && mouseX < 760 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant39";
    }
    }
    
    // Pantalla 38
    if (estado.equals("pant38")){
    image (pant38,0,0);
    textSize(20);
    text ("Becky y Tom encuentran a Joe el Indio,",400,490);
    text ("escondido dentro de la cueva.",400,520);
    text ("Ambos escapan de allí.",400,550);
    text ("y deciden regresar con Huck al otro día",400,580);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (660,535,40,50);
    fill (0);
    text (">",680,580);
    if (mouseX > 660 && mouseX < 700 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant40";
    }
    }
    
    // Pantalla 39
    if (estado.equals("pant39")){
    image (pant39,0,0);
    textSize(20);
    text ("Tom, Huck y Becky se vuelven los mejores amigos",400,500);
    text ("Juntos forman una pandilla",400,530);
    text ("y se dedican a hacer travesuras",400,560);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (660,535,40,50);
    fill (0);
    text (">",680,580);
    if (mouseX > 660 && mouseX < 700 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant41";
    }
    }
    
    // Pantalla 40
    if (estado.equals("pant40")){
    image (pant40,0,0);
    textSize(20);
    text ("Huck y Tom regresan a la cueva y",400,510);
    text ("encuentran el tesoro escondido",400,540);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (710,535,40,50);
    fill (0);
    text (">",730,580);
    if (mouseX > 710 && mouseX < 760 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pant41";
    }
    }
    
        // Pantalla 41
    if (estado.equals("pant41")){
    image (pant41,0,0);
    textSize(20);
    text ("Más pronto que tarde...",400,500);
    text ("El resto de los chicos de la escuela se unen a la pandilla",400,530);
    text ("¿Qué les deparará a nuestros jóvenes?",400,560);
    textSize(70);
    fill (255, 255, 255, 100);
    rect (660,535,40,50);
    fill (0);
    text (">",680,580);
    if (mouseX > 660 && mouseX < 700 && 
    mouseY > 535 && mouseY < 585 && mousePressed){
    estado="pantFin";
    }
    }
    
    // Pantalla Fin
    if (estado.equals("pantFin")){
    background(0);
    fill(255);
    textFont(Berry,70);
    text("Fin", 400, 300);
    textFont(Tahoma,25);
    text("PRESIONA UNA TECLA PARA CONTINUAR", 400, 550);
    }
    // Corchete cierre void
}


void keyPressed(){

if (estado.equals("intro")){
 estado = "misuri";
} 

if (estado.equals("misuri")){
  if (keyCode == ENTER)
  estado = "pant3";
}

if (estado.equals("pantFin")){
  estado = "creditos";
}
if (estado.equals("creditos")){
  if (key == ' ' )
  estado = "intro";
}

// Corchete cierre void
}
