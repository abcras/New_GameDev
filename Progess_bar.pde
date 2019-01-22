class ProgessBar {

  PFont f;
  int proR;
  int proB;


  PVector proRP2U1;
  PVector proRP2U2;
  PVector proRP2U3;
  PVector proRP2U4;
  PVector proP1W1;
  PVector proP1W2;
  PVector proP1W3;
  PVector proP1W4;


  ProgessBar() {
  }

  void ProgressBarscore() {

    f = createFont("arial", 16, true);
    stroke(0);
    strokeWeight(0);
    textAlign(LEFT);

    proR = 0;
    proB = 0;


    float mproR = constrain(map(proR, 0, G.level.WinScore.x*2, 0, width-100), 0, width-100);
    float mproB = constrain(map(proB, 0, G.level.WinScore.y*2, 0, width-100), 0, width-100);


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
    text(proR+" Red", 53, 23);
    text(proB+" Blue", 53, 39);
  }


  void ProgressBarworker() {
    proP1W1 = G.level.WorkPower[0]/*+upgradeW1*/;
    PVector curW1 = proP1W1/* -taskW1 */;

    proP1W2 = G.level.WorkPower[1]/*+upgradeW2*/;
    PVector curW2 = proP1W2/* -taskW2 */;

    proP1W3 = G.level.WorkPower[2]/*+upgradeW3*/;
    PVector curW3 = proP1W3/* -taskW3 */;

    proP1W4 = G.level.WorkPower[3]/*+upgradeW4*/;
    PVector curW4 = proP1W4/* -taskW4 */;

    if (G.Wc.accept==false) {
      if (G.Wc.P1Select.x == -1 && G.Wc.P1Select.y == 0) { 

        float mproRP1W1 = constrain(map(curW1.x, 0, proP1W1.x, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP1W1 = constrain(map(curW1.y, 0, proP1W1.y, 0, width*3/8-20), 0, width*3/8-20);


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
        text(curW1.x+" Red", 13, 78);
        text(curW1.y+" Blue", 13, 94);
      }
      if (G.Wc.P1Select.x == 0 && G.Wc.P1Select.y == 1) {



        float mproRP1W2 = constrain(map(curW2.x, 0, proP1W2.x, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP1W2 = constrain(map(curW2.y, 0, proP1W2.x, 0, width*3/8-20), 0, width*3/8-20);

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
        text(curW2.x+" Red", 13, 78);
        text(curW2.y+" Blue", 13, 94);
      }
      if (G.Wc.P1Select.x == 1 && G.Wc.P1Select.y == 0) {



        float mproRP1W3 = constrain(map(curW3.x, 0, proP1W3.x, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP1W3 = constrain(map(curW3.y, 0, proP1W3.x, 0, width*3/8-20), 0, width*3/8-20);

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
        text(curW3.x+" Red", 13, 78);
        text(curW3.y+" Blue", 13, 94);
      }
      if (G.Wc.P1Select.x == 0 && G.Wc.P1Select.y == -1) {



        float mproRP1W4 = constrain(map(curW4.x, 0, proP1W4.x, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP1W4 = constrain(map(curW4.y, 0, proP1W4.x, 0, width*3/8-20), 0, width*3/8-20);

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
        text(curW4.x+" Red", 13, 78);
        text(curW4.x+" Blue", 13, 94);
      }






      if (G.Wc.P2Select.x == -1 && G.Wc.P2Select.y == 0) {
        float mproRP2W1 = constrain(map(proP1W1.x, 0, proP1W1.x, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP2W1 = constrain(map(proP1W1.y, 0, proP1W1.y, 0, width*3/8-20), 0, width*3/8-20);


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
        text(proP1W1.x+/*+" + " + CurrentUpgrade.x*/" Red", width*5/8+13, 78);
        text(proP1W1.y+/*+" + " + CurrentUpgrade.y*/" Blue", width*5/8+13, 94);
      }

      if (G.Wc.P2Select.x == 0 && G.Wc.P2Select.y == 1) {   
        float mproRP2W2 = constrain(map(proP1W2.x, 0, proP1W2.x, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP2W2 = constrain(map(proP1W2.y, 0, proP1W2.y, 0, width*3/8-20), 0, width*3/8-20);


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
        text(proP1W2.x+/*+" + " + CurrentUpgrade.x*/" Red", width*5/8+13, 78);
        text(proP1W2.y+/*+" + " + CurrentUpgrade.y*/" Blue", width*5/8+13, 94);
      }

      if (G.Wc.P2Select.x == 1 && G.Wc.P2Select.y == 0) {
        float mproRP2W3 = constrain(map(curW3.x, 0, proP1W3.x, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP2W3 = constrain(map(curW3.y, 0, proP1W3.y, 0, width*3/8-20), 0, width*3/8-20);


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
        text(proP1W3.x+/*+" + " + CurrentUpgrade.x*/" Red", width*5/8+13, 78);
        text(proP1W3.y+/*+" + " + CurrentUpgrade.y*/" Blue", width*5/8+13, 94);
      }

      if (G.Wc.P2Select.x == 0 && G.Wc.P2Select.y == -1) {
        float mproRP2W4 = constrain(map(curW4.x, 0, proP1W4.x, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP2W4 = constrain(map(curW4.y, 0, proP1W4.y, 0, width*3/8-20), 0, width*3/8-20);



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
        text(proP1W4.x+/*+" + " + CurrentUpgrade.x*/" Red", width*5/8+13, 78);
        text(proP1W4.y+/*+" + " + CurrentUpgrade.y*/" Blue", width*5/8+13, 94);
      }
    }
  }

  void run() {
    ProgressBarworker();
    ProgressBarscore();
  }
}
