// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart'show FirebaseOptions;
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
    apiKey: 'AIzaSyAh0w0xlW-c6p1Vl_KNBU2gclPiIKSoILE',
    appId: '1:776939330047:web:a330b4fa420ac1cb312fca',
    messagingSenderId: '776939330047',
    projectId: 'my-squip-12',
    authDomain: 'my-squip-12.firebaseapp.com',
    storageBucket: 'my-squip-12.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDeAGbFQkVN-cuFejrNLRjVQ1tF5vpbm7o',
    appId: '1:776939330047:android:c99cf3bae0c0b11f312fca',
    messagingSenderId: '776939330047',
    projectId: 'my-squip-12',
    storageBucket: 'my-squip-12.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAp4DiqtbM4A2eE2Cdj8qZuK_dLmXJgp6s',
    appId: '1:776939330047:ios:edb3370ea765b1bd312fca',
    messagingSenderId: '776939330047',
    projectId: 'my-squip-12',
    storageBucket: 'my-squip-12.appspot.com',
    iosClientId: '776939330047-eat8tva5offbg2env749epsgv0o465c2.apps.googleusercontent.com',
    iosBundleId: 'com.example.squip',
  );
}
