BOBA[] boba1 = new BOBA[9];

void setup(){
  size(900,600);
  for(int i = 0; i < boba1.length; i++){
  boba1[i]= new BOBA(i*random(-38,220), i*random(-25,300));
  }
}

void draw(){
  
  background(194, 220, 237);
  rotate(mouseX / 115.0);
  for(int i = 0; i < boba1.length; i++){
  boba1[i].display();
  boba1[i].moveDownward(random(-9,28));
  }
  
}




class BOBA{
  float A;
  float B;
  
  float earR; float earG; float earB;
  float eyeR; float eyeG; float eyeB;

  BOBA (float tempA, float tempB){
    A = tempA;
    B = tempB;
  }
  
  
  
  void display(){
   
    strokeWeight(4.5);
    
   // Set CENTER mode
    ellipseMode(CENTER);
    rectMode(CENTER);
    
    //Draw boba's body
    stroke(229, 86, 150);
    fill(225, 134, 152);
    ellipse(300 + A, 428 + B, 150, 165);
    
    //Draw boba's head
    stroke(229, 86, 150);
    fill(225, 134, 152);
    ellipse(300 + A, 300 + B, 280, 280);
    
    //Draw boba's left ear 
    stroke(225, 182, 30);
    earR = random (255);
    earG = random (255);
    earB = random (255);
    fill(earR, earG, earB, 120);
    triangle(260 + A, 200 + B, 150 + A, 120 + B, 175 + A, 270 + B);
    //Draw boba's right ear
    triangle(340 + A, 200 + B, 450 + A, 120 + B, 425 + A, 270 + B);
    
    //Draw boba's eyes
    //white
    noStroke();
    eyeR = random (180,255);
    eyeG = random (180,255);
    eyeB = random (180,255);
    fill(eyeR, eyeG, eyeB);
    ellipse(225 + A, 320 + B, 30, 100);
    ellipse(375 + A, 320 + B, 30, 100);
    
    //left black
    noStroke();
    fill(20, 22, 23);
    ellipse(225 + A, 340 + B, 17, 50);
    //right black
    noStroke();
    fill(20, 22, 23);
    ellipse(375 + A, 340 + B, 17, 50);
    
    //Draw boba's nose
    noStroke();
    fill(225, 230, 177);
    ellipse(300 + A, 390 + B, 20, 20);
    
    //Draw boba's month
    stroke(225, 230, 177);
    line(280 + A, 410 + B, 320 + A, 410 + B);
    
    //Draw boba's hands
    stroke(229, 86, 150);
    fill(247, 177, 205);
    ellipse(225 + A, 443 + B, 35, 35);
    ellipse(375 + A, 443 + B, 35, 35);
    
    //Draw boba's legs
    stroke(229, 86, 150);
    fill(earR, earG, earB);
    ellipse(235 + A, 500 + B, 60, 60);
    ellipse(365 + A, 500 + B, 60, 60);
  }
  
  
  void moveDownward(float speed){ 
    B = B + speed;
    if(B>height){
      B = 0;
    }
  }

}
