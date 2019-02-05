class LogikWC {

  int t;

  PFont f;
  boolean accept = false;
  boolean accepted = false;
  boolean accepted2 = false;
  boolean action = false; 
  boolean action1 = false; 
  boolean action2 = false;
  PVector P1Select = new PVector(0, 0);
  PVector P2Select = new PVector(0, 0);
  int acceptP1 = 0;
  int acceptP2 = 0;

  boolean UpgadeW1 = false;
  boolean UpgadeW2 = false;
  boolean UpgadeW3 = false;
  boolean UpgadeW4 = false;

  int TaskW1 ;
  int TaskW2 ;
  int TaskW3 ;
  int TaskW4 ;

  LogikWC() {
  }



  void highLight() {
    //this code highlights whatever the user is highlighting at the time.
    //it is a 3x3 grid. -1,-1 is upper left corner and 1,1 is lower right corner

    //this is for player 1
    if (P1Select.x == -1 && P1Select.y == -1) {
      //upper left    
      fill(200);
      stroke(random(170, 250));
      strokeWeight(2);
      rect(0, height/4, height*1/4, width*1/8);
      accepted = false;
      G.Wc.TaskW1 = 0;
      G.Wc.TaskW2 = 0;
      G.Wc.TaskW3 = 0;
      G.Wc.TaskW4 = 0;
    }

    if (P1Select.x == 0 && P1Select.y == -1) {
      //upper middle
      fill(0, 200, 0);
      stroke(0, random(170, 250), 0);
      strokeWeight(2);
      rect(width*1/8, height/4, height*1/4, width*1/8);
      accepted = true;
      TaskW4 = 1;
      //println(4);
    }    
    if (P1Select.x == 1 && P1Select.y == -1) {
      //upper right
      fill(200);
      stroke(random(170, 250));
      strokeWeight(2);
      rect(width*2/8, height/4, height*1/4, width*1/8);
      accepted = false;
      G.Wc.TaskW1 = 0;
      G.Wc.TaskW2 = 0;
      G.Wc.TaskW3 = 0;
      G.Wc.TaskW4 = 0;
    }    

    if (P1Select.x == -1 && P1Select.y == 0) {
      //middle left
      fill(0, 200, 0);
      stroke(0, random(170, 250), 0);
      strokeWeight(2);
      rect(0, height*2/4, height*1/4, width*1/8);
      accepted = true;
      TaskW1 = 1;
      //println(1);
    }    
    if (P1Select.x == 0 && P1Select.y == 0) {
      //middle middle
      fill(200);
      stroke(random(170, 250));
      strokeWeight(2);
      rect(width*1/8, height*2/4, height*1/4, width*1/8);

      accepted = false;
      G.Wc.TaskW1 = 0;
      G.Wc.TaskW2 = 0;
      G.Wc.TaskW3 = 0;
      G.Wc.TaskW4 = 0;
    }    

    if (P1Select.x == 1 && P1Select.y == 0) {
      //middle right
      fill(0, 200, 0);
      stroke(0, random(170, 250), 0);
      strokeWeight(2);
      rect(width*1/4, height*2/4, height*1/4, width*1/8);
      accepted = true;
      TaskW3 = 1;
      //println(3);
    }    
    if (P1Select.x == -1 && P1Select.y == 1) {
      //lower left
      fill(200);
      stroke(random(170, 250));
      strokeWeight(2);
      rect(0, height*3/4, height*1/4, width*1/8);
      accepted = false;
      G.Wc.TaskW1 = 0;
      G.Wc.TaskW2 = 0;
      G.Wc.TaskW3 = 0;
      G.Wc.TaskW4 = 0;
    }    

    if (P1Select.x == 0 && P1Select.y == 1) {
      //lower middle
      fill(0, 200, 0);
      stroke(0, random(170, 250), 0);
      strokeWeight(2);
      rect(width*1/8, height*3/4, height*1/4, width*1/8);
      accepted = true;
      TaskW2 = 1;
      //println(2);
    }    
    if (P1Select.x == 1 && P1Select.y == 1) {
      //lower right
      fill(200);
      stroke(random(170, 250));
      strokeWeight(2);
      rect(width*2/8, height*3/4, height*1/4, width*1/8);
      accepted = false;
      G.Wc.TaskW1 = 0;
      G.Wc.TaskW2 = 0;
      G.Wc.TaskW3 = 0;
      G.Wc.TaskW4 = 0;
    }



    //this is for player 2
    if (P2Select.x == -1 && P2Select.y == -1) {
      //upper left
      fill(200);
      stroke(random(170, 250));
      strokeWeight(2);
      rect(width*5/8, height/4, height*1/4, width*1/8);
      accepted2 = true;
      UpgadeW1 = false;
      UpgadeW2 = false;
      UpgadeW3 = false;
      UpgadeW4 = false;
    }

    if (P2Select.x == 0 && P2Select.y == -1) {
      //upper middle
      fill(0, 200, 0);
      stroke(0, random(170, 250), 0);
      strokeWeight(2);
      rect(width*6/8, height/4, height*1/4, width*1/8);
      accepted2 = true;      
      UpgadeW4 = true;
      //println(4);
    }    
    if (P2Select.x == 1 && P2Select.y == -1) {
      //upper right
      fill(200);
      stroke(random(170, 250));
      strokeWeight(2);
      rect(width*7/8, height/4, height*1/4, width*1/8);
      accepted = false;
      UpgadeW1 = false;
      UpgadeW2 = false;
      UpgadeW3 = false;
      UpgadeW4 = false;
    }    

    if (P2Select.x == -1 && P2Select.y == 0) {
      //middle left
      fill(0, 200, 0);
      stroke(0, random(170, 250), 0);
      strokeWeight(2);
      rect(width*5/8, height*2/4, height*1/4, width*1/8);
      accepted2 = true;
      UpgadeW1 = true;
      //println(1);
    }    
    if (P2Select.x == 0 && P2Select.y == 0) {
      //middle middle
      fill(200);
      stroke(random(170, 250));
      strokeWeight(2);
      rect(width*6/8, height*2/4, height*1/4, width*1/8);
      accepted = false;
      UpgadeW1 = false;
      UpgadeW2 = false;
      UpgadeW3 = false;
      UpgadeW4 = false;
    }    

    if (P2Select.x == 1 && P2Select.y == 0) {
      //middle right
      fill(0, 200, 0);
      stroke(0, random(170, 250), 0);
      strokeWeight(2);
      rect(width*7/8, height*2/4, height*1/4, width*1/8);
      accepted2 = true;
      UpgadeW3 = true;
      //println(3);
    }    
    if (P2Select.x == -1 && P2Select.y == 1) {
      //lower left
      fill(200);
      stroke(random(170, 250));
      strokeWeight(2);
      rect(width*5/8, height*3/4, height*1/4, width*1/8);
      accepted = false;
      UpgadeW1 = false;
      UpgadeW2 = false;
      UpgadeW3 = false;
      UpgadeW4 = false;
    }    

    if (P2Select.x == 0 && P2Select.y == 1) {
      //lower middle
      fill(0, 200, 0);
      stroke(0, random(170, 250), 0);
      strokeWeight(2);
      rect(width*6/8, height*3/4, height*1/4, width*1/8);
      accepted2 = true;
      UpgadeW2 = true;
      //println(2);
    }    
    if (P2Select.x == 1 && P2Select.y == 1) {
      //lower right
      fill(200);
      stroke(random(170, 250));
      strokeWeight(2);
      rect(width*7/8, height*3/4, height*1/4, width*1/8);

      UpgadeW1 = false;
      UpgadeW2 = false;
      UpgadeW3 = false;
      UpgadeW4 = false;
      accepted2 = false;
    }
  }

  void acceptHighLight() {
    //this codes highlights the players choice when accepting their upgrade and work choice
    if (acceptP1 == -1) {
      //yes p1
      fill(200, 0, 0);
      stroke(200, 0, 0);
      strokeWeight(2);
      rect(0, 150, width*1/4-5, 37+1/2);
    }

    if (acceptP1 == 1) {
      //no p1
      fill(200, 0, 0);
      stroke(200, 0, 0);
      strokeWeight(2);
      rect(width*3/4+5, 150, width, 37+1/2);
    }

    if (acceptP2 == -1) {
      //yes p2
      fill(200, 0, 0);
      stroke(200, 0, 0);
      strokeWeight(2);
      rect(0, 150+37+1/2, width*1/4-5, 37+1/2);
    }

    if (acceptP2 == 1) {
      //no p2
      fill(200, 0, 0);
      stroke(200, 0, 0);
      strokeWeight(2);
      rect(width*3/4+5, 150+37+1/2, width*1/4-5, 37+1/2);
    } 
    fill(0, 0, 200); 
    textFont(f, 36);
    textAlign(CENTER); 
    text("YES", width*1/8, height/2);    
    text("NO", width*7/8, height/2);
    textAlign(LEFT);
  }

  void choseP1() {

    //this is the code that changes where player 1 is acting

    P1Select.x = constrain(P1Select.x, -1, 1);
    P1Select.y = constrain(P1Select.y, -1, 1);
    //this restrains the player to only within a 3x3 area

    if (keys[4] && G.T.Bt1 == 0) { //w / up
      P1Select.y -= 1;
      G.T.Bt1 = 1;
    }

    if (keys[2] && G.T.Bt1 == 0) { //s / down
      P1Select.y += 1;
      G.T.Bt1 = 1;
    }

    if (keys[1] && G.T.Bt1 == 0) { //a / left
      P1Select.x -= 1;
      G.T.Bt1 = 1;
    }

    if (keys[3] && G.T.Bt1 == 0) { //d / right
      P1Select.x += 1;
      G.T.Bt1 = 1;
    }

    if (keys[0] && accepted && accepted2 && G.T.St == 0) { 
      accept = true;
      accepted = false;
      accepted2 = false;
      G.T.St = 1;
    }
  }

  void choseP2() {

    //this changes where player 2 is acting

    P2Select.x = constrain(P2Select.x, -1, 1);
    P2Select.y = constrain(P2Select.y, -1, 1);
    //only within a 3x3 area

    if (keys[8] && G.T.Bt2 == 0) { // up
      P2Select.y -= 1;
      G.T.Bt2 = 1;
    }
    if (keys[7] && G.T.Bt2 == 0) { // down
      P2Select.y += 1;
      G.T.Bt2 = 1;
    }
    if (keys[6] && G.T.Bt2 == 0) { // left
      P2Select.x -= 1;
      G.T.Bt2 = 1;
    }
    if (keys[5] && G.T.Bt2 == 0) { // right
      P2Select.x += 1;
      G.T.Bt2 = 1;
    }
  }

  void accept() {
    fill(0, 0, 200);
    stroke(200, 0, 0);
    strokeWeight(2);
    rect(0, 150, width, 75);
    f = createFont("arial", 20, true);
    fill(255, 0, 0);
    textFont(f, 36);
    textAlign(CENTER);
    text("ACCEPT THIS ACTION?", width/2, height/2); 

    textAlign(LEFT);


    if (keys[0] && acceptP1 == -1 && acceptP2 == -1 && G.T.St == 0) {

      accept = false;
      P1Select = new PVector(0, 0);
      P2Select = new PVector(0, 0);
      G.T.St = 1;
      acceptP2 = 0;
      acceptP1 = 0; 

      G.Wp.work = true;
      t++;
      G.Wp.t = 4;
      action=true;
      G.Wp.UpgadeBlocker[0]--; 
      G.Wp.UpgadeBlocker[1]--; 
      G.Wp.UpgadeBlocker[2]--; 
      G.Wp.UpgadeBlocker[3]--;

      if (t>=G.level.tasknr) {
        println("hej");
        G.Pb.t=1;
        t = 0;
        G.level.time++;

        G.Wp.progessing = true;
        action1 = true;
        action2 = true;
      }
    }

    if (keys[0] && acceptP1 == 1 && acceptP2 == 1 && G.T.St == 0) {
      accept = false;
      P1Select = new PVector(0, 0);
      P2Select = new PVector(0, 0);
      G.T.St = 1;
      acceptP2 = 0;
      acceptP1 = 0;
    }

    if (keys[6]) {
      acceptP2 = -1;
    }
    if (keys[5]) {
      acceptP2 = 1;
    }
    if (keys[1]) {
      acceptP1 = -1;
    }

    if (keys[3]) {
      acceptP1 = 1;
    }
  }

  void pause() {
  }


  void run() {

    //println(UpgadeW1, UpgadeW2, UpgadeW3, UpgadeW4);
    //println(TaskW1, TaskW2, TaskW3, TaskW4);
    println(t);
    highLight();

    if (accept) {
      accept();
      acceptHighLight();
    } else { 
      choseP1();
      choseP2();
    }
  }
}
