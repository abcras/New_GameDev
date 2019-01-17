class Game {



  int nr;
  int loc = 0;  
  Timer T = new Timer();

  Menu M = new Menu();
  LoadGame Lg =  new LoadGame();
  Keymenu Km = new Keymenu();
  GameBoard Gb = new GameBoard();
  escMenu Ec = new escMenu();

  LogikWC Wc = new LogikWC();
  LogikWP Wp = new LogikWP();
  ProgessBar Pb = new ProgessBar();
  Level level = new Level(Lg.levelCode);

  Game() {
  }
  void skift() {
    if (mousePressed && Km.leave) { 
      loc = 0;
    }
    if (mousePressed && Lg.leave) { 
      loc = 0;
    }


    if (mousePressed && Ec.Opt[2]) { 

      loc = 0;
    }
    if (mousePressed && M.screen[2]) {   
      nr=0;
      loc = 1;
    }
    if (mousePressed && M.screen[1]) { 
      loc = 1;
    }
    if (mousePressed && M.screen[3]) {
      Km.t = 0;
      loc = 2;
    }
    if (mousePressed && M.screen[0]) { 
      loc = 3;
    }

    if (mousePressed && Lg.LVL[0]) { 
      loc = 3;
    }
    if (mousePressed && M.screen[4]) { 
      loc = -1;
    }  
    if (mousePressed && Ec.Opt[3]) {
      loc = -1;
    }
  }

  void run() {
    println(Km.t);

    skift();//det er en place holder
    switch (loc) {

    case -1: 
      exit();
      break;

    case 0:
      M.run();
      break;



    case 1:
      Lg.run(); 
      Ec.run();
      break;

    case 2:
      Km.run(); 
      Ec.run();
      break;


    case 3:


    case 4:
      level.run();

      T.run();
      Pb.run();
      Gb.run();
      Wp.run();
      Wc.run(); 
      Ec.run();
      break;

    case 5:

      break;
    }
  }
}
