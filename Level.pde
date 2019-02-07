class Level {
  PVector[] UpgradePower = new PVector[5];
  PVector[] WorkPower= new PVector[4];
  PVector WinScore;
  int time = 1;
  int tasknr;
  int interations = 2;
  PVector[] task = new PVector[10];



  void changelevel(int C) {

    if (time >= interations) {
          G.Pb.curW1=(G.level.WorkPower[0]);
      G.Pb.curW2.set(G.level.WorkPower[1]);
      G.Pb.curW3.set(G.level.WorkPower[2]);
      G.Pb.curW4.set(G.level.WorkPower[3]);
    

      G.Pb.progressRed = 0;
      G.Pb.progressBlue = 0;
      G.Wp.UpgadeBlocker[0]=0;   
      G.Wp.UpgadeBlocker[1]=0;   
      G.Wp.UpgadeBlocker[2]=0;   
      G.Wp.UpgadeBlocker[3]=0;
      if (G.lvlcode < 12) {
        G.nr++;
        G.lvlcode=G.lvlcode+1;
        G.continu = G.lvlcode+1;
        time = 1;
      } else {
        G.loc = 5;
      }
    }

    switch (C) {
    case 0:
      //this is level ones data. Copy and change this and you have a new level
      frameCount = 0;

      WinScore = new PVector(1200, 1200);
      tasknr = 5;
      interations = 10;
      WorkPower[0] = new PVector(200, 90);      
      WorkPower[1] = new PVector(150, 150);      
      WorkPower[2] = new PVector(170, 150);      
      WorkPower[3] = new PVector(120, 170);

      UpgradePower[0] = new PVector(10, -10, 2) ;
      UpgradePower[1] = new PVector(-10, 10, 2) ;      
      UpgradePower[2] = new PVector(10, 0, 2) ;      
      UpgradePower[3] = new PVector(0, 10, 2) ;      
      UpgradePower[4] = new PVector(20, 20, 1) ;

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


      break;

    case 1:  
      //this is level tows data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(3500, 3500);
      tasknr = 5;
      interations = 10;
      WorkPower[0] = new PVector(105, 150);      
      WorkPower[1] = new PVector(150, 105);      
      WorkPower[2] = new PVector(125, 95);      
      WorkPower[3] = new PVector(95, 125);

      UpgradePower[0] = new PVector(15, 15, 2) ;
      UpgradePower[1] = new PVector(10, 10, 2) ;      
      UpgradePower[2] = new PVector(10, 0, 1) ;      
      UpgradePower[3] = new PVector(0, 10, 1) ;      
      UpgradePower[4] = new PVector(1, 1, 4) ;

      task[0] = new PVector(10, 5);
      task[1] = new PVector(5, 10);
      task[2] = new PVector(10, 15);
      task[3] = new PVector(15, 10);
      task[4] = new PVector(20, 15); 
      task[5] = new PVector(15, 20);
      task[6] = new PVector(20, 25);
      task[7] = new PVector(25, 20);
      task[8] = new PVector(15, 25);
      task[9] = new PVector(25, 15); 

      break;

    case 2:
      //this is level tres data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(3500, 500);
      tasknr = 5;
      interations = 15;
      WorkPower[0] = new PVector(50, 400);      
      WorkPower[1] = new PVector(50, 400);      
      WorkPower[2] = new PVector(50, 400);      
      WorkPower[3] = new PVector(75, 400);

      UpgradePower[0] = new PVector(5, 20, 3) ;
      UpgradePower[1] = new PVector(15, -50, 2) ;      
      UpgradePower[2] = new PVector(15, 0, 2) ;      
      UpgradePower[3] = new PVector(15, -50, 3) ;      
      UpgradePower[4] = new PVector(20, -75, 1) ;

      task[0] = new PVector(200, 5);
      task[1] = new PVector(50, 5);
      task[2] = new PVector(75, 3);
      task[3] = new PVector(5, 5);
      task[4] = new PVector(5, 5); 
      task[5] = new PVector(15, 10);
      task[6] = new PVector(20, 5);
      task[7] = new PVector(25, 10);
      task[8] = new PVector(30, 15);
      task[9] = new PVector(0, 50); 

      break;

    case 3:
      //this is level fours data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(999999, 999999);
      tasknr = 3;
      interations = 30;
      WorkPower[0] = new PVector(2000, 2000);      
      WorkPower[1] = new PVector(2000, 2000);      
      WorkPower[2] = new PVector(2000, 2000);      
      WorkPower[3] = new PVector(2000, 2000);

      UpgradePower[0] = new PVector(2000, 2000, 0) ;
      UpgradePower[1] = new PVector(2000, 2000, 0) ;      
      UpgradePower[2] = new PVector(2000, 2000, 0) ;      
      UpgradePower[3] = new PVector(2000, 2000, 0) ;      
      UpgradePower[4] = new PVector(2000, 2000, 0) ;

      task[0] = new PVector(1000, 500);
      task[1] = new PVector(500, 1000);
      task[2] = new PVector(2000, 500);
      task[3] = new PVector(500, 2000);
      task[4] = new PVector(1500, 500); 
      task[5] = new PVector(500, 1500);
      task[6] = new PVector(2000, 2500);
      task[7] = new PVector(2500, 2000);
      task[8] = new PVector(3000, 250);
      task[9] = new PVector(250, 3000); 

      break;

    case 4:
      //this is level fives data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(3000, 3000);
      tasknr = 20;
      interations = 5;
      WorkPower[0] = new PVector(200, 90);      
      WorkPower[1] = new PVector(150, 150);      
      WorkPower[2] = new PVector(170, 150);      
      WorkPower[3] = new PVector(120, 170);

      UpgradePower[0] = new PVector(10, -10, 2) ;
      UpgradePower[1] = new PVector(-10, 10, 2) ;      
      UpgradePower[2] = new PVector(10, 0, 2) ;      
      UpgradePower[3] = new PVector(0, 10, 2) ;      
      UpgradePower[4] = new PVector(20, 20, 1) ;

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


      break;

    case 5:
      //this is level siks' data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(3000, 3000);
      tasknr = 20;
      interations = 7;
      WorkPower[0] = new PVector(200, 90);      
      WorkPower[1] = new PVector(150, 150);      
      WorkPower[2] = new PVector(170, 150);      
      WorkPower[3] = new PVector(120, 170);

      UpgradePower[0] = new PVector(10, -10, 2) ;
      UpgradePower[1] = new PVector(-10, 10, 2) ;      
      UpgradePower[2] = new PVector(10, 0, 2) ;      
      UpgradePower[3] = new PVector(0, 10, 2) ;      
      UpgradePower[4] = new PVector(20, 20, 1) ;

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


      break;

    case 6:
      //this is level sevens data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(3000, 3000);
      tasknr = 20;
      interations = 7;
      WorkPower[0] = new PVector(200, 90);      
      WorkPower[1] = new PVector(150, 150);      
      WorkPower[2] = new PVector(170, 150);      
      WorkPower[3] = new PVector(120, 170);

      UpgradePower[0] = new PVector(10, -10, 2) ;
      UpgradePower[1] = new PVector(-10, 10, 2) ;      
      UpgradePower[2] = new PVector(10, 0, 2) ;      
      UpgradePower[3] = new PVector(0, 10, 2) ;      
      UpgradePower[4] = new PVector(20, 20, 1) ;

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

      break;

    case 7:
      //this is level eights data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(3000, 3000);
      tasknr = 20;
      interations = 7;
      WorkPower[0] = new PVector(200, 90);      
      WorkPower[1] = new PVector(150, 150);      
      WorkPower[2] = new PVector(170, 150);      
      WorkPower[3] = new PVector(120, 170);

      UpgradePower[0] = new PVector(10, -10, 2) ;
      UpgradePower[1] = new PVector(-10, 10, 2) ;      
      UpgradePower[2] = new PVector(10, 0, 2) ;      
      UpgradePower[3] = new PVector(0, 10, 2) ;      
      UpgradePower[4] = new PVector(20, 20, 1) ;

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


      break;

    case 8:
      //this is level nines data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(3000, 3000);
      tasknr = 20;
      interations = 7;
      WorkPower[0] = new PVector(200, 90);      
      WorkPower[1] = new PVector(150, 150);      
      WorkPower[2] = new PVector(170, 150);      
      WorkPower[3] = new PVector(120, 170);

      UpgradePower[0] = new PVector(10, -10, 2) ;
      UpgradePower[1] = new PVector(-10, 10, 2) ;      
      UpgradePower[2] = new PVector(10, 0, 2) ;      
      UpgradePower[3] = new PVector(0, 10, 2) ;      
      UpgradePower[4] = new PVector(20, 20, 1) ;

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


      break;

    case 9:
      //this is level tens data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(3000, 3000);
      tasknr = 20;
      interations = 7;
      WorkPower[0] = new PVector(200, 90);      
      WorkPower[1] = new PVector(150, 150);      
      WorkPower[2] = new PVector(170, 150);      
      WorkPower[3] = new PVector(120, 170);

      UpgradePower[0] = new PVector(10, -10, 2) ;
      UpgradePower[1] = new PVector(-10, 10, 2) ;      
      UpgradePower[2] = new PVector(10, 0, 2) ;      
      UpgradePower[3] = new PVector(0, 10, 2) ;      
      UpgradePower[4] = new PVector(20, 20, 1) ;

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


      break;

    case 10:
      //this is level ellevens data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(3000, 3000);
      tasknr = 20;
      interations = 7;
      WorkPower[0] = new PVector(200, 90);      
      WorkPower[1] = new PVector(150, 150);      
      WorkPower[2] = new PVector(170, 150);      
      WorkPower[3] = new PVector(120, 170);

      UpgradePower[0] = new PVector(10, -10, 2) ;
      UpgradePower[1] = new PVector(-10, 10, 2) ;      
      UpgradePower[2] = new PVector(10, 0, 2) ;      
      UpgradePower[3] = new PVector(0, 10, 2) ;      
      UpgradePower[4] = new PVector(20, 20, 1) ;

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


      break;

    case 11:
      //this is level twelvs data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(3000, 3000);
      tasknr = 20;
      interations = 7;
      WorkPower[0] = new PVector(200, 90);      
      WorkPower[1] = new PVector(150, 150);      
      WorkPower[2] = new PVector(170, 150);      
      WorkPower[3] = new PVector(120, 170);

      UpgradePower[0] = new PVector(10, -10, 2) ;
      UpgradePower[1] = new PVector(-10, 10, 2) ;      
      UpgradePower[2] = new PVector(10, 0, 2) ;      
      UpgradePower[3] = new PVector(0, 10, 2) ;      
      UpgradePower[4] = new PVector(20, 20, 1) ;

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


      break;

    case 12:
      //this is level thurteans data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(300000, 300000);
      tasknr = 50;
      interations = 50;
      WorkPower[0] = new PVector(20, 30);      
      WorkPower[1] = new PVector(10, 20);      
      WorkPower[2] = new PVector(20, 30);      
      WorkPower[3] = new PVector(10, 50);

      UpgradePower[0] = new PVector(-1, 4, 0) ;
      UpgradePower[1] = new PVector(4, -1, 0) ;      
      UpgradePower[2] = new PVector(1, 0, 0) ;      
      UpgradePower[3] = new PVector(0, 1, 0) ;      
      UpgradePower[4] = new PVector(2, 2, 0) ;

      task[0] = new PVector(10, 5);
      task[1] = new PVector(5, 10);
      task[2] = new PVector(10, 15);
      task[3] = new PVector(5, 10);
      task[4] = new PVector(20, 15); 
      task[5] = new PVector(15, 20);
      task[6] = new PVector(20, 25);
      task[7] = new PVector(25, 20);
      task[8] = new PVector(10, 15);
      task[9] = new PVector(15, 15); 

      break;
    }
  }

  void win() {
    if (time >= interations) {
      if (WinScore.x <= G.Pb.progressRed || WinScore.y <= G.Pb.progressBlue ) {
        G.ES.winGame = true;
        G.loc = 5;
      }
      if (WinScore.x >= G.Pb.progressRed || WinScore.y >= G.Pb.progressBlue ) {
        G.ES.winGame = false;
        G.loc = 5;
      }
    }
  }


  void run() {
    win();
  }
}
