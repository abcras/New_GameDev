class escMenu {

  PFont f;

  boolean es;
  boolean[] Opt = new boolean[4];
  int[] chol = new int[4];

  escMenu() {
  }

  void choises() {  

    if (mouseX >= width*3/8 && mouseX <= width*5/8 && mouseY >= 0 && mouseY <= height*1/4) {
      chol[0] = 0;
      Opt[0] = true;
    } else {
      chol[0] = 255;
      Opt[0] = false;
    }

    if (mouseX >= width*3/8 && mouseX <= width*5/8 && mouseY >= height*1/4 && mouseY <= height*2/4) {
      chol[1] = 0;
      Opt[1] = true;
    } else {
      chol[1] = 255;
      Opt[1] = false;
    }
    if (mouseX >= width*3/8 && mouseX <= width*5/8 && mouseY >= height*2/4 && mouseY <= height*3/4) {
      chol[2] = 0;
      Opt[2] = true; 
      G.M.screen[0]=false;
      G.M.screen[1]=false;
      G.M.screen[2]=false;
      G.M.screen[3]=false; 
      G.M.screen[4]=false;

      G.Lg.LVL[1]=false; 
      G.Lg.LVL[0]=false; 
      G.Lg.LVL[2]=false; 
      G.Lg.LVL[3]=false; 
      G.Lg.LVL[4]=false; 
      G.Lg.LVL[5]=false; 
      G.Lg.LVL[6]=false; 
      G.Lg.LVL[7]=false; 
      G.Lg.LVL[8]=false; 
      G.Lg.LVL[9]=false; 
      G.Lg.LVL[10]=false; 
      G.Lg.LVL[11]=false;
    } else {
      chol[2] = 255;
      Opt[2] = false;
    }
    if (mouseX >= width*3/8 && mouseX <= width*5/8 && mouseY >= height*3/4 && mouseY <= height) {
      chol[3] = 0;
      Opt[3] = true;
    } else {
      chol[3] = 255;
      Opt[3] = false;
    }
  }

  void display() {
    f = createFont("arial", 16, true);

    fill(255, 255, 0);
    stroke(0);
    strokeWeight(2);
    rect(width*3/8, 0, width*2/8, height);

    fill(255, 255, chol[0]);
    stroke(0);
    strokeWeight(2);
    rect(width*3/8, 0, width*2/8, height*1/4);
    textAlign(CENTER);
    fill(255, 0, 255);
    textFont(f, 26);
    text("Continue", 400, 60);

    fill(255, 255, chol[1]);
    stroke(0);
    strokeWeight(2);
    rect(width*3/8, height*1/4, width*2/8, height*1/4);
    textAlign(CENTER);
    fill(255, 0, 255);
    textFont(f, 26);
    text("Restart", 400, 160);

    fill(255, 255, chol[2]);
    stroke(0);
    strokeWeight(2);
    rect(width*3/8, height*2/4, width*2/8, height*1/4);
    textAlign(CENTER);
    fill(255, 0, 255);
    textFont(f, 26);
    text("Main Menu", 400, 260);

    fill(255, 255, chol[3]);
    stroke(0);
    strokeWeight(2);
    rect(width*3/8, height*3/4, width*2/8, height*1/4);
    textAlign(CENTER);
    fill(255, 0, 255);
    textFont(f, 26);
    text("Close Game", 400, 360);

    textAlign(LEFT);
  }



  void run() {
    if (keys[9] && G.T.es==0) {
      G.T.es=1;
      es = !es;
    } 
    if (mousePressed && Opt[0]) {
      es = false;
    }
    if (mousePressed && Opt[2]) {
      es = false;
    }

    if (es) {

      display();  
      choises();
    }
  }
}
