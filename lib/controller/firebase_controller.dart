import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:push_notification/firebase_options.dart';
import 'package:rxdart/rxdart.dart';

class FirebaseController with ChangeNotifier {
  final messaging = FirebaseMessaging.instance;
  String lastMessage = "";

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

    // recieve message

    // used to pass messages from event handler to the UI
    final messageStreamController = BehaviorSubject<RemoteMessage>();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (kDebugMode) {
        print('Handling a foreground message: ${message.messageId}');
        print('Message data: ${message.data}');
        print('Message notification: ${message.notification?.title}');
        print('Message notification: ${message.notification?.body}');
      }

      messageStreamController.sink.add(message);
    });

    messageStreamController.listen((message) {
      if (message.notification != null) {
        lastMessage = 'Received a notification message:'
            '\nTitle=${message.notification?.title},'
            '\nBody=${message.notification?.body},'
            '\nData=${message.data}';
      } else {
        lastMessage = 'Received a data message: ${message.data}';
      }
      notifyListeners();
    });
  }


}
