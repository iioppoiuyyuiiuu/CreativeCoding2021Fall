PathFinder[] paths;

void setup() {
  size(800, 800);
  background(255);
  ellipseMode(CENTER);
  fill(0);
  noStroke();
  smooth();

  paths = new PathFinder[1];
  paths[0] = new PathFinder();
}

void draw() {
  for (int j=0; j<8; j++) {
    for (int i=0; i<paths.length; i++) {
      PVector loc = paths[i].location;
      float diam = paths[i].diameter;
      ellipse(loc.x, loc.y, diam, diam);
      paths[i].update();
    }
  }
}

void mousePressed() {
  background(255);
  paths = new PathFinder[1];
  paths[0] = new PathFinder();
}

class PathFinder {

  PVector location;
  PVector velocity;
  float diameter;

  //树干
  PathFinder() {
    location = new PVector(width/2, height);
    velocity = new PVector(0, -2);
    diameter = 40;
  }

  //树枝
  PathFinder(PathFinder parent) {
    location = parent.location.get();
    velocity = parent.velocity.get();
    float area = PI*sq(parent.diameter/2);
    float newDiam = sqrt(area/2/PI)*2;
    diameter = newDiam;
    parent.diameter = newDiam;
  }

  void update() {
    if (diameter>0.5) {
      location.add(velocity);
      PVector bump = new PVector(random(-0.5, 0.5), random(-0.5, 0.5));//限定生长方向
      bump.mult(0.1);
      velocity.add(bump);
      velocity.normalize();
//生枝概率
      if (random(0, 1)<0.016) {
        paths = (PathFinder[]) append(paths, new PathFinder(this));
      }
    }
  }
}
