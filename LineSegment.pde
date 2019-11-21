class LineSegment {
  
  private final PVector p1;
  private final PVector p2;
  
  public LineSegment(PVector p1, PVector p2) {
    this.p1 = new PVector(p1.x, p1.y);
    this.p2 = new PVector(p2.x, p2.y);
  }
  
  void display() {
    noFill();
    stroke(0);
    line(p1.x, p1.y, p2.x, p2.y);
  }
  
  float segmentLength() {
    return sqrt(pow(p1.x - p2.x, 2) + pow(p1.y - p2.y, 2));
  }
  
  PVector midpoint() {
    return new PVector((p1.x + p2.x) / 2f, (p1.y + p2.y) / 2f);
  }
  
}
