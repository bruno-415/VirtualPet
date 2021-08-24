float wiggle = 0;
boolean wiggleUp = true;
float eyeSize = 7;
float headBob = 1;
boolean bobUp = true;

void setup()
{
  size(410,400);
  background(79,66,181);
  frameRate(60);
}

void draw()
{
  background(79,66,181);
  fill(212, 110, 150);
  noStroke();
  ellipse(200,130-headBob,120,130);
  fill(0,0,0);
  ellipse(185,120-headBob,eyeSize,eyeSize);
  ellipse(205,120-headBob,eyeSize,eyeSize);
  
  noFill();
  stroke(212, 110, 150);
  strokeWeight(12);
  bezier(160,160-headBob,60-wiggle,160-wiggle,140+wiggle,300-wiggle,30+wiggle,300+headBob);
  bezier(200,170-headBob,120-wiggle,200-wiggle,180+wiggle,340-wiggle,120+wiggle,340+headBob);
  bezier(200,170-headBob,280-wiggle,200-wiggle,220+wiggle,340-wiggle,280+wiggle,340-headBob);
  bezier(240,160-headBob,340-wiggle,160-wiggle,260+wiggle,300-wiggle,370+wiggle,300-headBob);
  strokeWeight(8);
  bezier(150,150-headBob,40-wiggle,150-wiggle,120+wiggle,270-wiggle,20+wiggle,240+headBob);
  bezier(190,160-headBob,80-wiggle,190-wiggle,160+wiggle,320-wiggle,80+wiggle,320+headBob);
  bezier(210,160-headBob,320-wiggle,190-wiggle,240+wiggle,320-wiggle,320+wiggle,320-headBob);
  bezier(250,150-headBob,360-wiggle,150-wiggle,280+wiggle,270-wiggle,380+wiggle,240-headBob);
  
  if (wiggle > 20) {
    wiggleUp = false;
  }
  else if (wiggle < -15) {
    wiggleUp = true;
  }
  
  if (wiggleUp == true) {
    wiggle += 1;
  }
  else {
    wiggle -= 1;
  }
  
  if (headBob > 10) {
    bobUp = false;
  }
  else if (headBob < -10) {
    bobUp = true;
  }
  
  if (bobUp == true) {
    headBob += 1;
  }
  else {
    headBob -= 1;
  }
}
