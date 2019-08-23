void setup(){
  size(500,500);
  rectMode(CENTER);
}

void draw(){
  background(80,80,80);
  translate(width/2,height/2);
  int r = 200;
  int n = 60;
  float angulo = TWO_PI/n;
  fill(255);
  ellipse(0,0,r*2,r*2);
  
  for(int i = 1; i<=n; i++)
  {
    float x = r*cos(angulo*i-HALF_PI);
    float y = r*sin(angulo*i-HALF_PI);
    if(i%5==0)
      {
        stroke(20,20,20);
        line(x,y,0.85*x,0.85*y);
        fill(0);
        text(i/5,0.8*x,0.8*y);
      }
    else
      {
        stroke(20,20,20);
        line(x,y,0.9*x,0.9*y);  
      }
  }
  
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
  
  int tamSegundo = 33;
  int tamMinuto = 66;
  int tamHora = 100;
  
  stroke(240,40,40);
  line(0,0,cos(s)*33,sin(s)*33);
  stroke(40,240,40);
  line(0,0,cos(m)*66,sin(m)*66);
  stroke(40,40,240);
  line(0,0,cos(h)*100,sin(h)*100);
  
}
