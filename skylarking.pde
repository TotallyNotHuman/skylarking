ArrayList<Star> stars;
final int STAR_CAP = 5000;

void setup() {
  size(1280,720,P3D);
  stars = new ArrayList<Star>();
  for (int i = 0; i < STAR_CAP; i++) {
    stars.add(new Star(new PVector(random(width), random(height), random(-200,0)),
                       (new PVector(random(-1,1), random(-1,1), random(2))).normalize()));
  }
}

void draw() {
  background(0, 0, 255);
  Star curr;
  for (int i = 0; i < stars.size(); i++) {
    curr = stars.get(i);
    curr.move(5);
    curr.render();
  }
}
