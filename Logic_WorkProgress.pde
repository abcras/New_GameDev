class LogikWP {

  int t;
  boolean work = false;
  boolean progessing = false;
  boolean GO = false;
  int[] UpgadeBlocker = new int[4];
  float[] DayProgressR = new float[5]; 
  float[] DayProgressB = new float[5];

  PVector[] task = new PVector[10];
  PVector taskW1 = new PVector(0, 0);  
  PVector taskW2 = new PVector(0, 0);  
  PVector taskW3 = new PVector(0, 0);  
  PVector taskW4 = new PVector(0, 0);
  PVector upgradeW1 = new PVector(0, 0);
  PVector upgradeW2 = new PVector(0, 0);
  PVector upgradeW3 = new PVector(0, 0);
  PVector upgradeW4 = new PVector(0, 0);

  int tasknr;
  int upgradenr;




  LogikWP() {
  }

  void task() {

    //her bliver tasks lavet og udregnt indiveduelt for hver worker

    if (t >= 4 && t<= 19) {
      t++;
      tasknr = int(random(10));
    }
    //if (G.Wc.TaskW1 == 1 && firstW1) {
    //  G.Pb.curW1.set(G.level.WorkPower[0]);
    //}
    //if (G.Wc.TaskW2 == 1 && firstW2) {
    //  G.Pb.curW2.set(G.level.WorkPower[1]);
    //}
    //if (G.Wc.TaskW3 == 1 && firstW3) {
    //  G.Pb.curW3.set(G.level.WorkPower[2]);
    //}
    //if (G.Wc.TaskW4 == 1 && firstW4) {
    //  G.Pb.curW4.set(G.level.WorkPower[3]);
    //}

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


    if (work) {
      if (UpgadeBlocker[0] <= 0 && G.Wc.TaskW1 == 1) {
        //if (G.Wc.TaskW1 == 1 && work) {
        taskW1 = PVector.add(taskW1, task[tasknr]);     
        G.Wc.TaskW1 = 0;

        //println("hej");
      }
      //if (G.Wc.TaskW1 == 1 && work && firstW1 == false) { 
      //  work = !work;
      //  G.Wc.TaskW1 = 0;
      //  taskW1.add(task[0]); 
      //} 



      if (UpgadeBlocker[1] <= 0 && G.Wc.TaskW2 == 1) {
        taskW2 = PVector.add(taskW2, task[tasknr]);     
        G.Wc.TaskW2 = 0;
      }
      //if (G.Wc.TaskW2 == 1 && work && firstW2 == false) { 
      //  work = !work;
      //  G.Wc.TaskW2 = 0;
      //  G.Pb.curW2.sub(task[0]);
      //}



      if (UpgadeBlocker[2] <= 0 && G.Wc.TaskW3 == 1) {
        taskW3 = PVector.add(taskW3, task[tasknr]);   
        G.Wc.TaskW3 = 0;
      }
      //if (G.Wc.TaskW3 == 1 && work && firstW3 == false) { 
      //  work = !work;
      //  G.Wc.TaskW3 = 0;
      //  G.Pb.curW3.sub(task[0]);
      //}



      if (UpgadeBlocker[3] <= 0 && G.Wc.TaskW4 == 1) {
        taskW4 = PVector.add(taskW4, task[tasknr]);
        G.Wc.TaskW4 = 0;
      }
      work = false;
    }
  }


  void upgradeblock() {
    // her bliver workeren stoppet med at kunne lave arbejegde hvis den er igang med at blive opgradetet

    if (G.Wc.action) {
      if (G.Wc.UpgadeW1 && UpgadeBlocker[0]==0) { 
        UpgadeBlocker[0]=int(G.level.UpgradePower[upgradenr].z);
      }
      if ( G.Wc.UpgadeW2 && UpgadeBlocker[0]==0) {
        UpgadeBlocker[1]=int(G.level.UpgradePower[upgradenr].z);
      }
      if ( G.Wc.UpgadeW3 && UpgadeBlocker[2]==0) { 
        UpgadeBlocker[2]=int(G.level.UpgradePower[upgradenr].z);
      }
      if ( G.Wc.UpgadeW4 && UpgadeBlocker[3]==0) { 
        UpgadeBlocker[3]=int(G.level.UpgradePower[upgradenr].z);
      } 
      G.Wc.action=false;
    }
    if (UpgadeBlocker[0] < 0) {
      UpgadeBlocker[0] = 0;
    }
    if (UpgadeBlocker[1] < 0 ) {
      UpgadeBlocker[1] = 0;
    }
    if (UpgadeBlocker[2] < 0) {
      UpgadeBlocker[2] = 0;
    }
    if (UpgadeBlocker[3] < 0) {
      UpgadeBlocker[3] = 0;
    }
  }

  void upgrade() {
    // her er udregningerne for opgraderingern

    if (t >= 4 && t<= 19) {
      t++;
      upgradenr = int(random(5));
    }

    if (G.Wc.action) {
      if (G.Wc.UpgadeW1) { 

        upgradeW1 = new PVector(G.level.UpgradePower[upgradenr].x, G.level.UpgradePower[upgradenr].y);
      }
      if (G.Wc.UpgadeW2) { 

        upgradeW2 = new PVector(G.level.UpgradePower[upgradenr].x, G.level.UpgradePower[upgradenr].y);
      }
      if (G.Wc.UpgadeW3) { 

        upgradeW3 = new PVector(G.level.UpgradePower[upgradenr].x, G.level.UpgradePower[upgradenr].y);
      }
      if (G.Wc.UpgadeW4) { 

        upgradeW4 = new PVector(G.level.UpgradePower[upgradenr].x, G.level.UpgradePower[upgradenr].y);
      }
      G.Wc.action=false;
    }
  }

  void addProgerss() {
    //her bliver alt arbejdet worken har lavet udreget og lagt sammen


    if (t>5 && t< 25 && GO == false) {
      t++;
      if (t>=24) {
        GO = true;
        t=0;
      }
    } 
    if (GO) {
      if (UpgadeBlocker[0] <= 0) {
        DayProgressR[0]=G.Pb.proW1.x-G.Pb.curW1.x;
        DayProgressB[0]=G.Pb.proW1.y-G.Pb.curW1.y;
      } else {
        DayProgressR[0]=0;
        DayProgressB[0]=0;
      }
      if (UpgadeBlocker[1] <= 0) {
        DayProgressR[1]=G.Pb.proW2.x-G.Pb.curW2.x;
        DayProgressB[1]=G.Pb.proW2.y-G.Pb.curW2.y;
      } else {
        DayProgressR[1]=0;
        DayProgressB[1]=0;
      }
      if (UpgadeBlocker[2] <= 0) {
        DayProgressR[2]=G.Pb.proW3.x-G.Pb.curW3.x;
        DayProgressB[2]=G.Pb.proW3.y-G.Pb.curW3.y;
      } else {
        DayProgressR[2]=0;
        DayProgressB[2]=0;
      }
      if (UpgadeBlocker[3] <= 0) {
        DayProgressR[3]=G.Pb.proW4.x-G.Pb.curW4.x;
        DayProgressB[3]=G.Pb.proW4.y-G.Pb.curW4.y;
      } else {
        DayProgressR[3]=0;
        DayProgressB[3]=0;
      }



      if (progessing) {
        t++;
        DayProgressR[4]=DayProgressR[0]+DayProgressR[1]+DayProgressR[2]+DayProgressR[3];
        DayProgressB[4]=DayProgressB[0]+DayProgressB[1]+DayProgressB[2]+DayProgressB[3];
        if (t >= 3) {
          progessing = false;
        }
      }
    }


    if (G.Wc.action1 && G.Wc.action2) {



      G.Pb.progressRed += DayProgressR[4];
      G.Pb.progressBlue += DayProgressB[4];

      G.ES.scoreProgressRed.add(new Score(G.Pb.progressRed));
      G.ES.scoreProgressBlue.add(new Score(G.Pb.progressBlue));

      G.Wc.action1 = false;
      G.Wc.action2 = false;
    }
  }


  void run() {   
    upgrade();
    upgradeblock();

    //println(DayProgressR[0], DayProgressB[0], UpgadeBloker[0], G.Pb.proP1W1.y, G.Pb.curW1.y);
    //println(taskW1, G.Wc.UpgadeW1, , upgradeW1RB); 
    //println(G.Wc.TaskW1, work, first, G.Pb.curW1, taskW1, curW1);
    //println(G.Wc.TaskW1, G.Wc.TaskW2, G.Wc.TaskW3, G.Wc.TaskW4, work, firstW2, G.Pb.curW2, G.Pb.curW3, G.Pb.curW4, UpgadeBloker[0]);
    //println(DayProgressR[4], DayProgressR[0]);
    //println(G.Wc.TaskW1, work, UpgadeBlocker[0], G.Wc.UpgadeW1, G.Wc.action1);

    //println(G.Wc.TaskW1, G.Wc.TaskW2, G.Wc.TaskW3, G.Wc.TaskW4);
    task() ;
    //println( G.Pb.curW1.x-task[tasknr].x, task[tasknr].x);

    println(G.Wc.action);

    //println(taskW1, taskW2, taskW3, taskW4, work+"hej");
    addProgerss();
  }
}
