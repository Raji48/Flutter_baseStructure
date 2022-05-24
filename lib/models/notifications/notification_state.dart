
import 'package:wait4me/models/notifications/notification_model.dart';

class NotificationState {
  bool? loading;
  dynamic error;
  NotificationModel? notification;

  NotificationState({
    this.loading,
    this.error,
    required this.notification
  });
  factory NotificationState.initial() => NotificationState(
    loading: false,
    error: null,
    notification: null,
  );
}