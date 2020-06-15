import ddf.minim.*;
Minim minim;
AudioPlayer player;

PFont Font1;
PFont Font2;
float A = 0.6;

void setup (){
size (600,600);
minim = new Minim (this);
player = minim.loadFile("star.mp3");

player.play();


Font1 = createFont("Arial", 30);
Font2 = createFont ("Starjout.ttf", 45);


}

void draw(){
background(0);
PImage Fondo;
Fondo = loadImage ("fondo.jpg");
image (Fondo,0,0);  

A = A - 1;

textSize(10);
textAlign(LEFT, CENTER);
text("Click detener música",10,15);
textAlign(RIGHT, CENTER);
text("Tecla continuar música",590,15);

textAlign(CENTER);


textSize(25);
fill(0,150,250);
text( "Hace mucho tiempo en una galaxia, muy,",height/2,250 + A);

textAlign(LEFT, CENTER);

text( "muy lejana...",71,280 + A);


textAlign(CENTER);
fill(210,200,0);
textFont(Font2);
textSize(60);
text ("STAR WARS",height/2,920 + A);


stroke(210,200,0);
fill(210,200,0);
line(100,930 + A, 500, 935 + A);

fill (210,200,0);
textFont(Font1);
text("KNIGHTS OF THE OLD REPUBLIC", height/2, 970 + A);

textSize(20);
text("Protagonistas", height/2, 1050 + A);

textAlign(LEFT, CENTER);
textSize(20);

text("Luke Skywalker", 50, 1100 +A);
text("Kyle Katarn", 50, 1130 +A);
text("The Mandalorian", 50, 1160 +A);
text("Leia Organa", 50, 1190 +A);
text("Han Solo", 50, 1220 +A);
text("Darth Revan", 50, 1250 +A);
text("Darth Sidious", 50, 1280 +A);
text("Mace Windu", 50, 1310 +A);
text("Darth Malak", 50, 1340 +A);
text("Anakin Skywalker", 50, 1370 +A);
text("Kylo Ren", 50, 1400 +A);

textAlign(RIGHT, CENTER);
textSize(20);

text("Mark Hamill", 550, 1100 +A);
text("Robert Redfor", 550, 1130 +A);
text("Din Djarin", 550, 1160 +A);
text("Carry Fisher", 550, 1190 +A);
text("Harrison Ford", 550, 1220 +A);
text("Kenyon Moore", 550, 1250 +A);
text("Ian McDiarmid", 550, 1280 +A);
text("Samuel L. Jackson", 550, 1310 +A);
text("Darth Malak", 550, 1340 +A);
text("Hayden Christensen", 550, 1370 +A);
text("Adam Driver", 550, 1400 +A);

textAlign(CENTER);
textSize(20);
text("Music", height/2, 1450 + A);
text("ElRubiusOMG", height/2, 1500 + A);
text("Vegeta777", height/2, 1530 + A);
text("MangelRogel", height/2, 1560 + A);
text("GeekClown", height/2, 1590 + A);
text("George McFly", height/2, 1620 + A);
text("Calvin Klein", height/2, 1650 + A);
text("Mike Tyson", height/2, 1680 + A);
text("The Queen", height/2, 1710 + A);
text("Ricardo Fort", height/2, 1740 + A);

}

void mousePressed(){

player.pause();


}

void keyPressed(){

player.play();
}
