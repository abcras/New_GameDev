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
      if (G.lvlcode < 12) {
        G.nr++;
        G.lvlcode++;
        G.continu = G.lvlcode++;
        time = 1;
      } else {
        G.loc = 5;
      }
    }

    switch (C) {
    case 0:
      //this is level ones data. Copy and change this and you have a new level
      frameCount = 0;

      WinScore = new PVector(3000, 3000);
      tasknr = 2;
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

    case 1:  
      //this is level tows data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(3000, 3000);
      tasknr = 2;
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

    case 2:
      //this is level tres data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(3000, 3000);
      tasknr = 2;
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

    case 3:
      //this is level fours data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(3000, 3000);
      tasknr = 2;
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

    case 4:
      //this is level fives data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(3000, 3000);
      tasknr = 2;
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

    case 5:
      //this is level siks' data. Copy and change this and you have a new level
      frameCount = 0;
      WinScore = new PVector(3000, 3000);
      tasknr = 2;
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
      tasknr = 2;
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
      tasknr = 2;
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
      tasknr = 2;
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
      tasknr = 2;
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
      tasknr = 2;
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
      tasknr = 2;
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
      WinScore = new PVector(3000, 3000);
      tasknr = 2;
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
