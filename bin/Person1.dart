class Person1 {
  String name;
  String address;
  Person1(this.name, this.address);
  String tostring() {
    return ('$name($address)');
  }
}

class Student extends Person1 {
  int numCourses = 0;
  Student(String name, String address) : super(name, address);
  List<String> courses = [];
  List<int> grads = [];
  @override
  String tostring() {
    print('student:$name($address)');
    return ('student:$name($address)');
  }

  void addcoursegrade(String course, int grade) {
    courses.add(course);
    grads.add(grade);
    numCourses++;
  }

  void printGrads() {
    for (int i = 0; i < numCourses; i++) {
      print('${courses[i]}:${grads[i]}');
    }
  }

  double getAvarageGrade() {
    int total = 0;
    for (var grade in grads) {
      total += grade;
    }
    print('Avarage grade=${total / grads.length}');
    return total / grads.length;
  }
}

class Teacher extends Person1 {
  int numCourses = 0;
  List<String> courses = [];
  Teacher(String name, String address) : super(name, address);
  @override
  String tostring() {
    print('Teacher:$name($address)');
    return ('Teacher:$name($address)');
  }

  bool addcourse(String course) {
    if (courses.contains(course)) {
      print('course is already exist');
      return false;
    } else {
      courses.add(course);
      numCourses++;
      print('course $course has been added');
      return true;
    }
  }

  bool removeCourse(String course) {
    if (!courses.contains(course)) {
      print('Course $course is not found');
      return false;
    } else {
      courses.remove(course);
      numCourses--;
      print('$course has been removed');
      return true;
    }
  }
}

void main() {
  Student student = Student('Habiba', 'abdelhaleem street');
  student.tostring();
  student.addcoursegrade('math', 90);
  student.addcoursegrade('Algorithms', 100);
  student.printGrads();
  student.getAvarageGrade();
  Teacher teacher = Teacher('Ziad', 'Alexandria');
  teacher.tostring();
  teacher.addcourse('Machine learning');
  teacher.removeCourse('bio');
}
