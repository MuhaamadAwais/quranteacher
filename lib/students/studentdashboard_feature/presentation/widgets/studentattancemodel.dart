class Studentattancemodel {
  final String id;
  final String name;
  final String rollNo;
  final String group;
  final String badge;
  final bool isPresent;
  final DateTime date;

  Studentattancemodel({
    required this.id,
    required this.name,
    required this.rollNo,
    required this.group,
    required this.badge,
    this.isPresent = false,
    required this.date,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'rollNo': rollNo,
    'group': group,
    'badge': badge,
    'isPresent': isPresent,
    'date': date.toIso8601String(),
  };
}
