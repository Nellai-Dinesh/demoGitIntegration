import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
        return windows;
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
    apiKey: 'AIzaSyD4ORpZqg5-7cdob96r8EhXOque69OKVVE',
    appId: '1:572919863153:web:f3c30c2f2efe8f1a4848d0',
    messagingSenderId: '572919863153',
    projectId: 'myproject-903b4',
    authDomain: 'myproject-903b4.firebaseapp.com',
    storageBucket: 'myproject-903b4.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD4ORpZqg5-7cdob96r8EhXOque69OKVVE',
    appId: '1:572919863153:android:f3c30c2f2efe8f1a4848d0',
    messagingSenderId: '572919863153',
    projectId: 'myproject-903b4',
    storageBucket: 'myproject-903b4.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD4ORpZqg5-7cdob96r8EhXOque69OKVVE',
    appId: '1:572919863153:ios:f3c30c2f2efe8f1a4848d0',
    messagingSenderId: '572919863153',
    projectId: 'myproject-903b4',
    storageBucket: 'myproject-903b4.firebasestorage.app',
    iosBundleId: 'com.nellai.codemagicSample',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD4ORpZqg5-7cdob96r8EhXOque69OKVVE',
    appId: '1:572919863153:ios:f3c30c2f2efe8f1a4848d0',
    messagingSenderId: '572919863153',
    projectId: 'myproject-903b4',
    storageBucket: 'myproject-903b4.firebasestorage.app',
    iosBundleId: 'com.nellai.codemagicSample',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD4ORpZqg5-7cdob96r8EhXOque69OKVVE',
    appId: '1:572919863153:web:f3c30c2f2efe8f1a4848d0',
    messagingSenderId: '572919863153',
    projectId: 'myproject-903b4',
    authDomain: 'myproject-903b4.firebaseapp.com',
    storageBucket: 'myproject-903b4.firebasestorage.app',
  );
}