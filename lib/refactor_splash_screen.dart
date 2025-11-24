```dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A splash screen that displays an app logo and navigates to the home screen after a delay.
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  /// Navigates to the home screen after a delay.
  Future<void> _navigateToHome() async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      if (context.mounted) {
        await Navigator.pushReplacementNamed(context, '/home');
      }
    } on PlatformException catch (e) {
      debugPrint('Error navigating to home: ${e.message}');
      // Optionally, display an error message to the user.
    } catch (e) {
      debugPrint('An unexpected error occurred: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('assets/app_logo.png', key: const Key('app_logo')),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(const AssetImage('assets/app_logo.png'), context);
  }
}
```