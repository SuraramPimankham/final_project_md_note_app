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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyApyobksafqrn8ZEgRA3kucrd9KnG65sNU',
    appId: '1:370388720189:web:5545e2725f665fd6e7a854',
    messagingSenderId: '370388720189',
    projectId: 'final-project-f58c3',
    authDomain: 'final-project-f58c3.firebaseapp.com',
    storageBucket: 'final-project-f58c3.appspot.com',
    measurementId: 'G-LKNXD2KFPS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBUwGUvmAsUV82U6h1hCoENUJ-NQjBO5-0',
    appId: '1:370388720189:android:e1b8c457c5448c3de7a854',
    messagingSenderId: '370388720189',
    projectId: 'final-project-f58c3',
    storageBucket: 'final-project-f58c3.appspot.com',
  );
}