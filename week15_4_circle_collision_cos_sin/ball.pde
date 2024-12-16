class Ball {
  float x, y, r;
  float vx, vy;
  Ball(int x0, int y0, int r0) {
    x=x0;
    y=y0;
    r=r0;
    vx=random(-10, +10);
    vy=random(-10, +10);
  }
  boolean checkCollision(Ball other) {
    if (dist(x+vx, y+vy, other.x+other.vx, other.y+other.vy)<=r+other.r) {
      PVector diff = new PVector(other.x-x, other.y-y);
      float len = diff.mag();//maganitude 量值長度的意思
      print(len);
      float a= diff.heading();//向量的方向
      //cos(a),sin(a)
      PVector N= diff.copy().normalize();//連線方向
      N.mult(N.dot(new PVector(vx, vy)));
      PVector N2 = new PVector(-N.y, N.x).normalize();//連線方向
      N2.mult(N2.dot(new PVector(vx, vy)));

      PVector M= diff.copy().normalize();//連線方向
      M.mult(M.dot(new PVector(other.vx, other.vy)));
      PVector M2 = new PVector(-M.y, M.x).normalize();//連線方向
      M2.mult(M2.dot(new PVector(other.vx, other.vy)));

      PVector newV1 = PVector.add(M, N2);
      PVector newV2 = PVector.add(N, M2);
      
      other.vx = newV2.x;
      other.vy = newV2.y;

      return true;
    } else return false;
  }
  void update() {
    if (x+vx>640 || x+vx<0)vx=-vx;
    if (y+vy>640 || y+vy<0)vy=-vy;
    x+=vx;
    y+=vy;
  }
  void display() {
    ellipse(x, y, r+r, r+r);
  }
}
