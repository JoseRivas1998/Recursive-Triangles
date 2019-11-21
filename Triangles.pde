Triangle triangle;


void setup() {
  size(500, 500);
  triangle = new Triangle(new PVector(0, 0), new PVector(width / 2f, height), new PVector(width, 0));
  
}

void draw() {
  background(255);
  triforce(triangle);
}

void triforce(Triangle t) {
  if(t.perimeter() <= 100) {
    return;
  }
  Triangle[] midtriangles = t.midTriangles();
  for(Triangle tri : midtriangles) {
    triforce(tri);
  }
  t.display();
}
