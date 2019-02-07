class LogikWP {

  int t=1;
  int aninmation=0;
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
  PFont f;



  LogikWP() {
    f = createFont("arial", 16, true);
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
      if ( G.Wc.UpgadeW2 &&  UpgadeBlocker[1]<=0) {
        UpgadeBlocker[1]=int(G.level.UpgradePower[upgradenr].z);
      }
      if ( G.Wc.UpgadeW3 &&   UpgadeBlocker[2]<=0) { 
        UpgadeBlocker[2]=int(G.level.UpgradePower[upgradenr].z);
      }
      if ( G.Wc.UpgadeW4 && UpgadeBlocker[3]<=0) { 
        println("hej");
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


    fill(0, 0, 255);
    textAlign(CENTER);
    textSize(25);
    stroke(0);
    if (UpgadeBlocker[0] > 0) {
      text(UpgadeBlocker[0], width/16, height*11/16);
      text(UpgadeBlocker[0], width*11/16, height*11/16);
      line(width/8, height*2/4, 0, height*3/4);
      line(0, height*2/4, width/8, height*3/4);
      line(width*6/8, height*2/4, width*5/8, height*3/4);
      line(width*5/8, height*2/4, width*6/8, height*3/4);
    }
    if (UpgadeBlocker[1] > 0 ) {  
      text(UpgadeBlocker[1], width*3/16, height*15/16);
      text(UpgadeBlocker[1], width*13/16, height*15/16);
      line(width*2/8, height*3/4, width/8, height);
      line(width/8, height*3/4, width*2/8, height);
      line(width*7/8, height*3/4, width*6/8, height);
      line(width*6/8, height*3/4, width*7/8, height);
    }
    if (UpgadeBlocker[2] > 0) { 
      text(UpgadeBlocker[2], width*5/16, height*11/16);
      text(UpgadeBlocker[2], width*15/16, height*11/16);
      line(width*3/8, height*2/4, width*2/8, height*3/4);
      line(width*2/8, height*2/4, width*3/8, height*3/4);
      line(width, height*2/4, width*7/8, height*3/4);
      line(width*7/8, height*2/4, width, height*3/4);
    }
    if (UpgadeBlocker[3] > 0) { 
      text(UpgadeBlocker[3], width*3/16, height*7/16);
      text(UpgadeBlocker[3], width*13/16, height*7/16);
      line(width*2/8, height/4, width/8, height*2/4);
      line(width/8, height/4, width*2/8, height*2/4);
      line(width*7/8, height/4, width*6/8, height*2/4);
      line(width*6/8, height/4, width*7/8, height*2/4);
    }
    textAlign(LEFT);
  }

  void upgrade() {
    // her er udregningerne for opgraderingern
    // println(G.level.UpgradePower[upgradenr]);
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

        DayProgressR[4]=DayProgressR[0]+DayProgressR[1]+DayProgressR[2]+DayProgressR[3]+G.level.task[tasknr].x;
        DayProgressB[4]=DayProgressB[0]+DayProgressB[1]+DayProgressB[2]+DayProgressB[3]+G.level.task[tasknr].y;


        G.Wc.action1 =true;
        progessing = false;
      }
    }


    if (aninmation == G.level.tasknr-1) {
      aninmation = 90;
    }
    if (aninmation >= 90 && aninmation <= 100) {
      G.Pb.AprogressRed = int(DayProgressR[0]);
      G.Pb.AprogressBlue = int(DayProgressB[0]);
      aninmation++;
    }
    if (aninmation >= 100 && aninmation <= 110) {
      G.Pb.AprogressRed = int(DayProgressR[0]+DayProgressR[1]);
      G.Pb.AprogressBlue = int(DayProgressB[0]+DayProgressB[1]);
      aninmation++;
    } 
    if (aninmation >= 110 && aninmation <= 120) {
      G.Pb.AprogressRed = int(DayProgressR[0]+DayProgressR[1]+DayProgressR[2]);
      G.Pb.AprogressBlue = int(DayProgressB[0]+DayProgressB[1]+DayProgressB[2]);
      aninmation++;
    }
    if (aninmation >= 120 && aninmation <= 130) {
      G.Pb.AprogressRed = int(DayProgressR[0]+DayProgressR[1]+DayProgressR[2]+DayProgressR[3]);
      G.Pb.AprogressBlue = int(DayProgressB[0]+DayProgressB[1]+DayProgressB[2]+DayProgressB[3]);
      aninmation++;
    }
    if (aninmation >= 130) {
      G.Pb.AprogressRed = int(DayProgressR[0]+DayProgressR[1]+DayProgressR[2]+DayProgressR[3]+G.level.task[tasknr].x);
      G.Pb.AprogressBlue = int(DayProgressB[0]+DayProgressB[1]+DayProgressB[2]+DayProgressB[3]+G.level.task[tasknr].y);
      G.Pb.AprogressRed = 0;
      G.Pb.AprogressBlue = 0;

      aninmation = 90;
    }




    println(aninmation, G.Pb.AprogressRed, G.Pb.AprogressBlue); 


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
