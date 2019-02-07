 class Level {
  PVector[] UpgradePower = new PVector[5];
  PVector[] WorkPower= new PVector[4];
  PVector WinScore;
  int time = 1;
  int tasknr;
  int interations = 2;




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
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0] = new PVector(200, 150);      
      WorkPower[1] = new PVector(100, 100);      
      WorkPower[2] = new PVector(100, 100);      
      WorkPower[3] = new PVector(100, 100);
      WinScore = new PVector(3000, 3000);
      tasknr = 2;
      interations = 3;



      break;

    case 1:  
      //this is level tows data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0] = new PVector(200, 150);      
      WorkPower[1] = new PVector(100, 100);      
      WorkPower[2] = new PVector(100, 100);      
      WorkPower[3] = new PVector(100, 100);
      WinScore = new PVector(3000, 3000);
      tasknr = 5;
      interations = 11;

      break;

    case 2:
      //this is level tres data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0] = new PVector(200, 150);      
      WorkPower[1] = new PVector(100, 100);      
      WorkPower[2] = new PVector(100, 100);      
      WorkPower[3] = new PVector(100, 100);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;
      interations = 12;

      break;

    case 3:
      //this is level fours data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0] = new PVector(200, 150);      
      WorkPower[1] = new PVector(100, 100);      
      WorkPower[2] = new PVector(100, 100);      
      WorkPower[3] = new PVector(100, 100);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;
      interations = 13;

      break;

    case 4:
      //this is level fives data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0] = new PVector(200, 150);      
      WorkPower[1] = new PVector(100, 100);      
      WorkPower[2] = new PVector(100, 100);      
      WorkPower[3] = new PVector(100, 100);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;
      interations = 14;


      break;

    case 5:
      //this is level siks' data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0] = new PVector(200, 150);      
      WorkPower[1] = new PVector(100, 100);      
      WorkPower[2] = new PVector(100, 100);      
      WorkPower[3] = new PVector(100, 100);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;
      interations = 14;


      break;

    case 6:
      //this is level sevens data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0] = new PVector(200, 150);      
      WorkPower[1] = new PVector(100, 100);      
      WorkPower[2] = new PVector(100, 100);      
      WorkPower[3] = new PVector(100, 100);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;
      interations = 15;

      break;

    case 7:
      //this is level eights data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0] = new PVector(200, 150);      
      WorkPower[1] = new PVector(100, 100);      
      WorkPower[2] = new PVector(100, 100);      
      WorkPower[3] = new PVector(100, 100);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;
      interations = 16;


      break;

    case 8:
      //this is level nines data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0] = new PVector(200, 150);      
      WorkPower[1] = new PVector(100, 100);      
      WorkPower[2] = new PVector(100, 100);      
      WorkPower[3] = new PVector(100, 100);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;
      interations = 17;


      break;

    case 9:
      //this is level tens data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0] = new PVector(200, 150);      
      WorkPower[1] = new PVector(100, 100);      
      WorkPower[2] = new PVector(100, 100);      
      WorkPower[3] = new PVector(100, 100);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;
      interations = 18;


      break;

    case 10:
      //this is level ellevens data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0] = new PVector(200, 150);      
      WorkPower[1] = new PVector(100, 100);      
      WorkPower[2] = new PVector(100, 100);      
      WorkPower[3] = new PVector(100, 100);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;
      interations = 19;


      break;

    case 11:
      //this is level twelvs data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0] = new PVector(200, 150);      
      WorkPower[1] = new PVector(100, 100);      
      WorkPower[2] = new PVector(100, 100);      
      WorkPower[3] = new PVector(100, 100);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;
      interations = 20;


      break;

    case 12:
      //this is level thurteans data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0] = new PVector(200, 150);      
      WorkPower[1] = new PVector(100, 100);      
      WorkPower[2] = new PVector(100, 100);      
      WorkPower[3] = new PVector(100, 100);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;
      interations = 21;

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
