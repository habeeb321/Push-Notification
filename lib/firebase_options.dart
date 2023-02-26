// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyD3sjRsNfna0FxJE5FL_CaskrsedNzM4B8',
    appId: '1:850762385412:web:1dc056801115d056140d51',
    messagingSenderId: '850762385412',
    projectId: 'push-notification-45587',
    authDomain: 'push-notification-45587.firebaseapp.com',
    storageBucket: 'push-notification-45587.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBHkNEVOCz7nNw9tLl4xerM5KuYEL9wwds',
    appId: '1:850762385412:android:1e6256fd7b7dcda7140d51',
    messagingSenderId: '850762385412',
    projectId: 'push-notification-45587',
    storageBucket: 'push-notification-45587.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD5v4R6zHB2vfQ0WX0rlI16TQEpfCfWSnk',
    appId: '1:850762385412:ios:8fd339b6ad82149a140d51',
    messagingSenderId: '850762385412',
    projectId: 'push-notification-45587',
    storageBucket: 'push-notification-45587.appspot.com',
    iosClientId: '850762385412-thq3j5h6v19n4acigf29bburqh7qrjk4.apps.googleusercontent.com',
    iosBundleId: 'com.example.pushNotification',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD5v4R6zHB2vfQ0WX0rlI16TQEpfCfWSnk',
    appId: '1:850762385412:ios:8fd339b6ad82149a140d51',
    messagingSenderId: '850762385412',
    projectId: 'push-notification-45587',
    storageBucket: 'push-notification-45587.appspot.com',
    iosClientId: '850762385412-thq3j5h6v19n4acigf29bburqh7qrjk4.apps.googleusercontent.com',
    iosBundleId: 'com.example.pushNotification',
  );
}
