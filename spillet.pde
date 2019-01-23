class Game {


  boolean win = false;
  int nr=0;
  int loc = 0;  
  int lvlcode = 0;
  Timer T = new Timer();

  Menu M = new Menu();
  LoadGame Lg =  new LoadGame();
  Keymenu Km = new Keymenu();
  GameBoard Gb = new GameBoard();
  escMenu Ec = new escMenu();

  LogikWC Wc = new LogikWC();
  LogikWP Wp = new LogikWP();
  Level level = new Level();
  ProgessBar Pb = new ProgessBar();


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
      lvlcode=0;
    }
    if (mousePressed && Lg.LVL[1]) { 
      loc = 3;
      lvlcode=1;
    }
    if (mousePressed && Lg.LVL[2]) { 
      loc = 3;
      lvlcode=2;
    }
    if (mousePressed && Lg.LVL[3]) { 
      loc = 3;
      lvlcode=3;
    }
    if (mousePressed && Lg.LVL[4]) { 
      loc = 3;
      lvlcode=4;
    }
    if (mousePressed && Lg.LVL[5]) { 
      loc = 3;
      lvlcode=5;
    }
    if (mousePressed && Lg.LVL[6]) { 
      loc = 3;
      lvlcode=6;
    }
    if (mousePressed && Lg.LVL[7]) { 
      loc = 3;
      lvlcode=7;
    }
    if (mousePressed && Lg.LVL[8]) { 
      loc = 3;
      lvlcode=8;
    }
    if (mousePressed && Lg.LVL[9]) { 
      loc = 3;
      lvlcode=9;
    }
    if (mousePressed && Lg.LVL[10]) { 
      loc = 3;
      lvlcode=10;
    }
    if (mousePressed && Lg.LVL[11]) { 
      loc = 3;
      lvlcode=11;
    }
    if (mousePressed && M.screen[4]) { 
      loc = -1;
    }  
    if (mousePressed && Ec.Opt[3]) {
      loc = -1;
    }
    level.changelevel(lvlcode);
  }

  void run() {

    //println(Lg.chol);
    // println(nr);

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


      T.run();
      Pb.run();
      Gb.run();
      Wc.run(); 
      Wp.run();

      Ec.run();
      break;

    case 5:

      break;
    }
  }
}
