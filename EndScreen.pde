class EndScreen {

  boolean winGame;
  ArrayList<Score> scoreProgressRed = new ArrayList<Score>();
  ArrayList<Score> scoreProgressBlue = new ArrayList<Score>();
  float endTime;
  int frames;

  boolean done = false;
  //this variable is for checking whether the timer is done
  float spacing = (7*width/8);





  void addScore() {
    //this function adds the current score whenether it is run. This should be run whenether the timer adds score to the total.
    scoreProgressRed.add(new Score(G.Pb.progressRed));
    scoreProgressBlue.add(new Score(G.Pb.progressBlue));
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
    //this generates the points that are later displayed.
    //the first one is important the second one is the test.
    if (scoreProgressRed.size() < 1) {
      scoreProgressRed.add(new Score(0));
      scoreProgressBlue.add(new Score(0));
    }
    if (scoreProgressRed.size() < 50) {
      //le test.
      scoreProgressRed.add(new Score(1000*random(6)));
      scoreProgressBlue.add(new Score(100*random(20)));
    }
    //winGame is supposed to be set some other place but it is here for now.
    winGame = true;
    G.T.endTimer = 1;
    startTimer(5);
    //the timer is stoppede for now. uncomment to initiate again.

    /*
    //this don't work right now so no telling about it either
    fill(100);
     textAlign(CENTER);
     fill(0);
     textSize(10);
     text("Press ESC to exit!", 7*width/8, 3.5*height/4);
     */

    if (winGame) {
      //if you win
      textSize(32);
      stroke(0);
      strokeWeight(2);
      fill(255);
      rect(100, 100, 600, 200);
      textAlign(CENTER);
      fill(0);
      text("YOU WON!", width/2, 50);
      textAlign(LEFT);
    } else {
      //if you lose
      stroke(255, 0, 0);
      strokeWeight(2);
      fill(255);
      rect(100, 100, 600, 200);
      fill(0);
      textAlign(CENTER);
      text("YOU LOST!", width/2, 50);
      textAlign(LEFT);
    }
    if (G.level.WinScore.y == G.level.WinScore.x) {
      //this draws the line that you have to be above to win.
      //the line is gray if both red and blue are the same.
      strokeWeight(1);

      stroke(100);
      line(100, map(G.level.WinScore.x, 0, G.level.WinScore.x*2, 290, 100), 7*width/8, map(G.level.WinScore.x, 0, G.level.WinScore.x*2, 290, 100));
    } else {
      strokeWeight(1);
      stroke(255, 0, 0);
      line(100, map(G.level.WinScore.x, 0, G.level.WinScore.x*2, 290, 100), 7*width/8, map(G.level.WinScore.x, 0, G.level.WinScore.x*2, 290, 100));

      stroke(0, 0, 255);
      line(100, map(G.level.WinScore.y, 0, G.level.WinScore.y*2, 290, 100), 7*width/8, map(G.level.WinScore.y, 0, G.level.WinScore.y*2, 290, 100));
    }

    for (int i = 0; i<scoreProgressRed.size(); i++) {
      //draws the points and auto scales them to fit the defined area; defined by the variable spacing
      strokeWeight(5);
      stroke(255, 0, 0);
      point(map(i, 0, scoreProgressRed.size(), 101, spacing), map(scoreProgressRed.get(i).score, 0, G.level.WinScore.x*2, 299, 100));
      stroke(0, 0, 255);
      point(map(i, 0, scoreProgressBlue.size(), 101, spacing), map(scoreProgressBlue.get(i).score, 0, G.level.WinScore.y*2, 299, 100));
    }
    for (int i = 0; i<scoreProgressRed.size()-1; i++) {
      //this draws the lines.
      stroke(255, 0, 0);     
      strokeWeight(2);

      //this code is bonkers but works. It draws a line between the next and the current one.
      //this is why the for i loop is one less than the points one.
      line(map(i, 0, scoreProgressRed.size(), 101, spacing), map(scoreProgressRed.get(i).score, 0, G.level.WinScore.y*2, 299, 100), map(i+1, 0, scoreProgressRed.size(), 101, spacing), map(scoreProgressRed.get(i+1).score, 0, G.level.WinScore.y*2, 299, 100));

      stroke(0, 0, 255);     
      line(map(i, 0, scoreProgressBlue.size(), 101, spacing), map(scoreProgressBlue.get(i).score, 0, G.level.WinScore.y*2, 299, 100), map(i+1, 0, scoreProgressBlue.size(), 101, spacing), map(scoreProgressBlue.get(i+1).score, 0, G.level.WinScore.y*2, 299, 100));
    }
  }


  void run() {
    //this funnily enough runs the program
    if (keys[10]) {
      //this part of the program goes back to the menu if the ESC key is pressed
      //currently does not work
      G.T.endTimer = 0;
      G.loc = 0;
      done = false;
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
