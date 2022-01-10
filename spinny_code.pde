float i = 0;
float j = 1;
int steps = 30;

void setup() {
  size(1000, 1000);
  frameRate(30);
  background(255);
}

void draw() {  
  if (j < 500) {
    noFill();
    stroke(0);
    translate(width/2, height/2);
    rotate(i);
    ellipse(0, 0, i, j);
    i += 1;
    j += 3;
  } else {
    i -= 3;
    j -= 5;
  }

  noStroke();
  fill(0);

  for (int x = steps+(width*1/10); x < width*9/10; x += steps) {
    for (int y = steps + (height*1/10); y < height*9/10; y += steps) {
      float dis = sqrt(pow((x - mouseX), 2)+pow((y - mouseY), 2))/2;
      float radius = dis*dis/width;
      radius = min(steps, radius+2);

      if (mousePressed == true) {
        radius = sqrt(pow(x - mouseX, 2) + pow (y - mouseY, 2))/1.5;
        noFill();
        stroke(255);
        strokeWeight(1);
      }

      ellipse(x, y, radius-radius*0.5, radius-radius*0.5);
    }
  }
}
