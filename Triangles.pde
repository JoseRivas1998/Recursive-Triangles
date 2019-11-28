  import java.util.Stack;

Stack<Triangle> triangleStack;
ArrayList<Triangle> triangles;

final int minTriSize = 50;

void setup() {
  size(900, 900);
  triangleStack = new Stack<Triangle>();
  Triangle triangle = new Triangle(new PVector(0, 0), new PVector(width / 2f, height), new PVector(width, 0));
  triangleStack.push(triangle);
  triangles = new ArrayList<Triangle>();
}

void draw() {
  background(255);
  triforce();
  for(Triangle tri : triangles) {
    tri.display();
  }
}

void triforce() {
  if(triangleStack.isEmpty()) return;
  Triangle t = triangleStack.pop();
  if(t.perimeter() <= minTriSize) {
    triangles.add(t);
    return;
  }
  Triangle[] midtriangles = t.midTriangles();
  for(Triangle tri : midtriangles) {
    triangleStack.push(tri);
  }
}
