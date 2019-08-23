
void setup(){
  size(800,800);
}
float ajusteTer = HALF_PI;


void draw(){
  background(80,80,80);
  translate(width/2,height/2);
  
  //Sol
  int raioSol = min(width,height)/5;
  
  
  //Terra
  float raioTer = raioSol * 0.4;
  float SolTer = raioSol * 1.5;
  
  fill(80,80,80);
  circle(0,0,raioSol+SolTer+raioTer*4/3);
  fill(255,255,0);
  
  circle(0,0,raioSol);
  
  float XTer = SolTer*cos(ajusteTer);
  float YTer = SolTer*sin(ajusteTer);
  
  fill(0,0,255);
  circle(XTer,YTer,raioTer);
  
  //Lua
  float ajusteLua = 20 * ajusteTer;
  float raioLua = raioTer * 0.2;
  float TerLua = raioTer * 0.75; 
  
  
  float XLua = ((-raioLua+TerLua)*cos(ajusteLua) - (-raioLua+TerLua)*sin(ajusteLua) + XTer);
  float YLua = ((-raioLua+TerLua)*sin(ajusteLua) + (-raioLua+TerLua)*cos(ajusteLua) + YTer);
  
  ajusteTer += PI/720;
  
  fill(0,0,0);
  circle(XLua,YLua,raioLua);
  

  
}
