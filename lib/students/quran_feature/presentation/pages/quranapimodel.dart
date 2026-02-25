import 'dart:convert';

class Quranapimodel {
  int surahNo;
  String engName;
  String urduName;
  String WhichCity;
  num totalVerses;
  num Complete;
  Quranapimodel({
    required this.surahNo,
    required this.engName,
    required this.urduName,
    required this.WhichCity,
    required this.totalVerses,
    required this.Complete,
  });

  Quranapimodel copyWith({
    int? surahNo,
    String? engName,
    String? urduName,
    String? WhichCity,
    num? totalVerses,
    num? Complete,
  }) {
    return Quranapimodel(
      surahNo: surahNo ?? this.surahNo,
      engName: engName ?? this.engName,
      urduName: urduName ?? this.urduName,
      WhichCity: WhichCity ?? this.WhichCity,
      totalVerses: totalVerses ?? this.totalVerses,
      Complete: Complete ?? this.Complete,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'surahNo': surahNo,
      'engName': engName,
      'urduName': urduName,
      'WhichCity': WhichCity,
      'totalVerses': totalVerses,
      'Complete': Complete,
    };
  }

  factory Quranapimodel.fromMap(Map<String, dynamic> map) {
    return Quranapimodel(
      surahNo: map['surahNo']?.toInt() ?? 0,
      engName: map['engName'] ?? '',
      urduName: map['urduName'] ?? '',
      WhichCity: map['WhichCity'] ?? '',
      totalVerses: map['totalVerses'] ?? 0,
      Complete: map['Complete'] ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Quranapimodel.fromJson(String source) =>
      Quranapimodel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Quranapimodel(surahNo: $surahNo, engName: $engName, urduName: $urduName, WhichCity: $WhichCity, totalVerses: $totalVerses, Complete: $Complete)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Quranapimodel &&
        other.surahNo == surahNo &&
        other.engName == engName &&
        other.urduName == urduName &&
        other.WhichCity == WhichCity &&
        other.totalVerses == totalVerses &&
        other.Complete == Complete;
  }

  @override
  int get hashCode {
    return surahNo.hashCode ^
        engName.hashCode ^
        urduName.hashCode ^
        WhichCity.hashCode ^
        totalVerses.hashCode ^
        Complete.hashCode;
  }
}
