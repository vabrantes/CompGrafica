
void setup(){
  size(800,800);
}
float ajusteTer = HALF_PI;


void draw(){
  background(80,80,80);
  translate(width/2,height/2);
  //Sol
  fill(255,255,0);
  int raioSol = 120;
  circle(0,0,raioSol);
  
  //Terra
  float raioTer = raioSol * 0.4;
  float SolTer = raioSol * 1.5;
  
  float XTer = SolTer*cos(ajusteTer);
  float YTer = SolTer*sin(ajusteTer);
  
  fill(0,0,255);
  circle(XTer,YTer,raioTer);
  
  //Lua
  float ajusteLua = 20 * ajusteTer;
  float raioLua = raioTer * 0.2;
  float TerLua = raioTer * 0.7; 
  
  translate(XTer,YTer);
  
  float XLua = TerLua*cos(ajusteLua);
  float YLua = TerLua*sin(ajusteLua);
  
  ajusteTer += PI/720;
  
  fill(0,0,0);
  circle(XLua,YLua,raioLua);
  
  translate(width/2,height/2);
  
}
