class LoadGame {
  PFont f; 
  boolean[] LVL = new boolean[12];
  int[] chol = new int[12];
  int levelCode = 0;
  int lea;
  boolean leave;

  LoadGame() { 
    f = createFont("areal", 16, true);
  }

  void bord() {

    fill(0, 0, 0); 
    textFont(f, 26);
    textAlign(CENTER);
    text("Load Game", width*4/8, 40);
    textAlign(LEFT);


    fill(chol[0], 255, chol[0]);
    stroke(0);
    strokeWeight(2);
    rect(width*1/8, 50, 150, height*1/4); 
    fill(0, 0, 0);
    textFont(f, 26);
    textAlign(CENTER);
    text("LvL1", width*1/8+75, 110);
    textAlign(LEFT);



    fill(chol[1], 255, chol[1] );
    if (G.nr < 1) {  
      fill(0);
    }
    stroke(0);
    strokeWeight(2);
    rect(width*2/8+50, 50, 150, height*1/4);     
    fill(0, 0, 0);
    textFont(f, 26);
    textAlign(CENTER);
    text("LvL2", width*2/8+125, 110);
    textAlign(LEFT);


    fill(chol[2], 255, chol[2] );
    if (G.nr < 2) {  
      fill(0);
    }
    stroke(0);
    strokeWeight(2);
    rect(width*3/8+100, 50, 150, height*1/4);  
    fill(0, 0, 0);
    textFont(f, 26);
    textAlign(CENTER);
    text("LvL3", width*3/8+175, 110);
    textAlign(LEFT);


    fill(chol[3], 255, chol[3] );
    if (G.nr < 3) {  
      fill(0);
    }
    stroke(0);
    strokeWeight(2);
    rect(width*4/8+150, 50, 150, height*1/4);
    fill(0, 0, 0);
    textFont(f, 26);
    textAlign(CENTER);
    text("LvL4", width*4/8+225, 110);
    textAlign(LEFT);

    fill(chol[4], 255, chol[4] );
    if (G.nr < 4) {  
      fill(0);
    }
    stroke(0);
    strokeWeight(2);
    rect(width*1/8, 150, 150, height*1/4); 
    fill(0, 0, 0);
    textFont(f, 26);
    textAlign(CENTER);
    text("LvL5", width*1/8+75, 210);    
    textAlign(LEFT);


    fill(chol[5], 255, chol[5] );
    if (G.nr < 5) {  
      fill(0);
    }
    stroke(0);
    strokeWeight(2);
    rect(width*2/8+50, 150, 150, height*1/4);     
    fill(0, 0, 0);
    textFont(f, 26);
    textAlign(CENTER);
    text("LvL6", width*2/8+125, 210);
    textAlign(LEFT);

    fill(chol[6], 255, chol[6] );
    if (G.nr < 6) {  
      fill(0);
    }
    stroke(0);
    strokeWeight(2);
    rect(width*3/8+100, 150, 150, height*1/4);      
    fill(0, 0, 0);
    textFont(f, 26);
    textAlign(CENTER);
    text("LvL7", width*3/8+175, 210);
    textAlign(LEFT); 

    fill(chol[7], 255, chol[7] );
    if (G.nr < 7) {  
      fill(0);
    }
    stroke(0);
    strokeWeight(2);
    rect(width*4/8+150, 150, 150, height*1/4); 
    fill(0, 0, 0);
    textFont(f, 26);
    textAlign(CENTER);
    text("LvL8", width*4/8+225, 210);
    textAlign(LEFT);

    fill(chol[8], 255, chol[8] );
    if (G.nr < 8) {  
      fill(0);
    }
    stroke(0);
    strokeWeight(2);
    rect(width*1/8, 250, 150, height*1/4);     
    fill(0, 0, 0);
    textFont(f, 26);
    textAlign(CENTER);
    text("LvL9", width*1/8+75, 310);    
    textAlign(LEFT);


    fill(chol[9], 255, chol[9]);
    if (G.nr < 9) {  
      fill(0);
    }
    stroke(0);
    strokeWeight(2);
    rect(width*2/8+50, 250, 150, height*1/4);     
    fill(0, 0, 0);
    textFont(f, 26);
    textAlign(CENTER);
    text("LvL10", width*2/8+125, 310);
    textAlign(LEFT);

    fill(chol[10], 255, chol[10] );
    if (G.nr < 10) {  
      fill(0);
    }
    stroke(0);
    strokeWeight(2);
    rect(width*3/8+100, 250, 150, height*1/4);  
    fill(0, 0, 0);
    textFont(f, 26);
    textAlign(CENTER);
    text("LvL11", width*3/8+175, 310);
    textAlign(LEFT); 

    fill(chol[11], 255, chol[11] );
    if (G.nr < 11) {  
      fill(0);
    }
    stroke(0);
    strokeWeight(2);
    rect(width*4/8+150, 250, 150, height*1/4);
    fill(0, 0, 0);
    textFont(f, 26);
    textAlign(CENTER);
    text("LvL12", width*4/8+225, 310);
    textAlign(LEFT);
  }

