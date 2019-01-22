class LogikWP {

  int[] UpgadeBloker = new int[4];
  float[] DayProgressR = new float[5]; 
  float[] DayProgressB = new float[5];

  PVector[] task = new PVector[10];
  PVector taskW1;  
  PVector taskW2;  
  PVector taskW3;  
  PVector taskW4;
  PVector upgradeW1;
  PVector upgradeW2;
  PVector upgradeW3;
  PVector upgradeW4;


  LogikWP() {
  }

  void task() {
    task[0] = new PVector(10, 5);
    task[1] = new PVector(5, 10);
    task[2] = new PVector(10, 15);
    task[3] = new PVector(15, 10);
    task[4] = new PVector(20, 15); 
    task[5] = new PVector(15, 20);
    task[6] = new PVector(20, 25);
    task[7] = new PVector(25, 20);
    task[8] = new PVector(30, 25);
    task[9] = new PVector(25, 30);

    taskW1 = PVector.sub(G.level.WorkPower[0], task[0]);
  }


  void upgradeblock() {
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

  void upgrade() {
    if (G.Wc.UpgadeW1 && G.Wc.action1 && G.Wc.action2) {
      upgradeW1 = PVector(G.level.UpgradePower[2].x, G.level.UpgradePower[2].x );
    }
  }

  void addProgerss() {

    if (UpgadeBloker[0]>=1) {
      DayProgressR[0]=G.Pb.proP1W1.x;
      DayProgressB[0]=G.Pb.proP1W1.y;
    } else {
      DayProgressR[0]=0;
      DayProgressB[0]=0;
    }
    if (UpgadeBloker[1]>=1) {
      DayProgressR[1]=G.Pb.proP1W2.x;
      DayProgressB[1]=G.Pb.proP1W2.y;
    } else {
      DayProgressR[1]=0;
      DayProgressB[1]=0;
    }
    if (UpgadeBloker[2]>=1) {
      DayProgressR[2]=G.Pb.proP1W3.x;
      DayProgressB[2]=G.Pb.proP1W3.y;
    } else {
      DayProgressR[2]=0;
      DayProgressB[2]=0;
    }
    if (UpgadeBloker[3]>=1) {
      DayProgressR[3]=G.Pb.proP1W4.x;
      DayProgressB[3]=G.Pb.proP1W4.y;
    } else {
      DayProgressR[3]=0;
      DayProgressB[3]=0;
    }
    DayProgressR[4]=DayProgressR[0]+DayProgressR[1]+DayProgressR[2]+DayProgressR[3];
    DayProgressB[4]=DayProgressB[0]+DayProgressB[1]+DayProgressB[2]+DayProgressB[3];


    if (G.Wc.action1 && G.Wc.action2) {


      G.Pb.proR += DayProgressR[4]; 
      G.Pb.proB+=  DayProgressB[4];
      G.Wc.action1 = false;
      G.Wc.action2 = false;
    }
  }


  void run() {
    println(DayProgressR[4]); 
    task() ;
    upgrade();
    upgradeblock();

    addProgerss();
  }
}
