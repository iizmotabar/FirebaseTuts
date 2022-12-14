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
    apiKey: 'AIzaSyD5kIF480sTU-jP7RW4CklsWpaxKyzYWaQ',
    appId: '1:519407569844:web:199513369fb28f474280e1',
    messagingSenderId: '519407569844',
    projectId: 'authrevision',
    authDomain: 'authrevision.firebaseapp.com',
    storageBucket: 'authrevision.appspot.com',
    measurementId: 'G-BZTYDZXB99',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBojptojevDEHgVPrD6alpoZ8d2XmBAXnY',
    appId: '1:519407569844:android:e76db8642f8f578d4280e1',
    messagingSenderId: '519407569844',
    projectId: 'authrevision',
    storageBucket: 'authrevision.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBa4gxc8_Irjwjnz7tXWV6n0amlfDZfnRU',
    appId: '1:519407569844:ios:b3d5fd6703dc42634280e1',
    messagingSenderId: '519407569844',
    projectId: 'authrevision',
    storageBucket: 'authrevision.appspot.com',
    iosClientId: '519407569844-a36n80rjld15p8j854ovvb55s87a4rhc.apps.googleusercontent.com',
    iosBundleId: 'com.example.authRevision',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBa4gxc8_Irjwjnz7tXWV6n0amlfDZfnRU',
    appId: '1:519407569844:ios:b3d5fd6703dc42634280e1',
    messagingSenderId: '519407569844',
    projectId: 'authrevision',
    storageBucket: 'authrevision.appspot.com',
    iosClientId: '519407569844-a36n80rjld15p8j854ovvb55s87a4rhc.apps.googleusercontent.com',
    iosBundleId: 'com.example.authRevision',
  );
}
