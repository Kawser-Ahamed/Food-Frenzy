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
    apiKey: 'AIzaSyBbUZy0xjo9VgOHPJYFcVwcoMMowfAAHBg',
    appId: '1:1059200388612:web:82c8d65029480b1f112f51',
    messagingSenderId: '1059200388612',
    projectId: 'food-frenzy-56bbf',
    authDomain: 'food-frenzy-56bbf.firebaseapp.com',
    storageBucket: 'food-frenzy-56bbf.appspot.com',
    measurementId: 'G-FYZS81TP7N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBmWgDG2Egiuy6u1fFYxUp_dIswZU2GvAU',
    appId: '1:1059200388612:android:1dc3203c51f9bece112f51',
    messagingSenderId: '1059200388612',
    projectId: 'food-frenzy-56bbf',
    storageBucket: 'food-frenzy-56bbf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCVvoVM8x5m2piTrCyFzzVwXtT7a71bThc',
    appId: '1:1059200388612:ios:73c30f11a48c23e0112f51',
    messagingSenderId: '1059200388612',
    projectId: 'food-frenzy-56bbf',
    storageBucket: 'food-frenzy-56bbf.appspot.com',
    iosClientId: '1059200388612-osavdnt0of1vd3hpgok74u19s6och8b7.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodFrenzy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCVvoVM8x5m2piTrCyFzzVwXtT7a71bThc',
    appId: '1:1059200388612:ios:038ff541a3e48325112f51',
    messagingSenderId: '1059200388612',
    projectId: 'food-frenzy-56bbf',
    storageBucket: 'food-frenzy-56bbf.appspot.com',
    iosClientId: '1059200388612-bhsbppqi834qcsa5npomgj97al5s1bvv.apps.googleusercontent.com',
    iosBundleId: 'com.example.foodFrenzy.RunnerTests',
  );
}
