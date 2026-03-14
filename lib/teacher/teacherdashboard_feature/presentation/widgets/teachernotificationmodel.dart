class TeacherNotificationModel {
  final String id, title, body, studentName, className;
  final DateTime timestamp;
  bool isRead;

  TeacherNotificationModel({
    required this.id,
    required this.title,
    required this.body,
    required this.studentName,
    required this.className,
    required this.timestamp,
    this.isRead = false,
  });
}
