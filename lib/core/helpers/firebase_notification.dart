import 'package:firebase_messaging/firebase_messaging.dart';

import '../resources/constants.dart';

@pragma('vm:entry-point')
class LocalNotificationService {
  static Future<void> initialize() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    final messaging = FirebaseMessaging.instance;

    String? token = await messaging.getToken();
    fcmToken = token ?? '';

    print('Registration Token=$token');
  }
}
