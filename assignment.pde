
//for person's eyes
PVector leftEye;
PVector rightEye;
//bcground 
PImage img;

void setup (){
  size (736,1102) ; //window size 
  //bcground
img = loadImage("22.jpg");
background(img);
  leftEye = new PVector(76, 790);
  rightEye = new PVector(184,790);
}
void draw () {
  
 //middle upper triangle
 fill(38,99,250);
 strokeWeight(0);
 stroke(38,99,250);

 triangle (368,371,343,451,393,451);
  
//orange flame 
fill(255,42,0);
stroke(255,42,0);
strokeWeight(0);
beginShape();
vertex(340,651);
vertex(396,651);
vertex(428,711);
vertex(368,781);
vertex(308,711);
endShape();

//yellow flame 
fill (255,196,0);
strokeWeight(1);
stroke(255,196,0);
beginShape();
vertex(343,651);
vertex(393,651);
vertex(400,681);
vertex(368,721);
vertex(336,681);
endShape();
  //body
fill (255);
strokeWeight(0);
stroke(255);
rect (343,451,50,200) ;

//top parts
strokeWeight(0);
stroke(252,13,49);
fill(252,13,49);
triangle (343,501,343,451,293,501);
triangle (393,451, 393,501, 443,501); // right


//bottomleft part
quad (343,601,343,646,  273, 666, 293, 621);

//bottom right part
quad (393,601,393,646,466,666,443,621);






// person 

//body 
strokeWeight(2);
stroke(0);
fill(235, 255,106);
ellipse (130, 970, 130,190);


// hair 
fill (80,36,11);
stroke(0);
arc(130,830,220,270, 3.14, 2*3.14);


//ears 

strokeWeight(1.5);
stroke(0,0,0);
fill(247,212,212);
ellipse (230,820, 35,35);
ellipse (30,820, 35,35);

//head
smooth();
strokeWeight(1.5);
stroke(0,0,0);
fill(247,212,212);
ellipse (130,820, 205,205);


//nose

smooth();
strokeWeight(1.5);
stroke(0,0,0);
fill(247,212,212);
arc(130,820,15,25, .5*3.14,1.85*3.14);

//mouth

fill (121,23,7);
stroke(0);
arc(130,875,60,50, 3.14, 2*3.14);
line (100,875,160,875);
//eyes 
PVector mouseVector = new PVector(mouseX, mouseY);

  PVector leftPupil = leftEye.copy().add(mouseVector.copy().sub(leftEye).setMag(10));
  PVector rightPupil = rightEye.copy().add(mouseVector.copy().sub(rightEye).setMag(10));

  fill(255);
  ellipse(leftEye.x, leftEye.y, 60,60);
  ellipse(rightEye.x, rightEye.y, 60,60);

  fill(0);
  ellipse(leftPupil.x, leftPupil.y, 10,10);
  ellipse(rightPupil.x, rightPupil.y, 10,10);
}
