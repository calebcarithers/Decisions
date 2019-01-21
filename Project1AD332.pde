int diameterX = 100;
int diameterY = 100;
int xAway = diameterX*2;
int distance = 100;
int zTrans = 4000;
float angle1 = 15;
float angle2 = 30;
float angle3 = 60;
float angle4 = 75;
int posX, posY;
float cameraX, cameraY, cameraZ, rotX, rotY;
int offset;


void setup() {
  size(700, 700, P3D);
  cameraX = width/2.0;
  cameraY = height/2.0;
  cameraZ = 5300;
  posX = width/2;
  posY = height/2;
  rotX = 0;
  rotY = 0;
  
  offset = 50;
  ambientLight(102,102,102,posX, posY, zTrans);
}

void draw() {
  
background(0);

if (cameraZ > 1){
  
  for (float i = 0.5; i <= 360; i = i + 0.5) {
    stroke(random(0,255), random(0,255), random(0,255));
    strokeWeight(random(0.1,2));
    line(posX + ((diameterX/2)*cos(radians(i))), posY - ((diameterY/2)*sin(radians(i))), zTrans, posX + ((diameterX/2)*cos(radians(i))), posY - ((diameterY/2)*sin(radians(i))), 0); 
}

  for (float i = 0.3; i<= 360; i = i + 0.3) {
    stroke(255, 255, 255);
    strokeWeight(0.1);
    line(diameterX + posX + ((diameterX/2)*cos(radians(i))) + offset, posY - ((diameterY/2)*sin(radians(i))), zTrans, posX + ((diameterX/2)*cos(radians(i))), posY - ((diameterY/2)*sin(radians(i))), 0);
    line(2*diameterX + posX + ((diameterX/2)*cos(radians(i))) + offset, posY - ((diameterY/2)*sin(radians(i))), zTrans, posX + ((diameterX/2)*cos(radians(i))), posY - ((diameterY/2)*sin(radians(i))), 0);
    line(4*diameterX + posX + ((diameterX/2)*cos(radians(i))) + offset, posY - ((diameterY/2)*sin(radians(i))), zTrans, posX + ((diameterX/2)*cos(radians(i))), posY - ((diameterY/2)*sin(radians(i))), 0);
    line(-diameterX + posX + ((diameterX/2)*cos(radians(i))) - offset,  posY - ((diameterY/2)*sin(radians(i))), zTrans, posX + ((diameterX/2)*cos(radians(i))), posY - ((diameterY/2)*sin(radians(i))), 0);
    line(-2*diameterX + posX + ((diameterX/2)*cos(radians(i))) - offset,  posY - ((diameterY/2)*sin(radians(i))), zTrans, posX + ((diameterX/2)*cos(radians(i))), posY - ((diameterY/2)*sin(radians(i))), 0);
    line(-4*diameterX + posX + ((diameterX/2)*cos(radians(i))) - offset,  posY - ((diameterY/2)*sin(radians(i))), zTrans, posX + ((diameterX/2)*cos(radians(i))), posY - ((diameterY/2)*sin(radians(i))), 0);

  }
}

camera(width/2.0 + rotX, height/2.0 + rotY, cameraZ, cameraX, cameraY, 0, 0, 1, 0);
cameraZ -= 3;

 
   if (keyPressed == true) {
     if (keyCode == UP) {
      yUp(); 
    } else if (keyCode == DOWN) {
      yDown();
    } else if (keyCode == RIGHT) {
      xRight();
    } else if (keyCode == LEFT) {
      xLeft();
    } else if (key == 'z') {
      zUp();
    } else if (key == 'x') {
      zBack();
    } else if (key == 'a') {
      minusRotX();
    } else if (key == 'd') {
      plusRotX();
    } else if (key == 'w') {
      plusRotY();
    } else if (key == 's') {
      minusRotY();
    }
  }
}

void yUp() {
  cameraY += 8;
}

void yDown() {
  cameraY -= 8;
}

void xRight() {
  cameraX -= 8;
}

void xLeft() {
  cameraX += 8;
}

void zUp() {
  cameraZ -= 5;
}

void zBack() {
  cameraZ += 5;
}

void plusRotX() {
  rotX -= 5;
}

void minusRotX() {
  rotX += 5;
}

void plusRotY() {
  rotY += 1.5;
}

void minusRotY() {
  rotY -= 1.5;
}
