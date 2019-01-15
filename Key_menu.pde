class Keymenu {

  boolean leave;
  int lea;

  Keymenu() {
  }

  void display() {
    fill(random(0, 255), random(0, 255), random(0, 255));
    stroke(0);
    strokeWeight(2);
    rect(width*1/8, height/4, width*6/8, height*2/4 );//P1 store box
  }
  void leave() {
    fill(255, lea, 255);
    stroke(0);
    strokeWeight(2);
    rect(0, 0, 80, 80);

    if (mouseX>=0 && mouseX<=80 && mouseY>=0 && mouseY<=80 ) {
      G.M.t=0;
      lea = 0;
      G.M.screen[3]=false;
      leave = true;
    } else {
      lea = 255;
      leave = false;
    }
  }

  void run() {
    leave();
    display();
  }
}
