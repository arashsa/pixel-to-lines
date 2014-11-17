// get(x, y) == pixels[y*width+x]

PImage img;
char setup = 'd'; //down, right, left, up

void setup() {
  img = loadImage("578571_229186487225753_674458546_n.jpg");
  img.resize(displayWidth, displayHeight);
  size(displayWidth, displayHeight);
  image(img, 0, 0);
}

void draw() {
  loadPixels();
  if (mousePressed) {
    color c = pixels[mouseY*width+mouseX];
    strokeWeight((int)random(2));
    stroke(c);
    fill(c);

    switch(setup) {
    case 'd': 
      line(mouseX, mouseY, mouseX, mouseY + (int) random(1000));
      break;
    case 'r':
      line(mouseX, mouseY, mouseX + (int) random(1000), mouseY);
      break;
    case 'u':
      line(mouseX, mouseY, mouseX, mouseY - (int) random(1000));
      break;
    case 'l':
      line(mouseX, mouseY, mouseX - (int) random(1000), mouseY);
      break;
    }
  }
  //updatePixels();
}

void keyPressed() {
  if (key == 'd') {
    setup = 'd';
  }
  if (key == 'l') {
    setup = 'l';
  }
  if (key == 'r') {
    setup = 'r';
  }
  if (key == 'u') {
    setup = 'u';
  }
}

