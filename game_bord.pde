class GameBoard {

  PFont f;
  boolean GO = false;
  int t = 2;


  void PlayerField() {

    //this draws the stuff
    //Maybe an array of variables would have been better

    f = createFont("arial", 16, true);


    fill(150);
    stroke(0);
    strokeWeight(2);
    rect(0, height/4, height*3/4, width*3/8);//P1 store box
    rect(width*5/8, height/4, height*3/4, width*3/8);//P2 store box


    fill(0, 150, 0);
    stroke(0);
    strokeWeight(2);


    //P1 små boxe
    rect(width/8, height/4, width*1/8, height*1/4);//øverste

    rect(width*1/4, height*2/4, height*1/4, width*1/8);//højre

    rect(0, height*2/4, height*1/4, width*1/8);//venstre

    rect(width*1/8, height*3/4, height*1/4, width*1/8);//nederste

    //P2 små boxe
    rect(width*6/8, height/4, height*1/4, width*1/8); //øverest

    rect(width*7/8, height*2/4, height*1/4, width*1/8); //højre

    rect(width*5/8, height*2/4, height*1/4, width*1/8); //venstre

    rect(width*6/8, height*3/4, height*1/4, width*1/8); //nederste


    fill(0);
    textAlign(CENTER);
    textSize(25);

    text("W1", width/16, height*5/8);
    text("W2", width*3/16, height*7/8);
    text("W3", width*5/16, height*5/8);
    text("W4", width*3/16, height*3/8);

    text("W1", width*11/16, height*5/8);
    text("W2", width*13/16, height*7/8);
    text("W3", width*15/16, height*5/8);
    text("W4", width*13/16, height*3/8);

    text("Trash"+"\n"+"can", width*22/32, height*11/32);
    text("P1", width*3/16, height*5/8);
    text("P2", width*13/16, height*5/8);

    //upgrade box
    fill(222, 0, 222);
    stroke(0);
    strokeWeight(2);

    rect(width*3/8, height*1/4, width*2/8, height*1/4);
    fill(0, 222, 222);
    textFont(f, 20);
    textAlign(CENTER);

    text("Upgrade Effect", width*4/8, 120);
    text(int(G.level.UpgradePower[G.Wp.upgradenr].x)+" Red", width*4/8, 150);
    text(int(G.level.UpgradePower[G.Wp.upgradenr].y)+" Blue", width*4/8, 170);
    text(int(G.level.UpgradePower[G.Wp.upgradenr].z)+" Action(s)", width*4/8, 190);


    fill(222, 222, 0);
    stroke(0);
    strokeWeight(2);

    rect(width*3/8, height*2/4, width*2/8, height*1/4);
    fill(255, 0, 255);
    textFont(f, 20);
    textAlign(CENTER);
    text("Action", width*4/8, 220);
    if (GO) {
      text(int(G.Wc.t)+"/"+int(G.level.tasknr), width*4/8, 250);
    }

    //task box
    fill(222, 0, 222);
    rect(width*3/8, height*3/4, width*2/8, height*1/4);
    fill(0, 222, 222);
    textFont(f, 20);
    textAlign(CENTER);


    text("Task Requirements", 400, 320);
    if (GO) {
      text(int(G.level.task[G.Wp.tasknr].x)+" Red", width*4/8, 350);
      text(int(G.level.task[G.Wp.tasknr].y)+" Blue", width*4/8, 370);
    }
    noFill();
    textAlign(LEFT);
  }
  void time() {
    //this function displays the time in the upper right corner of the game board.

    f = createFont("arial", 16, true);
    fill(150, 155, 155);
    stroke(0);
    strokeWeight(2);
    rect(width-40, 5, 40, 40);
    fill(222, 0, 222);
    textAlign(CENTER);
    textFont(f, 16);
    textLeading(20);
    text("Time"+"\n"+G.level.interations, 780, 20);
    noFill();

    fill(150, 155, 155);
    stroke(0);
    strokeWeight(2);
    rect(0, 5, 40, 40);
    fill(222, 0, 222);
    textAlign(CENTER);
    textFont(f, 16);
    textLeading(20);
    text("Time"+"\n"+G.level.time, 20, 20);
    noFill();
    textAlign(LEFT);
  }


  void display() {
    time();
    PlayerField();
  }
  void run() {
    display();

    if (t >= 2 && t < 3 && GO == false) {
      t++;
      if (t >= 3) {
        GO= true;
        t = 0;
      }
    }
  }
}
