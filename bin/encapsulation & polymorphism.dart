class Shape {
  double? area;
  double calc() {
    return area!;
  }
}

class Rectangle extends Shape {
  double length;
  double width;
  Rectangle(this.length, this.width);
  @override
  double calc() {
    double per;
    per = (length + width) * 2;
    print(" Rectangl per= $per");
    return per;
  }
}

class Circle extends Shape {
  double r;
  Circle(this.r);
  static const pi = 3.14;
  @override
  double calc() {
    area = pi * r * r;
    print('circle area=$area');
    return area!;
  }
}

void main() {
  Rectangle box = Rectangle(5, 6);
  box.calc();
  Circle circle1 = Circle(3);
  circle1.calc();
}
