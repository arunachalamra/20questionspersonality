public class Scenes implements Comparable {
  PImage img;
  public Scenes() {
  }

  void scene0() {
    img = loadImage("data/read.png");
    image(img, 0, 0, 400, 200);
  }

  void scene1() {
    img = loadImage("data/concert.jpg");
    image(img, 0, 0, 400, 200);
  }
  void scene2() {
    img = loadImage("data/videocall.jpg");
    image(img, 0, 0, 400, 200);
  }
  int compareTo(Object o) {
    return -1;
  }
}
