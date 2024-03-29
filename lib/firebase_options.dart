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
    apiKey: 'AIzaSyDt3poVnk8BOpo5cM1FuCj4Y5LCf32Mizw',
    appId: '1:872757492261:web:4f6d603c9b50cb746c5dcc',
    messagingSenderId: '872757492261',
    projectId: 'newfirebaseapp-d39a8',
    authDomain: 'newfirebaseapp-d39a8.firebaseapp.com',
    storageBucket: 'newfirebaseapp-d39a8.appspot.com',
    measurementId: 'G-C1C8S49TKN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCYu3-ePzVkMUj_MA-yFK5gkYIk0RPBgh4',
    appId: '1:872757492261:android:30da1db1fe0335b86c5dcc',
    messagingSenderId: '872757492261',
    projectId: 'newfirebaseapp-d39a8',
    storageBucket: 'newfirebaseapp-d39a8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAOI55Qjlc1aVbb9Fz8wLRtmwO3hdTPQLA',
    appId: '1:872757492261:ios:5fcd3dcded292a026c5dcc',
    messagingSenderId: '872757492261',
    projectId: 'newfirebaseapp-d39a8',
    storageBucket: 'newfirebaseapp-d39a8.appspot.com',
    iosBundleId: 'com.example.firebaseApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAOI55Qjlc1aVbb9Fz8wLRtmwO3hdTPQLA',
    appId: '1:872757492261:ios:a2bba13f7c197dd96c5dcc',
    messagingSenderId: '872757492261',
    projectId: 'newfirebaseapp-d39a8',
    storageBucket: 'newfirebaseapp-d39a8.appspot.com',
    iosBundleId: 'com.example.firebaseApp.RunnerTests',
  );
}
