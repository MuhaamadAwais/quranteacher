// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/widgets.dart';

class Hadiesmodelapi {
  String engNamehadies;
  String urduNamehadies;
  num hadiescollection;
  Color startcolor;
  Color endcolor;
  IconData icon;
  Hadiesmodelapi({
    required this.engNamehadies,
    required this.urduNamehadies,
    required this.hadiescollection,
    required this.startcolor,
    required this.endcolor,
    required this.icon,
  });

  Hadiesmodelapi copyWith({
    String? engNamehadies,
    String? urduNamehadies,
    num? hadiescollection,
    Color? startcolor,
    Color? endcolor,
    IconData? icon,
  }) {
    return Hadiesmodelapi(
      engNamehadies: engNamehadies ?? this.engNamehadies,
      urduNamehadies: urduNamehadies ?? this.urduNamehadies,
      hadiescollection: hadiescollection ?? this.hadiescollection,
      startcolor: startcolor ?? this.startcolor,
      endcolor: endcolor ?? this.endcolor,
      icon: icon ?? this.icon,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engNamehadies': engNamehadies,
      'urduNamehadies': urduNamehadies,
      'hadiescollection': hadiescollection,
      'startcolor': startcolor.value,
      'endcolor': endcolor.value,
      'icon': icon.codePoint,
    };
  }

  factory Hadiesmodelapi.fromMap(Map<String, dynamic> map) {
    return Hadiesmodelapi(
      engNamehadies: map['engNamehadies'] as String,
      urduNamehadies: map['urduNamehadies'] as String,
      hadiescollection: map['hadiescollection'] as num,
      startcolor: Color(map['startcolor'] as int),
      endcolor: Color(map['endcolor'] as int),
      icon: IconData(map['icon'] as int, fontFamily: 'MaterialIcons'),
    );
  }

  String toJson() => json.encode(toMap());

  factory Hadiesmodelapi.fromJson(String source) =>
      Hadiesmodelapi.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Hadiesmodelapi(engNamehadies: $engNamehadies, urduNamehadies: $urduNamehadies, hadiescollection: $hadiescollection, startcolor: $startcolor, endcolor: $endcolor, icon: $icon)';
  }

  @override
  bool operator ==(covariant Hadiesmodelapi other) {
    if (identical(this, other)) return true;

    return other.engNamehadies == engNamehadies &&
        other.urduNamehadies == urduNamehadies &&
        other.hadiescollection == hadiescollection &&
        other.startcolor == startcolor &&
        other.endcolor == endcolor &&
        other.icon == icon;
  }

  @override
  int get hashCode {
    return engNamehadies.hashCode ^
        urduNamehadies.hashCode ^
        hadiescollection.hashCode ^
        startcolor.hashCode ^
        endcolor.hashCode ^
        icon.hashCode;
  }
}
