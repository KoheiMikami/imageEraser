PImage img;
PImage img2;
IntList num;

void setup() {
  size(500, 500);
  img = loadImage("image.png");
  img2 = loadImage("image1.jpg");
  num = new IntList();
}

void draw() {
  background(255);
  image(img2, 0, 0);
  img.loadPixels();

  for (int i = 0; i < num.size(); i++) {
    img.pixels[num.get(i)] = color(0, 0, 0, 0);
  }

  img.updatePixels();
  image(img, 0, 0);
}

void mouseDragged() {
  for (int i = mouseY; i < mouseY+10; i++) {
    for (int k = 0; k < 10; k++) {
      num.append((i*img.width+mouseX)+k);
    }
  }
}