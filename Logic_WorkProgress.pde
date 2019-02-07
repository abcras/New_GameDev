class LogikWP {

  int t=1;
  boolean work = false;
  boolean progessing = false;
  boolean GO = false;
  int[] UpgadeBlocker = new int[4];
  float[] DayProgressR = new float[5]; 
  float[] DayProgressB = new float[5];


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






    if (work) {
      if (UpgadeBlocker[0] <= 0 && G.Wc.TaskW1 == 1) {
        //if (G.Wc.TaskW1 == 1 && work) {
        taskW1 = PVector.add(taskW1, G.level.task[tasknr]);     
        G.Wc.TaskW1 = 0;

        //println("hej");
      }



      if (UpgadeBlocker[1] <= 0 && G.Wc.TaskW2 == 1) {
        taskW2 = PVector.add(taskW2, G.level.task[tasknr]);     
        G.Wc.TaskW2 = 0;
      }




      if (UpgadeBlocker[2] <= 0 && G.Wc.TaskW3 == 1) {
        taskW3 = PVector.add(taskW3, G.level.task[tasknr]);   
        G.Wc.TaskW3 = 0;
      }




      if (UpgadeBlocker[3] <= 0 && G.Wc.TaskW4 == 1) {
        taskW4 = PVector.add(taskW4, G.level.task[tasknr]);
        G.Wc.TaskW4 = 0;
      }
      work = false;
    }
    if (t >= 4 && t<= 19) {
      t++;
      tasknr = int(random(10));
    }
  }


  void upgradeblock() {
    // her bliver workeren stoppet med at kunne lave arbejegde hvis den er igang med at blive opgradetet

    if (G.Wc.action) {
      if (G.Wc.UpgadeW1  && UpgadeBlocker[0]<=0) { 
        UpgadeBlocker[0]=int(G.level.UpgradePower[upgradenr].z);
      }
      if ( G.Wc.UpgadeW2 &&  UpgadeBlocker[0]==0) {
        UpgadeBlocker[1]=int(G.level.UpgradePower[upgradenr].z);  
      
      }
      if ( G.Wc.UpgadeW3 &&   UpgadeBlocker[2]==0) { 
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
    // println(G.level.UpgradePower[upgradenr]);
    if (G.Wc.action) {
      if (G.Wc.UpgadeW1) { 

        upgradeW1 = new PVector(G.level.UpgradePower[upgradenr].x, G.level.UpgradePower[upgradenr].y);
      }
      if (G.Wc.UpgadeW2 &&  G.Wc.action) { 

        upgradeW2 = new PVector(G.level.UpgradePower[upgradenr].x, G.level.UpgradePower[upgradenr].y);
      }
      if (G.Wc.UpgadeW3 &&  G.Wc.action) { 

        upgradeW3 = new PVector(G.level.UpgradePower[upgradenr].x, G.level.UpgradePower[upgradenr].y);
      }
      if (G.Wc.UpgadeW4 &&  G.Wc.action) { 

        upgradeW4 = new PVector(G.level.UpgradePower[upgradenr].x, G.level.UpgradePower[upgradenr].y);
      }
    }
    if (t >= 4 && t<= 19) {
      t++;
      upgradenr = int(random(5));
    }
  }

  void addProgerss() {
    //her bliver alt arbejdet worken har lavet udreget og lagt sammen


    if (t>=1 && t<= 24 && GO == false) {
      //println("hej");
      t++;
      if (t>=24) {
        tasknr = int(random(10));
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
        DayProgressR[4]=DayProgressR[0]+DayProgressR[1]+DayProgressR[2]+DayProgressR[3]+G.level.task[tasknr].x;
        DayProgressB[4]=DayProgressB[0]+DayProgressB[1]+DayProgressB[2]+DayProgressB[3]+G.level.task[tasknr].y;


        G.Wc.action1 =true;
        progessing = false;
      }
    }




    if (G.Wc.action1) {


      G.Pb.progressRed += DayProgressR[4];
      G.Pb.progressBlue += DayProgressB[4];

      G.ES.scoreProgressRed.add(new Score(G.Pb.progressRed));
      G.ES.scoreProgressBlue.add(new Score(G.Pb.progressBlue));



      G.Wc.action1 = false;
    }
  }


  void run() {   

    upgrade();
    upgradeblock();
    addProgerss();
  
    task() ;
  }
}
