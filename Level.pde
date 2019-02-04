class Level {
  PVector[] UpgradePower = new PVector[5];
  PVector[] WorkPower= new PVector[4];
  PVector WinScore;
  int time = 1;
  int tasknr;



  void changelevel(int C) {

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
      tasknr = 15;

      if (time >= 30) {
        G.nr++;
        G.lvlcode++;
        G.continu=1;
        time = 0;
      }

      break;

    case 1:  
      //this is level tows data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0].set(G.Pb.proW1);      
      WorkPower[1].set(G.Pb.proW2);     
      WorkPower[2].set(G.Pb.proW3);     
      WorkPower[3].set(G.Pb.proW4);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;

      if (time >= 30) {
        G.nr++;
        G.lvlcode++;
        G.continu=2;
        time = 0;
      }
      break;

    case 2:
      //this is level tres data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0].set(G.Pb.proW1);      
      WorkPower[1].set(G.Pb.proW2);     
      WorkPower[2].set(G.Pb.proW3);     
      WorkPower[3].set(G.Pb.proW4);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;

      if (time >= 30) {
        G.nr++;
        G.lvlcode++;
        G.continu=3;
        time = 0;
      }
      break;

    case 3:
      //this is level fours data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0].set(G.Pb.proW1);      
      WorkPower[1].set(G.Pb.proW2);     
      WorkPower[2].set(G.Pb.proW3);     
      WorkPower[3].set(G.Pb.proW4);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;

      if (time >= 30) {
        G.nr++;
        G.lvlcode++;
        G.continu=4;
        time = 0;
      }
      break;

    case 4:
      //this is level fives data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0].set(G.Pb.proW1);      
      WorkPower[1].set(G.Pb.proW2);     
      WorkPower[2].set(G.Pb.proW3);     
      WorkPower[3].set(G.Pb.proW4);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;
      if (time >= 30) {
        G.nr++;
        G.lvlcode++;
        G.continu=5;
        time = 0;
      }
      break;

    case 5:
      //this is level siks' data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0].set(G.Pb.proW1);      
      WorkPower[1].set(G.Pb.proW2);     
      WorkPower[2].set(G.Pb.proW3);     
      WorkPower[3].set(G.Pb.proW4);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;

      if (time >= 30) {
        G.nr++;
        G.lvlcode++;
        G.continu=6;
        time = 0;
      }
      break;

    case 6:
      //this is level sevens data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0].set(G.Pb.proW1);      
      WorkPower[1].set(G.Pb.proW2);     
      WorkPower[2].set(G.Pb.proW3);     
      WorkPower[3].set(G.Pb.proW4);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;

      if (time >= 30) {
        G.nr++;
        G.lvlcode++;
        G.continu=7;
        time = 0;
      }
      break;

    case 7:
      //this is level eights data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0].set(G.Pb.proW1);      
      WorkPower[1].set(G.Pb.proW2);     
      WorkPower[2].set(G.Pb.proW3);     
      WorkPower[3].set(G.Pb.proW4);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;

      if (time >= 30) {
        G.nr++;
        G.lvlcode++;
        G.continu=8;
        time = 0;
      }
      break;

    case 8:
      //this is level nines data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0].set(G.Pb.proW1);      
      WorkPower[1].set(G.Pb.proW2);     
      WorkPower[2].set(G.Pb.proW3);     
      WorkPower[3].set(G.Pb.proW4);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;

      if (time >= 30) {
        G.nr++;
        G.lvlcode++;
        G.continu=9;
        time = 0;
      }
      break;

    case 9:
      //this is level tens data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0].set(G.Pb.proW1);      
      WorkPower[1].set(G.Pb.proW2);     
      WorkPower[2].set(G.Pb.proW3);     
      WorkPower[3].set(G.Pb.proW4);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;

      if (time >= 30) {
        G.nr++;
        G.lvlcode++;
        G.continu=10;
        time = 0;
      }
      break;

    case 10:
      //this is level ellevens data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0].set(G.Pb.proW1);      
      WorkPower[1].set(G.Pb.proW2);     
      WorkPower[2].set(G.Pb.proW3);     
      WorkPower[3].set(G.Pb.proW4);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;

      if (time >= 30) {
        G.nr++;
        G.lvlcode++;
        G.continu=11;
        time = 0;
      }
      break;

    case 11:
      //this is level twelvs data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0].set(G.Pb.proW1);      
      WorkPower[1].set(G.Pb.proW2);     
      WorkPower[2].set(G.Pb.proW3);     
      WorkPower[3].set(G.Pb.proW4);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;

      if (time <= 30) {
        G.nr++;
        G.lvlcode++;
        G.continu=12;
        time = 0;
      }
      break;

    case 12:
      //this is level thurteans data. Copy and change this and you have a new level
      frameCount = 0;
      UpgradePower[0] = new PVector(10, -10, 5) ;
      UpgradePower[1] = new PVector(-10, 10, 5) ;      
      UpgradePower[2] = new PVector(10, 0, 5) ;      
      UpgradePower[3] = new PVector(0, 10, 5) ;      
      UpgradePower[4] = new PVector(20, 20, 2) ;
      WorkPower[0].set(G.Pb.proW1);      
      WorkPower[1].set(G.Pb.proW2);     
      WorkPower[2].set(G.Pb.proW3);     
      WorkPower[3].set(G.Pb.proW4);
      WinScore = new PVector(3000, 3000);
      tasknr = 15;

      if (time >= 30) {
        G.loc=5;
      }
      break;
    }
  }


  void run() {
  }
}
