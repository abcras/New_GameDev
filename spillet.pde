class Game {

  int loc = 0;
  Menu M = new Menu();
  NewGame Ng = new NewGame();
  GameBoard Gb = new GameBoard();

  LogikWC Wc = new LogikWC();
  LogikWP Wp = new LogikWP();
  ProgessBar Pb = new ProgessBar();
  Timer T = new Timer();

  Game() {
  }
  void skift() {
    if (mousePressed && M.NewG) { 
      println("buh");
      loc = 1;
    }
    if (mousePressed && M.cont) { 
      loc = 2;
    }
    if (mousePressed && Ng.LVL1) { 
      loc = 2;
    }
  }

  void run() {

    skift();//det er en place holder
    switch (loc) {

    case 0:

      M.run();
      break;

    case 1:
      Ng.run();
      break;

    case 2:
      T.run();
      Pb.run();
      Gb.run();
      Wp.run();
      Wc.run();
      break;
    }
  }
}
