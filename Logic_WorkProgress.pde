class LogikWP {

  int[] UpgadeBloker = new int[4];
  float[] DayProgress = new float[5];

  LogikWP() {
  }

  void task() {
    if (UpgadeBloker[0]>=1) {
      DayProgress[0]=250;
    } else {
      DayProgress[0]=0;
    }
    if (UpgadeBloker[1]>=1) {
      DayProgress[1]=250;
    } else {
      DayProgress[1]=0;
    }
    if (UpgadeBloker[2]>=1) {
      DayProgress[2]=250;
    } else {
      DayProgress[2]=0;
    }
    if (UpgadeBloker[3]>=1) {
      DayProgress[3]=250;
    } else {
      DayProgress[3]=0;
    }
    DayProgress[4]=DayProgress[0]+DayProgress[1]+DayProgress[2]+DayProgress[3];
  }

  void upgrade() {
    if ( G.Wc.UpgadeW1) {
      UpgadeBloker[0]=0;
    } else {
      UpgadeBloker[0]=1;
    }
    if ( G.Wc.UpgadeW2) {
      UpgadeBloker[1]=0;
    } else {
      UpgadeBloker[1]=1;
    }
    if ( G.Wc.UpgadeW3) {
      UpgadeBloker[2]=0;
    } else {
      UpgadeBloker[2]=1;
    }
    if ( G.Wc.UpgadeW4) {
      UpgadeBloker[3]=0;
    } else {
      UpgadeBloker[3]=1;
    }
  }

  void addProgerss() {
    if (G.Wc.action1 && G.Wc.action2) {


      G.Pb.proR += DayProgress[4]; 
      G.Pb.proB+= 1000;
      G.Wc.action1 = false;
      G.Wc.action2 = false;
    }
  }


  void run() {
    println(UpgadeBloker[0], UpgadeBloker[1], UpgadeBloker[2], UpgadeBloker[3], DayProgress[4]); 
    task() ;
    upgrade();


    addProgerss();
  }
}
