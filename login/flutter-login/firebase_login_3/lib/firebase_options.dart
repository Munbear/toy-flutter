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
    apiKey: 'AIzaSyCcEZ4FP94UfG-PxjYlW7vQyxRxeyAR3fg',
    appId: '1:462496717566:web:aa6e7a1a372d1312ff23af',
    messagingSenderId: '462496717566',
    projectId: 'practice-login-cli-1',
    authDomain: 'practice-login-cli-1.firebaseapp.com',
    storageBucket: 'practice-login-cli-1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyABXYJNTK4E6YX_98HxLVjOo-fDbHHIjYE',
    appId: '1:462496717566:android:fe6569f62409a946ff23af',
    messagingSenderId: '462496717566',
    projectId: 'practice-login-cli-1',
    storageBucket: 'practice-login-cli-1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCR4MfXB59MbwIzSQV9-ohOdc1ePUGgBAM',
    appId: '1:462496717566:ios:3921657de56ac7fdff23af',
    messagingSenderId: '462496717566',
    projectId: 'practice-login-cli-1',
    storageBucket: 'practice-login-cli-1.appspot.com',
    iosClientId: '462496717566-euebglqgko1j77aahd327j3uk6nlf06u.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseLogin3',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCR4MfXB59MbwIzSQV9-ohOdc1ePUGgBAM',
    appId: '1:462496717566:ios:3921657de56ac7fdff23af',
    messagingSenderId: '462496717566',
    projectId: 'practice-login-cli-1',
    storageBucket: 'practice-login-cli-1.appspot.com',
    iosClientId: '462496717566-euebglqgko1j77aahd327j3uk6nlf06u.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseLogin3',
  );
}
