import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:push_notification/firebase_options.dart';

class FirebaseController with ChangeNotifier {
  final messaging = FirebaseMessaging.instance;

  Future<void> permission() async {
    final settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );

    if (kDebugMode) {
      print('Permission granted: ${settings.authorizationStatus}');
    }

    String? token = await messaging.getToken();

    if (kDebugMode) {
      print('Registration Token=$token');
    }

    // for web app
    const vapidKey =
        "BCUSV46mrkjgYXgLlkZ_vvozsMRLi7i-9OD9dqUqSbmdwHPToDWKenFqanq3HeuFFeXWu1RuJ71zSI517LD6NRQ";
    if (DefaultFirebaseOptions.currentPlatform == DefaultFirebaseOptions.web) {
      token = await messaging.getToken(
        vapidKey: vapidKey,
      );
    } else {
      token = await messaging.getToken();
    }

    if (kDebugMode) {
      print('Registration Token=$token');
    }
  }
}
