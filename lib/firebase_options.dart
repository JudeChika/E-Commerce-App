// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyAaUtIAslYoZ8gNJvZ_wX2bopxMgmgRbJs',
    appId: '1:416148500385:web:6a428a50f2589630ec65e0',
    messagingSenderId: '416148500385',
    projectId: 'e-commerce-application-a1ec2',
    authDomain: 'e-commerce-application-a1ec2.firebaseapp.com',
    storageBucket: 'e-commerce-application-a1ec2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAmka_TCOtfQjT2fx_B_2MCX-iANCDga64',
    appId: '1:416148500385:android:d661a05fbfaa9163ec65e0',
    messagingSenderId: '416148500385',
    projectId: 'e-commerce-application-a1ec2',
    storageBucket: 'e-commerce-application-a1ec2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBLDqtnIw7uiignYNATWwlGW5cMXZ63NRw',
    appId: '1:416148500385:ios:e15cba3190a8a399ec65e0',
    messagingSenderId: '416148500385',
    projectId: 'e-commerce-application-a1ec2',
    storageBucket: 'e-commerce-application-a1ec2.appspot.com',
    androidClientId: '416148500385-9m9m9d59vu7810ud6ssuc9oi8r99b2kl.apps.googleusercontent.com',
    iosClientId: '416148500385-9dldamqpa6bj1tmubheoii1qnmebcsrf.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerceApplication',
  );

}