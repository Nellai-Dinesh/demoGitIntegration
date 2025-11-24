```dart
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show kIsWeb, defaultTargetPlatform, TargetPlatform;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class FirebaseConfig {

  static Future<FirebaseOptions> get currentPlatform async {
    await dotenv.load(fileName: ".env"); // Load environment variables

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
          'Firebase options have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'Firebase options are not supported for this platform.',
        );
    }
  }

  static FirebaseOptions get web {
    return FirebaseOptions(
      apiKey: dotenv.env['WEB_API_KEY']!, // Use ! to assert not null, handle with care
      appId: dotenv.env['WEB_APP_ID']!,
      messagingSenderId: dotenv.env['MESSAGING_SENDER_ID']!,
      projectId: dotenv.env['PROJECT_ID']!,
      authDomain: dotenv.env['WEB_AUTH_DOMAIN']!,
      storageBucket: dotenv.env['STORAGE_BUCKET']!,
    );
  }

  static FirebaseOptions get android {
    return FirebaseOptions(
      apiKey: dotenv.env['ANDROID_API_KEY']!,
      appId: dotenv.env['ANDROID_APP_ID']!,
      messagingSenderId: dotenv.env['MESSAGING_SENDER_ID']!,
      projectId: dotenv.env['PROJECT_ID']!,
      storageBucket: dotenv.env['STORAGE_BUCKET']!,
    );
  }

  static FirebaseOptions get ios {
    return FirebaseOptions(
      apiKey: dotenv.env['IOS_API_KEY']!,
      appId: dotenv.env['IOS_APP_ID']!,
      messagingSenderId: dotenv.env['MESSAGING_SENDER_ID']!,
      projectId: dotenv.env['PROJECT_ID']!,
      storageBucket: dotenv.env['STORAGE_BUCKET']!,
      iosBundleId: dotenv.env['IOS_BUNDLE_ID']!,
    );
  }

  static FirebaseOptions get macos {
     return FirebaseOptions(
      apiKey: dotenv.env['MACOS_API_KEY']!,
      appId: dotenv.env['MACOS_APP_ID']!,
      messagingSenderId: dotenv.env['MESSAGING_SENDER_ID']!,
      projectId: dotenv.env['PROJECT_ID']!,
      storageBucket: dotenv.env['STORAGE_BUCKET']!,
      iosBundleId: dotenv.env['MACOS_BUNDLE_ID']!,
    );
  }

  static FirebaseOptions get windows {
    return FirebaseOptions(
      apiKey: dotenv.env['WINDOWS_API_KEY']!,
      appId: dotenv.env['WINDOWS_APP_ID']!,
      messagingSenderId: dotenv.env['MESSAGING_SENDER_ID']!,
      projectId: dotenv.env['PROJECT_ID']!,
      authDomain: dotenv.env['WINDOWS_AUTH_DOMAIN']!,
      storageBucket: dotenv.env['STORAGE_BUCKET']!,
    );
  }
}
```