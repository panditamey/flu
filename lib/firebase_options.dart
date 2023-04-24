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
    apiKey: 'AIzaSyCOpSQ48zoA1Vmg0NuJvnu2DDKCwejn5_U',
    appId: '1:515331870560:web:893a9e5e7bbce540975805',
    messagingSenderId: '515331870560',
    projectId: 'flutterfire-1d3e0',
    authDomain: 'flutterfire-1d3e0.firebaseapp.com',
    storageBucket: 'flutterfire-1d3e0.appspot.com',
    measurementId: 'G-BNC8J3CZWZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC8FmFEPe2W5j7rtOEOrZ4BxPxH4bZEsb0',
    appId: '1:515331870560:android:4f4daa8843e4a898975805',
    messagingSenderId: '515331870560',
    projectId: 'flutterfire-1d3e0',
    storageBucket: 'flutterfire-1d3e0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDemK-hU2Ph4R_TMdH_u8VLMv4Ksg1lN8g',
    appId: '1:515331870560:ios:621e5f1abf00b6aa975805',
    messagingSenderId: '515331870560',
    projectId: 'flutterfire-1d3e0',
    storageBucket: 'flutterfire-1d3e0.appspot.com',
    iosClientId: '515331870560-forov6i0ilum7je2jofpd5830vqs9ei5.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDemK-hU2Ph4R_TMdH_u8VLMv4Ksg1lN8g',
    appId: '1:515331870560:ios:621e5f1abf00b6aa975805',
    messagingSenderId: '515331870560',
    projectId: 'flutterfire-1d3e0',
    storageBucket: 'flutterfire-1d3e0.appspot.com',
    iosClientId: '515331870560-forov6i0ilum7je2jofpd5830vqs9ei5.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseapp',
  );
}