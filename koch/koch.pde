void setup() {
  size(800, 800);
}


/*Como o roda funciona para ter uma base ao escrever Koch

void roda(float x1, float y1, float x3, float y3, float ang, float x2, float y2) {
  float b2x = x3-x1;
  float b2y = y3-y1;
  float c2x = b2x*cos(ang) - b2y*sin(ang);
  float c2y = b2x*sin(ang) + b2y*cos(ang);
  x2 = c2x + x1;
  y2 = c2y + y1;
}*/

void kochCima(float x0, float y0, float xf, float yf, int nivel) {
  if (nivel == 6) {
    line(x0, y0, xf, yf);
  } else
  {
    float x1 = (1-(1/3.0))*x0 + (1/3.0)*xf;
    float y1 = (1-(1/3.0))*y0 + (1/3.0)*yf;
    float x3 = (1-(2/3.0))*x0 + (2/3.0)*xf;
    float y3 = (1-(2/3.0))*y0 + (2/3.0)*yf;
    float x2 = (x3-x1)*cos(-PI/3) - (y3-y1)*sin(-PI/3) + x1;
    float y2 = (x3-x1)*sin(-PI/3) + (y3-y1)*cos(-PI/3) + y1;
    kochCima(x0, y0, x1, y1, nivel+1);
    kochCima(x1, y1, x2, y2, nivel+1);
    kochCima(x2, y2, x3, y3, nivel+1);
    kochCima(x3, y3, xf, yf, nivel+1);
  }
}

void kochBaixo(float x0, float y0, float xf, float yf, int nivel) {
  if (nivel == 6) {
    line(x0, y0, xf, yf);
  } else
  {
    float x1 = (1-(1/3.0))*x0 + (1/3.0)*xf;
    float y1 = (1-(1/3.0))*y0 + (1/3.0)*yf;
    float x3 = (1-(2/3.0))*x0 + (2/3.0)*xf;
    float y3 = (1-(2/3.0))*y0 + (2/3.0)*yf;
    float x2 = (x3-x1)*cos(PI/3) - (y3-y1)*sin(PI/3) + x1;
    float y2 = (x3-x1)*sin(PI/3) + (y3-y1)*cos(PI/3) + y1;
    kochBaixo(x0, y0, x1, y1, nivel+1);
    kochBaixo(x1, y1, x2, y2, nivel+1);
    kochBaixo(x2, y2, x3, y3, nivel+1);
    kochBaixo(x3, y3, xf, yf, nivel+1);
  }
}


void draw() {
  background(80,80,80);
  float camadas = map(0,0,100,mouseX,width);
  kochCima(0, height/2, width, height/2, 6 - (int)camadas/100);
  kochBaixo(0, height/2, width, height/2, 6 - (int)camadas/100);
}
