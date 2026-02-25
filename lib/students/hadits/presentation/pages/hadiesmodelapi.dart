import 'dart:convert';

import 'package:flutter/widgets.dart';

class Hadiesmodelapi {
  String engNamehadies;
  String urduNamehadies;
  num hadiescollection;
  Color startcolor;
  Color endcolor;
  Hadiesmodelapi({
    required this.engNamehadies,
    required this.urduNamehadies,
    required this.hadiescollection,
    required this.startcolor,
    required this.endcolor,
  });

  Hadiesmodelapi copyWith({
    String? engNamehadies,
    String? urduNamehadies,
    num? hadiescollection,
    Color? startcolor,
    Color? endcolor,
  }) {
    return Hadiesmodelapi(
      engNamehadies: engNamehadies ?? this.engNamehadies,
      urduNamehadies: urduNamehadies ?? this.urduNamehadies,
      hadiescollection: hadiescollection ?? this.hadiescollection,
      startcolor: startcolor ?? this.startcolor,
      endcolor: endcolor ?? this.endcolor,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'engNamehadies': engNamehadies,
      'urduNamehadies': urduNamehadies,
      'hadiescollection': hadiescollection,
      'startcolor': startcolor.value,
      'endcolor': endcolor.value,
    };
  }

  factory Hadiesmodelapi.fromMap(Map<String, dynamic> map) {
    return Hadiesmodelapi(
      engNamehadies: map['engNamehadies'] ?? '',
      urduNamehadies: map['urduNamehadies'] ?? '',
      hadiescollection: map['hadiescollection'] ?? 0,
      startcolor: Color(map['startcolor']),
      endcolor: Color(map['endcolor']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Hadiesmodelapi.fromJson(String source) =>
      Hadiesmodelapi.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Hadiesmodelapi(engNamehadies: $engNamehadies, urduNamehadies: $urduNamehadies, hadiescollection: $hadiescollection, startcolor: $startcolor, endcolor: $endcolor)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Hadiesmodelapi &&
        other.engNamehadies == engNamehadies &&
        other.urduNamehadies == urduNamehadies &&
        other.hadiescollection == hadiescollection &&
        other.startcolor == startcolor &&
        other.endcolor == endcolor;
  }

  @override
  int get hashCode {
    return engNamehadies.hashCode ^
        urduNamehadies.hashCode ^
        hadiescollection.hashCode ^
        startcolor.hashCode ^
        endcolor.hashCode;
  }
}
