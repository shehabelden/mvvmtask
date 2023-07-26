class School {
  String schoolName = "";
  String schoolAddress = "";
  String numberOfStudents = "";
  String numberOfTeachers = "";

  School({
    this.schoolName = "",
    this.schoolAddress = "",
    this.numberOfStudents = "",
    this.numberOfTeachers = "",
  });

  factory School.fromJson(Map<String, dynamic> json) {
    return School(
      schoolName: json['School Name'],
      schoolAddress: json['School Address'],
      numberOfStudents: json['Number of Students'],
      numberOfTeachers: json['Number of Teachers'],
    );
  }
}
