// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Studentdetailmodel {
  final String uid;
  final String email;
  final String fullName;
  final String age;
  final String learningChoice;
  final String studylevel;
  final String contectNumber;
  final String availabilityClass;
  Studentdetailmodel({
    required this.uid,
    required this.email,
    required this.fullName,
    required this.age,
    required this.learningChoice,
    required this.studylevel,
    required this.contectNumber,
    required this.availabilityClass,
  });

  Studentdetailmodel copyWith({
    String? uid,
    String? email,
    String? fullName,
    String? age,
    String? learningChoice,
    String? studylevel,
    String? contectNumber,
    String? availabilityClass,
  }) {
    return Studentdetailmodel(
      uid: uid ?? this.uid,
      email: email ?? this.email,
      fullName: fullName ?? this.fullName,
      age: age ?? this.age,
      learningChoice: learningChoice ?? this.learningChoice,
      studylevel: studylevel ?? this.studylevel,
      contectNumber: contectNumber ?? this.contectNumber,
      availabilityClass: availabilityClass ?? this.availabilityClass,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'email': email,
      'fullName': fullName,
      'age': age,
      'learningChoice': learningChoice,
      'studylevel': studylevel,
      'contectNumber': contectNumber,
      'availabilityClass': availabilityClass,
    };
  }

  factory Studentdetailmodel.fromMap(Map<String, dynamic> map) {
    return Studentdetailmodel(
      uid: map['uid'] ?? '',
      email: map['email'] ?? '',
      fullName: map['fullName'] ?? '',
      age: map['age'] ?? '',
      learningChoice: map['learningChoice'] ?? '',
      studylevel: map['studylevel'] ?? '',
      contectNumber: map['contectNumber'] ?? '',
      availabilityClass: map['availabilityClass'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Studentdetailmodel.fromJson(String source) =>
      Studentdetailmodel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Studentdetailmodel(uid: $uid, email: $email, fullName: $fullName, age: $age, learningChoice: $learningChoice, studylevel: $studylevel, contectNumber: $contectNumber, availabilityClass: $availabilityClass)';
  }

  @override
  bool operator ==(covariant Studentdetailmodel other) {
    if (identical(this, other)) return true;

    return other.uid == uid &&
        other.email == email &&
        other.fullName == fullName &&
        other.age == age &&
        other.learningChoice == learningChoice &&
        other.studylevel == studylevel &&
        other.contectNumber == contectNumber &&
        other.availabilityClass == availabilityClass;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        email.hashCode ^
        fullName.hashCode ^
        age.hashCode ^
        learningChoice.hashCode ^
        studylevel.hashCode ^
        contectNumber.hashCode ^
        availabilityClass.hashCode;
  }
}
