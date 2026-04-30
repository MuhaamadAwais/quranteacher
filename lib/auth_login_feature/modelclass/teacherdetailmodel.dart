// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Teacherdetailmodel {
  final String uid;
  final String email;
  final String name;
  final String qualificationi;
  final String experiance;
  final String availabletime;
  final String madhab;
  Teacherdetailmodel({
    required this.uid,
    required this.email,
    required this.name,
    required this.qualificationi,
    required this.experiance,
    required this.availabletime,
    required this.madhab,
  });

  Teacherdetailmodel copyWith({
    String? uid,
    String? email,
    String? name,
    String? qualificationi,
    String? experiance,
    String? availabletime,
    String? madhab,
  }) {
    return Teacherdetailmodel(
      uid: uid ?? this.uid,
      email: email ?? this.email,
      name: name ?? this.name,
      qualificationi: qualificationi ?? this.qualificationi,
      experiance: experiance ?? this.experiance,
      availabletime: availabletime ?? this.availabletime,
      madhab: madhab ?? this.madhab,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'email': email,
      'name': name,
      'qualificationi': qualificationi,
      'experiance': experiance,
      'availabletime': availabletime,
      'madhab': madhab,
    };
  }

  factory Teacherdetailmodel.fromMap(Map<String, dynamic> map) {
    return Teacherdetailmodel(
      uid: map['uid'] ?? '',
      email: map['email'] ?? '',
      name: map['name'] ?? '',
      qualificationi: map['qualificationi'] ?? '',
      experiance: map['experiance'] ?? '',
      availabletime: map['availabletime'] ?? '',
      madhab: map['madhab'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Teacherdetailmodel.fromJson(String source) =>
      Teacherdetailmodel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Teacherdetailmodel(uid: $uid, email: $email, name: $name, qualificationi: $qualificationi, experiance: $experiance, availabletime: $availabletime, madhab: $madhab)';
  }

  @override
  bool operator ==(covariant Teacherdetailmodel other) {
    if (identical(this, other)) return true;

    return other.uid == uid &&
        other.email == email &&
        other.name == name &&
        other.qualificationi == qualificationi &&
        other.experiance == experiance &&
        other.availabletime == availabletime &&
        other.madhab == madhab;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
        email.hashCode ^
        name.hashCode ^
        qualificationi.hashCode ^
        experiance.hashCode ^
        availabletime.hashCode ^
        madhab.hashCode;
  }
}
