class Menu {

  PFont f;
  int t;
  PVector MLoc = new PVector(mouseX, mouseY);
  int cc;
  int cn;
  int cl;
  int km;
  int ek;
  boolean[] screen = new boolean[6];



  Menu() {
    f = createFont("arial", 16, true);
  }    

  void lvlChoiceBox() {
    //continue box
    fill(cc, cc, 255);
    stroke(0);
    strokeWeight(2);
    rect(66, height*3/4-20, width*2/8, height/4-20);

    fill(0, 0, 0);
    textFont(f, 26);
    textAlign(CENTER);
    text("Continue", width*1/8+65, height*3/4+27);
    //continue box

    //new game box
    fill(cn, 255, cn);
    stroke(0);
    strokeWeight(2);
    rect(width*3/8, height*3/4-20, width*2/8, height/4-20);

    fill(0, 0, 0);
    textFont(f, 26);
    textAlign(CENTER);
    text("New Game", width*3/8+99, height*3/4+27);
    //new game box

    //load game box
    fill(255, cl, cl);
    stroke(0);
    strokeWeight(2);
    rect(width*4/8+(66*2), height*3/4-20, width*2/8, height/4-20);

    fill(0, 0, 0);
    textFont(f, 26);
    textAlign(CENTER);
    text("Load Game", width*5/8+(66*2), height*3/4+27);
    //load game box

    textAlign(LEFT);
  }

  void lvlChoiceLogic() {

    if (mouseX>=66 && mouseX<=266&&mouseY>=280&&mouseY<=360) {
      //continue box
      cc = 0;
      screen[0] = true;
    } else {
      cc = 255;
      screen[0] = false;
    }
    if (mouseX>=300 && mouseX<=499 && mouseY>=280 && mouseY<=360) {
      //new game box
      cn = 0;
      screen[2] = true;
    } else {
      cn = 255;
      screen[2] = false;
    }
    if (mouseX>=532 && mouseX<=732 && mouseY>=280 && mouseY<=360) {
      //load game box
      G.Lg.t=0;
      G.nr=12;
      cl = 0;
      screen[1] = true;
    } else {
      cl = 255;
      screen[1] = false;
    }
  }

  void keymenu() {
    t++;
    //this is the part that handles if the player selects the key menu option.
    fill(km, 255, 255);
    stroke(0);
    strokeWeight(2);
    rect(width-80, 0, 80, 80);
    fill(0);
    textFont(f, 20);
    textAlign(CENTER);
    text("Keys", width-40, 45);

    if (mouseX>=720 && mouseX<=800 && mouseY>=0 && mouseY<=80) {
      km = 0;
      screen[3] = true;
    } else {
      km = 255;
      screen[3] = false;
    }
    textAlign(LEFT);
  }

  void terminate() {
    fill(255, ek, 255);
    stroke(0);
    strokeWeight(2);
    rect(0, 0, 80, 80);
    fill(0);
    textFont(f, 20);
    textAlign(CENTER);
    text("Exit", 40, 45);

    if (mouseX>=0 && mouseX<=80 && mouseY>=0 && mouseY<=80 && t >= 10) {

      ek = 0;
      screen[4] = true;
    } else { 
      ek = 255;
      screen[4] = false;
    } 
    textAlign(LEFT);
  }

  void run() {

    terminate();
    keymenu();
    lvlChoiceBox();
    lvlChoiceLogic();

    fill(0, 0, 0);
    textFont(f, 26);
    textAlign(CENTER);
    text("This is a two player game", width/2, (height/2)-100);
    textAlign(LEFT);
  }
}
