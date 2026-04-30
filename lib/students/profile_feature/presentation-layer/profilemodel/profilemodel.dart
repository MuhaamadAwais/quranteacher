// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Profilemodel {
  final String name;
  final String address;
  final String imagepath;
  Profilemodel({
    required this.name,
    required this.address,
    required this.imagepath,
  });

  Profilemodel copyWith({String? name, String? address, String? imagepath}) {
    return Profilemodel(
      name: name ?? this.name,
      address: address ?? this.address,
      imagepath: imagepath ?? this.imagepath,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'address': address,
      'imagepath': imagepath,
    };
  }

  factory Profilemodel.fromMap(Map<String, dynamic> map) {
    return Profilemodel(
      name: map['name'] ?? '',
      address: map['address'] ?? '',
      imagepath: map['imagepath'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Profilemodel.fromJson(String source) =>
      Profilemodel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Profilemodel(name: $name, address: $address, imagepath: $imagepath)';

  @override
  bool operator ==(covariant Profilemodel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.address == address &&
        other.imagepath == imagepath;
  }

  @override
  int get hashCode => name.hashCode ^ address.hashCode ^ imagepath.hashCode;
}
