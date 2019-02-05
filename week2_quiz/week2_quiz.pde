color circleColor1, circleColor2, rectColor1, rectColor2;
boolean circleTouched, circlePressed;
String displayQuote = "choose wisely!";
int distance1, distance2;

void setup() {
  
  size(1000, 500);
  
  rectColor1 = color(255);
  rectColor2 = color(255);
  fill(rectColor1);
  rect(0, 0, width/2, height);
  fill(rectColor2);
  rect(width/2, 0, width/2, height);
}
 
void draw() {
  
   if(distance1<50){
    circleColor1 = color(255);
  }else{
    circleColor1 = color(200);
  }
  
  if(distance2<50){
    circleColor2 = color(255);
  }else{
    circleColor2 = color(200);
  }
  
  fill(circleColor1);
  noStroke();
  ellipse(width/4, height/2, 100, 100);
  
  fill(circleColor2);
  noStroke();
  ellipse(width/4*3, height/2, 100, 100);
  
  if(distance1<50 && mousePressed){
    rectColor1 = random()
    
  
  distance1 = int(dist(width/4, height/2, mouseX,mouseY));
  distance2 = int(dist(width/4*3, height/2, mouseX,mouseY));
  }

void mousePressed() {
  if(distance1<50){
    circlePressed = !circlePressed;
  }
  if(distance2<50){
    circlePressed = !circlePressed;
  }
}