  void bordlogic() {    

    if (mouseX >= width*2/16 && mouseX <= width*5/16 && mouseY >= height*1/8 && mouseY <= height*3/8) {
      chol[0] = 0;
      LVL[0] = true;
      levelCode = 1;
    } else {
      chol[0] = 255;
      LVL[0] = false;
    }
    if (mouseX >= width*5/16 && mouseX <= width*8/16 && mouseY >= height*1/8 && mouseY <= height*3/8) {
      chol[1] = 0;
      //LVL2 = true;
      levelCode = 2*(G.nr/255);
    } else {
      chol[1] = 255;
      //LVL2 = false;
    } 
    if (mouseX >= width*8/16 && mouseX <= width*11/16 && mouseY >= height*1/8 && mouseY <= height*3/8) {
      chol[2] = 0;
      //LVL3 = true;
      levelCode = 3*(G.nr/255);
    } else {
      chol[2] = 255;
      //LVL3 = false;
    } 
    if (mouseX >= width*11/16 && mouseX <= width*14/16 && mouseY >= height*1/8 && mouseY <= height*3/8) {
      chol[3] = 0;
      //LVL4 = true;
    } else {
      chol[3] = 255;
      //LVL4 = false;
    }    
    if (mouseX >= width*2/16 && mouseX <= width*5/16 && mouseY >= height*3/8 && mouseY <= height*5/8) {
      chol[4] = 0;
      //LVL5 = true;
    } else {
      chol[4] = 255;
      //LVL5 = false;
    }
    if (mouseX >= width*5/16 && mouseX <= width*8/16 && mouseY >= height*3/8 && mouseY <= height*5/8) {
      chol[5] = 0;
      //LVL6 = true;
    } else {
      chol[5] = 255;
      //LVL6 = false;
    } 
    if (mouseX >= width*8/16 && mouseX <= width*11/16 && mouseY >= height*3/8 && mouseY <= height*5/8) {
      chol[6] = 0;
      //LVL7 = true;
    } else {
      chol[6] = 255;
      //LVL7 = false;
    } 
    if (mouseX >= width*11/16 && mouseX <= width*14/16 && mouseY >=height*3/8 && mouseY <= height*5/8) {
      chol[7] = 0;
      //LVL8 = true;
    } else {
      chol[7] = 255;
      //LVL8 = false;
    }    
    if (mouseX >= width*2/16 && mouseX <= width*5/16 && mouseY >= height*5/8 && mouseY <= height*7/8) {
      chol[8] = 0;
      //LVL9 = true;
    } else {
      chol[8] = 255;
      //LVL9 = false;
    }
    if (mouseX >= width*5/16 && mouseX <= width*8/16 && mouseY >= height*5/8 && mouseY <= height*7/8) {
      chol[9] = 0;
      //LVL10 = true;
    } else {
      chol[9] = 255;
      //LVL10 = false;
    } 
    if (mouseX >= width*8/16 && mouseX <= width*11/16 && mouseY >= height*5/8 && mouseY <= height*7/8) {
      chol[10] = 0;
      //LVL11 = true;
    } else {
      chol[10] = 255;
      //LVL11 = false;
    } 
    if (mouseX >= width*11/16 && mouseX <= width*14/16 && mouseY >= height*5/8 && mouseY <= height*7/8) {
      chol[11] = 0;
      //LVL12 = true;
    } else {
      chol[11] = 255;
      //LVL12 = false;
    }
  }
  void leave() {
    fill(255, lea, 255);
    stroke(0);
    strokeWeight(2);
    rect(0, 0, 80, 80);
    fill(0);
    textFont(f, 20);
    textAlign(CENTER);
    text("Back", 40, 45); 


    if (mouseX>=0 && mouseX<=80 && mouseY>=0 && mouseY<=80 ) {
      G.M.t=0;
      lea = 0;
      G.M.screen[2]=false;
      G.M.screen[1]=false;

      leave = true;
    } else {
      lea = 255;
      leave = false;
    }  
    textAlign(LEFT);
  }

  void run() { 

    leave();
    bord();
    bordlogic();
  }
}
