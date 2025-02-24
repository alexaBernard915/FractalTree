private double fractionLength = .5; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{  
   size(500,500);    
  noLoop(); 
  fill(138,196,212);
  rect(0,0,500,500); 
  noStroke(); 
  fill(76,133,76); 
  rect(0.0,350.0,500.0,150.0); 
} 
public void draw() 
{      
  stroke(52,102,52);   
  line(250,350,250,150);  
  drawBranches(250,150, 40.0);
} 
public void drawBranches(int x,int y, double branchLength){ 
stroke(252,252,202);    
  if(branchLength <= 5){
  } else{
  for(int i = 0; i < 10; i++){
    double angle = Math.random()*2*PI; 
    line((float)x, (float)y, (float)(x + branchLength*Math.cos(angle)), (float)(y + branchLength*Math.sin(angle))); 
    drawBranches((int)(x + branchLength*Math.cos(angle)), (int)(y + branchLength*Math.sin(angle)), branchLength*fractionLength); 
  }
  }
}
  public void mouseClicked(){
    redraw(); 
}


