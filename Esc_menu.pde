class escMenu {

  boolean es = false;
  escMenu() {
  }

  void choises() {
  }

  void display() {
    fill(255, 255, 0);
    stroke(0);
    strokeWeight(2);
    textAlign(CENTER);
    rect(width*3/8, 0, width*2/8, height);
  }

  void open() {
    if (keys[9] && G.T.es==0) {
      G.T.es=1;
      es = !es;
    }
  }

  void run() {
    open();
    if (es) {
      display();
      cs = true;
    }
  }
}
