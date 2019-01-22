class LogikWP {

  


  LogikWP() {
  }

  void task() {
  }

  void upgrade() {
  }

  void addProgerss() {
    if (G.Wc.action1 && G.Wc.action2) {

      println("hej");
      G.Pb.proR += 1000; 
      G.Pb.proB+= 1000;
      G.Wc.action1 = false;
      G.Wc.action2 = false;
    }
  }


  void run() {
    task() ;
    upgrade();
    addProgerss();
  }
}
