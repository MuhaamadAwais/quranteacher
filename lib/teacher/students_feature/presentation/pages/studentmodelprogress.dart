import 'dart:convert';

class Studentmodelprogress {
  String studentName;
  num totalClassess;
  int teacherRating;
  int progressActualtext;
  double progressActual;
  int progressAttendancetext;
  double progressAttendance;
  Studentmodelprogress({
    required this.studentName,
    required this.totalClassess,
    required this.teacherRating,
    required this.progressActualtext,
    required this.progressActual,
    required this.progressAttendancetext,
    required this.progressAttendance,
  });

  Studentmodelprogress copyWith({
    String? studentName,
    num? totalClassess,
    int? teacherRating,
    int? progressActualtext,
    double? progressActual,
    int? progressAttendancetext,
    double? progressAttendance,
  }) {
    return Studentmodelprogress(
      studentName: studentName ?? this.studentName,
      totalClassess: totalClassess ?? this.totalClassess,
      teacherRating: teacherRating ?? this.teacherRating,
      progressActualtext: progressActualtext ?? this.progressActualtext,
      progressActual: progressActual ?? this.progressActual,
      progressAttendancetext: progressAttendancetext ?? this.progressAttendancetext,
      progressAttendance: progressAttendance ?? this.progressAttendance,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'studentName': studentName,
      'totalClassess': totalClassess,
      'teacherRating': teacherRating,
      'progressActualtext': progressActualtext,
      'progressActual': progressActual,
      'progressAttendancetext': progressAttendancetext,
      'progressAttendance': progressAttendance,
    };
  }

  factory Studentmodelprogress.fromMap(Map<String, dynamic> map) {
    return Studentmodelprogress(
      studentName: map['studentName'] ?? '',
      totalClassess: map['totalClassess'] ?? 0,
      teacherRating: map['teacherRating']?.toInt() ?? 0,
      progressActualtext: map['progressActualtext']?.toInt() ?? 0,
      progressActual: map['progressActual']?.toDouble() ?? 0.0,
      progressAttendancetext: map['progressAttendancetext']?.toInt() ?? 0,
      progressAttendance: map['progressAttendance']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Studentmodelprogress.fromJson(String source) => Studentmodelprogress.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Studentmodelprogress(studentName: $studentName, totalClassess: $totalClassess, teacherRating: $teacherRating, progressActualtext: $progressActualtext, progressActual: $progressActual, progressAttendancetext: $progressAttendancetext, progressAttendance: $progressAttendance)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Studentmodelprogress &&
      other.studentName == studentName &&
      other.totalClassess == totalClassess &&
      other.teacherRating == teacherRating &&
      other.progressActualtext == progressActualtext &&
      other.progressActual == progressActual &&
      other.progressAttendancetext == progressAttendancetext &&
      other.progressAttendance == progressAttendance;
  }

  @override
  int get hashCode {
    return studentName.hashCode ^
      totalClassess.hashCode ^
      teacherRating.hashCode ^
      progressActualtext.hashCode ^
      progressActual.hashCode ^
      progressAttendancetext.hashCode ^
      progressAttendance.hashCode;
  }
}
