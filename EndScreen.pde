class EndScreen {

  boolean winGame;
  ArrayList<Score> scoreProgressRed = new ArrayList<Score>();
  ArrayList<Score> scoreProgressBlue = new ArrayList<Score>();
  float endTime;
  int frames;
  boolean done = false;






  void addScore() {
    scoreProgressRed.add(new Score(G.Pb.proR));
    scoreProgressBlue.add(new Score(G.Pb.proB));
  }

  void startTimer(int c) {
    //en function som modtager en værdi og starter en timer.
    endTime = c;

    if (G.T.endTimer == 1) {
      //den her kører kun hvis timeren er tændt.
      frames ++;
    }
    if (endTime <= frames/frameRate) {
      //når der er gået en hvis mængde sekunder specificeret tidligere er timeren færdig.
      frames = 0;
      done = true;
    }
  }

  void ShowEndScreen() {
            if (scoreProgressRed.size() < 1) {
      scoreProgressRed.add(new Score(0));
      scoreProgressBlue.add(new Score(0));
    }
    if (scoreProgressRed.size() < 10) {
      scoreProgressRed.add(new Score(10000*random(5)));
      scoreProgressBlue.add(new Score(1000*random(10)));
    }

    winGame = true;
    G.T.endTimer = 1;
    //startTimer(5);
    if (winGame) {
      stroke(0);
      strokeWeight(2);
      fill(255);
      rect(100, 100, 600, 200);
    } else {
      stroke(255, 0, 0);
      strokeWeight(2);
      fill(255);
      rect(100, 100, 600, 200);
    }
    for (int i = 0; i<scoreProgressRed.size(); i++) {
      strokeWeight(5);
      stroke(255, 0, 0);
      point(map(i, 0, scoreProgressRed.size(), 110, 50+7*width/8), map(scoreProgressRed.get(i).score, 0, G.level.WinScore.x*2, 290, 100));

      stroke(0, 0, 255);
      point(map(i, 0, scoreProgressBlue.size(), 110, 50+7*width/8), map(scoreProgressBlue.get(i).score, 0, G.level.WinScore.y*2, 290, 100));
      
//      line(map(i, 0, scoreProgressBlue.size(), 110, 50+7*width/8), map(scoreProgressBlue.get(i).score, 0, G.level.WinScore.y*2, 290, 100),map(i+1, 0, scoreProgressBlue.size(), 110, 50+7*width/8), map(scoreProgressBlue.get(i+1).score, 0, G.level.WinScore.y*2, 290, 100));
      
    }
    if (G.level.WinScore.y == G.level.WinScore.x) {
      strokeWeight(1);
      stroke(100);
      line(100, map(G.level.WinScore.x, 0, G.level.WinScore.x*2, 290, 100), 20+7*width/8, map(G.level.WinScore.x, 0, G.level.WinScore.x*2, 290, 100));
    } else {
      strokeWeight(1);
      stroke(255, 0, 0);
      line(100, map(G.level.WinScore.x, 0, G.level.WinScore.x*2, 290, 100), 20+7*width/8, map(G.level.WinScore.x, 0, G.level.WinScore.x*2, 290, 100));

      stroke(0, 0, 255);
      line(100, map(G.level.WinScore.y, 0, G.level.WinScore.y*2, 290, 100), 20+7*width/8, map(G.level.WinScore.y, 0, G.level.WinScore.y*2, 290, 100));
    }
  }


  void run() {
    if (keys[10]) {
      G.T.endTimer = 0;
      G.loc = 0;
    }
    //når end screen går i gang starter den timeren ved at sætte G.T.endTimer til 1
    if (done) {
      G.T.endTimer = 0;
      G.loc = 0;
      done = false;
      //den spørger om timeren er færdig hvis den er så går den til menuen
    } else {
      //den spørger om timeren er færdig hvis den ikke er så tegner den slutskærmen
      ShowEndScreen();
    }
  }
}
