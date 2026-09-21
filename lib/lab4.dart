class Student {
  String _name = "";

  void setName(String name) {
    _name = name;
  }
  String getName() {
    return _name;
  }
}

void main() {
  Student student = Student();

  student.setName("Alice");

  print("Student Name: ${student.getName()}");
}
