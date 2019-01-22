//vi skal i upgrade området gøre at man kan ikke gøre noget

Game G;

import processing.sound.*;
SoundFile MenuSound;
SoundFile MenuSound2;
void setup() {
  size(800, 400);
  G = new Game();
  //MenuSound = new SoundFile(this, "Great Fairy's Fountain Theme.mp3");
  //MenuSound.loop();
  //MenuSound2 = new SoundFile(this, "Kingdom Hearts 2 - Dearly Beloved II.mp3");
  //MenuSound2.loop();
}

void draw() {
  background(255);
  G.run();
}

boolean[] keys = new boolean[10];

void keyPressed() {
  switch (key) {
  case ' ':
    keys[0] = true;
    break;
  case 'a':
    keys[1] = true;
    break;
  case 's':
    keys[2] = true;
    break;
  case 'd':
    keys[3] = true;
    break;
  case 'w':
    keys[4] = true;
    break;
  }
  switch (keyCode) {
  case RIGHT:
    keys[5] = true;
    break;
  case LEFT:
    keys[6] = true;
    break;
  case DOWN:
    keys[7] = true;
    break;
  case UP:
    keys[8] = true;
    break;
  case ESC:
    keys[9] = true;
    key = 0;
    break;
  }
}

void keyReleased() {
  switch (key) {
  case ' ':
    keys[0] = false;
    G.T.St = 0;
    break;
  case 'a':
    keys[1] = false;
    G.T.Bt1=0;
    break;
  case 's':
    keys[2] = false;
    G.T.Bt1=0;
    break;
  case 'd':
    keys[3] = false;
    G.T.Bt1=0;
    break;
  case 'w':
    keys[4] = false;
    G.T.Bt1=0;
    break;
  }
  switch (keyCode) {
  case RIGHT:
    keys[5] = false;
    G.T.Bt2=0;
    break;
  case LEFT:
    keys[6] = false;
    G.T.Bt2=0;
    break;
  case DOWN:
    keys[7] = false;
    G.T.Bt2=0;
    break;
  case UP:
    keys[8] = false;
    G.T.Bt2=0;
    break;
  case ESC:
    keys[9] = false;
    key = 0;
    G.T.es = 0;
    break;
  }
}
