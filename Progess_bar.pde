class ProgessBar {

  //this is probaly the most important class this litterally stores all the data.


  PFont f;

  int progressRed = 0;
  int progressBlue = 0;


  int AprogressRed = 0;
  int AprogressBlue = 0;


  int t =6;
  boolean GO = false;

  PVector proRP2U1;
  PVector proRP2U2;
  PVector proRP2U3;
  PVector proRP2U4;
  PVector proW1= new PVector(0, 0);
  PVector proW2= new PVector(0, 0);
  PVector proW3= new PVector(0, 0);
  PVector proW4= new PVector(0, 0);
  PVector curW1 = new PVector(0, 0);
  PVector curW2 = new PVector(0, 0);
  PVector curW3 = new PVector(0, 0);
  PVector curW4 = new PVector(0, 0);


  ProgessBar() {
  }

  void ProgressBarscore() {

    //this handles the big progressbar at the top of the game screen

    f = createFont("arial", 16, true);
    stroke(0);  
    strokeWeight(0);
    textAlign(LEFT);


    //progressRed = 0;
    //progressBlue = 0;


    float mproR = constrain(map(AprogressRed, 0, G.level.WinScore.x*2, 0, width-100), 0, width-100);
    float mproB = constrain(map(AprogressBlue, 0, G.level.WinScore.y*2, 0, width-100), 0, width-100);


    fill(0);
    stroke(100);
    strokeWeight(2);
    rect(50, 10, width-100, 15);
    rect(50, 26, width-100, 15);

    fill(255, 0, 0);
    rect(50, 10, mproR, 15);
    fill(0, 0, 255);
    rect(50, 26, mproB, 15);
    stroke(0);
    strokeWeight(2);
    noFill();

    fill(255);
    textFont(f, 13);
    text(progressRed+" Red", 53, 23);
    text(progressBlue+" Blue", 53, 39);



    float mAproR = constrain(map(AprogressRed, 0, G.level.WinScore.x*2, 0, width-100), 0, width-100);
    float mAproB = constrain(map(AprogressBlue, 0, G.level.WinScore.y*2, 0, width-100), 0, width-100);

    fill(255, 0, 0, 10);
    rect(50, 10, mAproR, 15);
    fill(0, 0, 255, 10);
    rect(50, 26, mAproB, 15);

    noFill();
  }


  void ProgressBarworker() {


    //this handles all the individual progressbars
    //it stores their data in the max value and the curent value for each worker

    if (t>5 && t< 25 && GO == false) {
      t++;

      curW1.set(G.level.WorkPower[0]);
      curW2.set(G.level.WorkPower[1]);
      curW3.set(G.level.WorkPower[2]);
      curW4.set(G.level.WorkPower[3]); 
      proW1.set(G.level.WorkPower[0]);
      proW2.set(G.level.WorkPower[1]);
      proW3.set(G.level.WorkPower[2]);
      proW4.set(G.level.WorkPower[3]);
      //  println("hej");
      if (t>=24) {
        GO = true;
        t=0;
      }
    } 
    if (GO) {


      if (G.Wp.UpgadeBlocker[0] <= 0) {
        proW1 = G.level.WorkPower[0].add(G.Wp.upgradeW1);
      }

      if (G.Wp.UpgadeBlocker[1] <= 0) {   
        proW2 = PVector.add(G.level.WorkPower[1], G.Wp.upgradeW2);
      }

      if (G.Wp.UpgadeBlocker[2] <= 0) {  
        proW3 = PVector.add(G.level.WorkPower[2], G.Wp.upgradeW3);
      }


      if (G.Wp.UpgadeBlocker[3] <= 0) { 
        proW4 = PVector.add(G.level.WorkPower[3], G.Wp.upgradeW4);
      }



      // println(curW1.y-G.Wp.task[G.Wp.tasknr].y);
      if (int(curW1.x-G.level.task[G.Wp.tasknr].x) > 4 && int(curW1.y-G.level.task[G.Wp.tasknr].y) > 4) {
        curW1 = PVector.sub(proW1, G.Wp.taskW1);
      }
      if (int(curW2.x-G.level.task[G.Wp.tasknr].x) > 0 && int(curW2.y-G.level.task[G.Wp.tasknr].y) > 0) {    
        curW2 = PVector.sub(proW2, G.Wp.taskW2);
      } 
      if (int(curW3.x-G.level.task[G.Wp.tasknr].x) > 0 && int(curW3.y-G.level.task[G.Wp.tasknr].y) > 0) { 
        curW3 = PVector.sub(proW3, G.Wp.taskW3);
      } 
      if (int(curW4.x-G.level.task[G.Wp.tasknr].x) > 0 && int(curW4.y-G.level.task[G.Wp.tasknr].y) > 0) {
        curW4 = PVector.sub(proW4, G.Wp.taskW4);
      }
    }


    if (t >= 1) {
      t++; 
      if (t <= 5) {
        G.Wp.taskW1.set(0, 0);
        G.Wp.taskW2.set(0, 0);
        G.Wp.taskW3.set(0, 0);
        G.Wp.taskW4.set(0, 0);
        curW1.set(proW1);
        curW2.set(proW2);
        curW3.set(proW3);
        curW4.set(proW4);
      }
    }

    if (G.Wc.accept==false) {
      //all of this is the display function for the progressbars.
      //it runs on the highlight function from the tab Logic_WorkChoice
      if (G.Wc.P1Select.x == -1 && G.Wc.P1Select.y == 0) { 

        float mproRP1W1 = constrain(map(curW1.x, 0, proW1.x, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP1W1 = constrain(map(curW1.y, 0, proW1.y, 0, width*3/8-20), 0, width*3/8-20);


        fill(0);
        stroke(100);
        rect(10, 65, width*3/8-20, 15);
        rect(10, 81, width*3/8-20, 15);

        fill(222, 23, 23);
        rect(10, 65, mproRP1W1, 15);
        fill(23, 123, 222);
        rect(10, 81, mproBP1W1, 15);
        stroke(0);
        strokeWeight(2);
        textAlign(LEFT);

        fill(255);
        textFont(f, 13);
        text(curW1.x + " - " + G.level.task[G.Wp.tasknr].x +" Red", 13, 78);
        text(curW1.y + " - " + G.level.task[G.Wp.tasknr].y +" Blue", 13, 94);
      }
      if (G.Wc.P1Select.x == 0 && G.Wc.P1Select.y == 1) {



        float mproRP1W2 = constrain(map(curW2.x, 0, proW2.x, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP1W2 = constrain(map(curW2.y, 0, proW2.y, 0, width*3/8-20), 0, width*3/8-20);

        fill(0);
        stroke(100);
        rect(10, 65, width*3/8-20, 15);
        rect(10, 81, width*3/8-20, 15);

        fill(222, 23, 23);
        rect(10, 65, mproRP1W2, 15);
        fill(23, 123, 222);
        rect(10, 81, mproBP1W2, 15);
        stroke(0);
        strokeWeight(2);
        textAlign(LEFT);

        fill(255);
        textFont(f, 13);
        text(curW2.x + " - " + G.level.task[G.Wp.tasknr].x +" Red", 13, 78);
        text(curW2.y + " - " + G.level.task[G.Wp.tasknr].y +" Blue", 13, 94);
      }
      if (G.Wc.P1Select.x == 1 && G.Wc.P1Select.y == 0) {



        float mproRP1W3 = constrain(map(curW3.x, 0, proW3.x, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP1W3 = constrain(map(curW3.y, 0, proW3.y, 0, width*3/8-20), 0, width*3/8-20);

        fill(0);
        stroke(100);
        rect(10, 65, width*3/8-20, 15);
        rect(10, 81, width*3/8-20, 15);

        fill(222, 23, 23);
        rect(10, 65, mproRP1W3, 15);
        fill(23, 123, 222);
        rect(10, 81, mproBP1W3, 15);
        stroke(0);
        strokeWeight(2);
        textAlign(LEFT);

        fill(255);
        textFont(f, 13);
        text(curW3.x + " - " + G.level.task[G.Wp.tasknr].x +" Red", 13, 78);
        text(curW3.y + " - " + G.level.task[G.Wp.tasknr].y +" Blue", 13, 94);
      }
      if (G.Wc.P1Select.x == 0 && G.Wc.P1Select.y == -1) {



        float mproRP1W4 = constrain(map(curW4.x, 0, proW4.x, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP1W4 = constrain(map(curW4.y, 0, proW4.y, 0, width*3/8-20), 0, width*3/8-20);

        fill(0);
        stroke(100);
        rect(10, 65, width*3/8-20, 15);
        rect(10, 81, width*3/8-20, 15);

        fill(222, 23, 23);
        rect(10, 65, mproRP1W4, 15);
        fill(23, 123, 222);
        rect(10, 81, mproBP1W4, 15);
        stroke(0);
        strokeWeight(2);
        textAlign(LEFT);


        fill(255);
        textFont(f, 13);
        text(curW4.x + " - " + G.level.task[G.Wp.tasknr].x +" Red", 13, 78);
        text(curW4.y + " - " + G.level.task[G.Wp.tasknr].y +" Blue", 13, 94);
      }




      //this is the player 2 part of the equation so to speak
      textAlign(LEFT);
      if (G.Wc.P2Select.x == -1 && G.Wc.P2Select.y == 0) {  

        float mproRP2W1 = constrain(map(curW1.x, 0, proW1.x, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP2W1 = constrain(map(curW1.y, 0, proW1.y, 0, width*3/8-20), 0, width*3/8-20);


        fill(0);
        stroke(100);
        rect(width*5/8+10, 65, width*3/8-20, 15);
        rect(width*5/8+10, 81, width*3/8-20, 15);

        fill(222, 23, 23);
        rect(width*5/8+10, 65, mproRP2W1, 15);
        fill(23, 123, 222);
        rect(width*5/8+10, 81, mproBP2W1, 15);
        stroke(0);
        strokeWeight(2);

        fill(255);
        textFont(f, 13);
        text(curW1.x + " + " + G.level.UpgradePower[G.Wp.upgradenr].x +" Red", width*5/8+13, 78);
        text(curW1.y + " + " + G.level.UpgradePower[G.Wp.upgradenr].y +" Blue", width*5/8+13, 94);
      }

      if (G.Wc.P2Select.x == 0 && G.Wc.P2Select.y == 1) {   
        float mproRP2W2 = constrain(map(curW2.x, 0, proW2.x, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP2W2 = constrain(map(curW2.y, 0, proW2.y, 0, width*3/8-20), 0, width*3/8-20);


        fill(0);
        stroke(100);
        rect(width*5/8+10, 65, width*3/8-20, 15);
        rect(width*5/8+10, 81, width*3/8-20, 15);

        fill(222, 23, 23);
        rect(width*5/8+10, 65, mproRP2W2, 15);
        fill(23, 123, 222);
        rect(width*5/8+10, 81, mproBP2W2, 15);
        stroke(0);
        strokeWeight(2);

        fill(255);
        textFont(f, 13);
        text(curW2.x + " + " + G.level.UpgradePower[G.Wp.upgradenr].x +" Red", width*5/8+13, 78);
        text(curW2.y + " + " + G.level.UpgradePower[G.Wp.upgradenr].y +" Blue", width*5/8+13, 94);
      }

      if (G.Wc.P2Select.x == 1 && G.Wc.P2Select.y == 0) {
        float mproRP2W3 = constrain(map(curW3.x, 0, proW3.x, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP2W3 = constrain(map(curW3.y, 0, proW3.y, 0, width*3/8-20), 0, width*3/8-20);


        fill(0);
        stroke(100);
        rect(width*5/8+10, 65, width*3/8-20, 15);
        rect(width*5/8+10, 81, width*3/8-20, 15);

        fill(222, 23, 23);
        rect(width*5/8+10, 65, mproRP2W3, 15);
        fill(23, 123, 222);
        rect(width*5/8+10, 81, mproBP2W3, 15);
        stroke(0);
        strokeWeight(2);

        fill(255);
        textFont(f, 13);
        text(curW3.x + " + " + G.level.UpgradePower[G.Wp.upgradenr].x +" Red", width*5/8+13, 78);
        text(curW3.y + " + " + G.level.UpgradePower[G.Wp.upgradenr].y +" Blue", width*5/8+13, 94);
      }

      if (G.Wc.P2Select.x == 0 && G.Wc.P2Select.y == -1) {
        float mproRP2W4 = constrain(map(curW4.x, 0, proW4.x, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP2W4 = constrain(map(curW4.y, 0, proW4.y, 0, width*3/8-20), 0, width*3/8-20);



        fill(0);
        stroke(100);
        rect(width*5/8+10, 65, width*3/8-20, 15);
        rect(width*5/8+10, 81, width*3/8-20, 15);

        fill(222, 23, 23);
        rect(width*5/8+10, 65, mproRP2W4, 15);
        fill(23, 123, 222);
        rect(width*5/8+10, 81, mproBP2W4, 15);
        stroke(0);
        strokeWeight(2);

        fill(255);
        textFont(f, 13);
        text(curW4.x + " + " + G.level.UpgradePower[G.Wp.upgradenr].x +" Red", width*5/8+13, 78);
        text(curW4.y + " + " + G.level.UpgradePower[G.Wp.upgradenr].y +" Blue", width*5/8+13, 94);
      }
    }
  }

  void run() {
    //println(curW1, curW2, curW3, curW4, progressRed);

    ProgressBarworker();
    ProgressBarscore();
  }
}
