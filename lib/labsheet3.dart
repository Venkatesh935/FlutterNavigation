import 'dart:io';

class Student {
  int rollno;
  String name;
  String deprt;
  double marks;

  Student(this.rollno, this.name, this.deprt, this.marks);

  String calculateGrade() {
    if (marks >= 90) {
      return "A+";
    } else if (marks >= 80) {
      return "A";
    } else if (marks >= 70) {
      return "B";
    } else if (marks >= 60) {
      return "C";
    } else if (marks >= 50) {
      return "D";
    } else {
      return "F";
    }
  }

  void displayDetails() {
    print("\nStudent Details");
    print("Roll No : $rollno");
    print("Name    : $name");
    print("Department : $deprt");
    print("Marks   : $marks");
    print("Grade   : ${calculateGrade()}");
  }
}

void main() {
  List<Student> students = [];

  stdout.write("Enter number of students: ");
  int nOfS = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < nOfS; i++) {
    print("\nEnter student details ${i + 1}");

    stdout.write("Enter rollno: ");
    int rollno = int.parse(stdin.readLineSync()!);

    stdout.write("Enter name: ");
    String name = stdin.readLineSync()!;

    stdout.write("Enter department: ");
    String deprt = stdin.readLineSync()!;

    stdout.write("Enter marks: ");
    double marks = double.parse(stdin.readLineSync()!);

    Student student = Student(
      rollno,
      name,
      deprt,
      marks,
    );

    students.add(student);
  }

  print("\n===== STUDENT MANAGEMENT SYSTEM =====");

  for (Student student in students) {
    student.displayDetails();
  }
}