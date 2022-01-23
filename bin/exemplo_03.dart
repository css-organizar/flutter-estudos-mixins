extension StringExtensions on String {
  String? get capitalize {
    return '${this[0].toUpperCase()}${toLowerCase().substring(1)}';
  }
}

class StudentName {
  String first;
  String middle;
  String last;
  StudentName(this.first, this.middle, this.last);

  @override
  String toString() => '$first $middle $last)';
}

class Student {
  final int rollNum;
  final StudentName name;
  const Student(this.rollNum, this.name);

  @override
  String toString() => 'Student(rollNum: $rollNum, name: $name)';
}

exemplo03() {
  Student teste = Student(1, StudentName('first', 'middle', 'last'));
  print(teste.toString());
}
