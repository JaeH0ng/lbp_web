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
    apiKey: 'AIzaSyDC54pI-nAdFTLjjTZGYLGys9VJku_oeRY',
    appId: '1:829681008796:web:35e3a52e22c9f02fd3ad59',
    messagingSenderId: '829681008796',
    projectId: 'lbp-app-50893',
    authDomain: 'lbp-app-50893.firebaseapp.com',
    storageBucket: 'lbp-app-50893.appspot.com',
    measurementId: 'G-0W77YNKNXC',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-MH00uioiGjt3T-YAh3gbyfGyj1ZGPWM',
    appId: '1:829681008796:android:5d1d14adca36a20ad3ad59',
    messagingSenderId: '829681008796',
    projectId: 'lbp-app-50893',
    storageBucket: 'lbp-app-50893.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDs30td00UvslfXwLWeSr4cIuNVYWnK_bY',
    appId: '1:829681008796:ios:1b5cf64902128ed4d3ad59',
    messagingSenderId: '829681008796',
    projectId: 'lbp-app-50893',
    storageBucket: 'lbp-app-50893.appspot.com',
    iosClientId: '829681008796-qdvcjh7ujs8quql150759ie6uticbrj8.apps.googleusercontent.com',
    iosBundleId: 'com.lbpweb.lbpWeb',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDs30td00UvslfXwLWeSr4cIuNVYWnK_bY',
    appId: '1:829681008796:ios:1b5cf64902128ed4d3ad59',
    messagingSenderId: '829681008796',
    projectId: 'lbp-app-50893',
    storageBucket: 'lbp-app-50893.appspot.com',
    iosClientId: '829681008796-qdvcjh7ujs8quql150759ie6uticbrj8.apps.googleusercontent.com',
    iosBundleId: 'com.lbpweb.lbpWeb',
  );
}