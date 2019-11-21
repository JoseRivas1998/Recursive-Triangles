class Triangle {
  private final PVector p1;
  private final PVector p2;
  private final PVector p3;

  public Triangle(PVector p1, PVector p2, PVector p3) {
    this.p1 = new PVector(p1.x, p1.y);
    this.p2 = new PVector(p2.x, p2.y);
    this.p3 = new PVector(p3.x, p3.y);
  }

  void display() {
    LineSegment[] edges = this.edges();
    for(LineSegment edge : edges) {
      edge.display();
    }
  }
  
  LineSegment[] edges() {
    return new LineSegment[] {
      new LineSegment(p1, p2),
      new LineSegment(p2, p3),
      new LineSegment(p1, p3)
    };
  }
  
  PVector[] midpoints() {
    LineSegment[] edges = edges();
    return new PVector[] {
      edges[0].midpoint(),
      edges[1].midpoint(),
      edges[2].midpoint()
    };
  }
  
  Triangle[] midTriangles() {
    PVector[] midpoints = midpoints();
    return new Triangle[]{
      new Triangle(p1, midpoints[0], midpoints[2]),
      new Triangle(midpoints[2], p3, midpoints[1]),
      new Triangle(midpoints[0], midpoints[1], p2)
    };
  }
  
  float perimeter() {
    float result = 0;
    LineSegment[] edges = edges();
    for(LineSegment edge : edges) {
      result += edge.segmentLength();
    }    
    return result;
  }
  
  
}
