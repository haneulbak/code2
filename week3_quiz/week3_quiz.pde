Rain drop;
Cloud clcl;

ArrayList <Rain> rainDrops;
ArrayList <Cloud> clouds;

void setup(){
  size(800,800);
  drop = new Rain();
  rainDrops = new ArrayList <Rain>();
  clcl = new Cloud();
  clouds = new ArrayList <Cloud>();
}

void draw(){
  background(255);
  
  for (int i=0; i<rainDrops.size(); i++){
    Rain r = rainDrops.get(i);
    r.move();
    r.generate();
    r.display();
  }
  if(frameCount % 20 == 0){
    rainDrops.add(new Rain());
  }
  
  for (int j=0; j<clouds.size(); j++){
    Cloud c = clouds.get(j);
    c.move();
    c.presence();
    c.display();
  }
  if(frameCount % 50 == 0){
    clouds.add(new Cloud());
  }
}
