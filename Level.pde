class Level {

  int[] GData = new int[12];
  PVector[] UpgradePower = new PVector[5];
  PVector[] WorkPower= new PVector[4];
  PVector WinScore;
  int time;



  void changelevel(int C) {

    switch (C) {
    case 0:
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
      time = 30;
      break;

    case 1:
      break;

    case 2:
      break;

    case 3:
      break;

    case 4:
      break;

    case 5:
      break;
    }
  }


  void run() {
  }
}
