class mover {
  PVector loc;
  PVector vel;// balls movin
  float d; // connections

  mover() {
    loc = new PVector(random(10, 580), random(10, 580));
    vel = new PVector(2,0 );
    vel.rotate(radians(random(0,360))); 
  }


  void show() {
    noStroke();
    fill(247, 185, 185, 175);
    circle(loc.x, loc.y, 75);
  }
  void act() {
    circMove();
    bounce();
    // add move() and bounceofEdge();
  }
  void connections() {
    int i = 0;
    while (i < NumberOfMovers) {
      mover m = mymover.get(i);
      float distance = dist(loc.x, loc.y, m.loc.x, m.loc.y);
      if (distance <= 200) {
        float lines = map(distance, 0, width, 0, 5);
        float fade = map(distance, 0, width, 0, 255);
        stroke(255, 255, 255, fade);
        strokeWeight(lines);
        line(loc.x, loc.y, m.loc.x, m.loc.y);
      }
      i++;
    }
  }
  void circMove() {
    loc.add(vel);
  }
  void bounce() {
    if (loc.x > width || loc.x < 10)  vel.x = -vel.x;
    if (loc.y > height || loc.y < 10) vel.y = -vel.y;
  }
}
