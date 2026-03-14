class NotificationModel {
  final String id;
  final String title;
  final String body;
  final String target;
  final DateTime timestamp;
  final String status;

  NotificationModel({
    required this.id,
    required this.title,
    required this.body,
    required this.target,
    required this.timestamp,
    this.status = 'sent',
  });
}
