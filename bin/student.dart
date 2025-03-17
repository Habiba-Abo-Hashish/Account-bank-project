import 'person.dart';

class Student extends Person {
  Set<String> courses = {};
  Map<String, int> marks = {};
  Student(String name, [int age = 18]) : super(name, age: age);
  void displayinfo();
  void enrollCourse(String course) {
    courses.add(course);
  }

  void addMark(String course, int mark) {
    if (courses.contains(course)) {
      marks[course] = mark;
    }
  }

  void displayCourses() {
    print('Courses: ${courses.join(", ")}');
  }

  void displayMarks() {
    for (var course in marks.keys) {
      print('$course: ${marks[course]}');
    }
  }
}

void main() {
  Student student = Student('Habiba', 20);

  student.displayinfo();

  student.enrollCourse('Math');
  student.enrollCourse('Physics');

  student.addMark('Math', 90);
  student.addMark('Physics', 85);

  student.displayCourses();
  student.displayMarks();
}
