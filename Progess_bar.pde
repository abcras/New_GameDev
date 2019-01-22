class ProgessBar {

  PFont f;
  int proR;
  int proB;


  int proRP2U1;
  int proRP2U2;
  int proRP2U3;
  int proRP2U4;
  PVector proP1W1;
  PVector proP1W2;
  PVector proP1W3;
  PVector proP1W4;


  ProgessBar() {
  }

  void ProgressBarscore() {

    f = createFont("areal", 16, true);
    stroke(0);
    strokeWeight(0);
    textAlign(LEFT);



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
    if (G.Wc.accept==false) {
      if (G.Wc.P1Select.x == -1 && G.Wc.P1Select.y == 0) { 
        proP1W1 = new PVector(40, 20);


        float mproRP1W1 = constrain(map(proP1W1.x, 0, 100, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP1W1 = constrain(map(proP1W1.y, 0, 100, 0, width*3/8-20), 0, width*3/8-20);


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
        text(proP1W1.x+" Red", 13, 78);
        text(proP1W1.y+" Blue", 13, 94);
      }
      if (G.Wc.P1Select.x == 0 && G.Wc.P1Select.y == 1) {
        proP1W2 = new PVector(40, 0);


        float mproRP1W2 = constrain(map(proP1W2.x, 0, 100, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP1W2 = constrain(map(proP1W2.y, 0, 100, 0, width*3/8-20), 0, width*3/8-20);

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
        text(proP1W2.x+" Red", 13, 78);
        text(proP1W2.y+" Blue", 13, 94);
      }
      if (G.Wc.P1Select.x == 1 && G.Wc.P1Select.y == 0) {
        proP1W3 = new PVector(100, 200);


        float mproRP1W3 = constrain(map(proP1W3.x, 0, 100, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP1W3 = constrain(map(proP1W3.y, 0, 100, 0, width*3/8-20), 0, width*3/8-20);

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
        text(proP1W3.x+" Red", 13, 78);
        text(proP1W3.y+" Blue", 13, 94);
      }
      if (G.Wc.P1Select.x == 0 && G.Wc.P1Select.y == -1) {
        proP1W4 = new PVector(40, 0);


        float mproRP1W4 = constrain(map(proP1W4.x, 0, 100, 0, width*3/8-20), 0, width*3/8-20);
        float mproBP1W4 = constrain(map(proP1W4.y, 0, 100, 0, width*3/8-20), 0, width*3/8-20);

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
        text(proP1W4.x+" Red", 13, 78);
        text(proP1W4.y+" Blue", 13, 94);
      }






      if (G.Wc.P2Select.x == 1 && G.Wc.P2Select.y == 0) {    
        proRP2U1 = 40;


        float mproP2U1 = map(proRP2U1, 0, 100, 0, width-100);


        fill(23, 123, 222);
        rect(width*5/8+10, 65, mproP2U1, 15);


        stroke(0);
        strokeWeight(2);
        noFill();
        rect(width*5/8+10, 65, width*3/8-20, 15);
        rect(width*5/8+10, 81, width*3/8-20, 15);
        fill(100);
        textFont(f, 13);
        text(mproP2U1+" Red", width*5/8+13, 78);
        text(proB+" Blue", width*5/8+13, 94);
      }
      if (G.Wc.P2Select.x == -1 && G.Wc.P2Select.y == 0) {   
        proRP2U2 = 40;


        float mproP2U2 = map(proRP2U2, 0, 100, 0, width-100);


        fill(23, 123, 222);
        rect(width*5/8+10, 65, mproP2U2, 15);
        stroke(0);
        strokeWeight(2);
        noFill();
        textAlign(LEFT);

        rect(width*5/8+10, 65, width*3/8-20, 15);
        rect(width*5/8+10, 81, width*3/8-20, 15);
        fill(100);
        textFont(f, 13);
        text(mproP2U2+" Red", width*5/8+13, 78);
        text(proB+" Blue", width*5/8+13, 94);
      }
      if (G.Wc.P2Select.x == 0 && G.Wc.P2Select.y == 1) {
        proRP2U3 = 40;


        float mproP2U3 = map(proRP2U3, 0, 100, 0, width-100);


        fill(23, 123, 222);
        rect(width*5/8+10, 65, mproP2U3, 15);
        stroke(0);
        strokeWeight(2);
        noFill();
        textAlign(LEFT);

        rect(width*5/8+10, 65, width*3/8-20, 15);
        rect(width*5/8+10, 81, width*3/8-20, 15);
        fill(100);
        textFont(f, 13);
        text(mproP2U3+" Red", width*5/8+13, 78);
        text(proB+" Blue", width*5/8+13, 94);
      }
      if (G.Wc.P2Select.x == 0 && G.Wc.P2Select.y == -1) {
        proRP2U4 = 40;


        float mproP2U4 = map(proRP2U4, 0, 100, 0, width-100);


        fill(23, 123, 222);
        rect(width*5/8+10, 65, mproP2U4, 15);
        stroke(0);
        strokeWeight(2);
        noFill();
        textAlign(LEFT);

        rect(width*5/8+10, 65, width*3/8-20, 15);
        rect(width*5/8+10, 81, width*3/8-20, 15);
        fill(100);
        textFont(f, 13);
        text(mproP2U4+" Red", width*5/8+13, 78);
        text(proB+" Blue", width*5/8+13, 94);
      }
    }
  }

  void run() {
    ProgressBarworker();
    ProgressBarscore();
  }
}
