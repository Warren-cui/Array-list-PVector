
// Mover class requires instance variables / float x,y
// Mover class needs a constructor  = Mover() {   (fill with code) }
// Mover class needs behaviour functions // for example moving also could be
// void show void move

class Mover {

  //mover code also the instance
  PVector loc;//size and diamater
  PVector vel;//velocity
  float d;

  //contructor

  Mover() {
    loc =  new PVector( random(0, 800), random(0, 800));
    d = 100;
    vel = new PVector (1, 0 );
    vel.setMag(random(1,5));
    vel.rotate(radians(45));
  }


  //behaviour functions

  void showbody() {

    noStroke();
    fill(255, 100 );
    strokeWeight(5);
    circle(loc.x, loc.y, d);
  }

  void connect() {
    int i = 0;
     
    while (i < movernumber) {
      Mover other = movermans.get(i);
      float dist = dist(loc.x, loc.y, other.loc.x, other.loc.y ); // x,y = current mover location / and movermans.x/y = all other mover locations being compared
      if (dist <= 200) {
        float a = map(dist, 0, 200, 255, 0 );// dist from 0,200 pixels get brightness of either 255 to 0
        stroke(255, a);// 255 white or 0 depending on a
        strokeWeight(2);
        line(loc.x, loc.y, other.loc.x, other.loc.y );// same as dist
      }
      i++;
    }
  }

  void act() {

    move();
    bounce();// bouncing off edge

    //x = x + random(-5, 5);
    //y = y + random(-5, 5);
    // d = d + random(-5, 5);
  }

  void move() {
    loc.add(vel);
  }


  void bounce() {

    if (loc.x < 0 || loc.x > 800 ) vel.x = -vel.x;
    if (loc.y < 0 || loc.y > 800)  vel.y = -vel.y;
  }
}
