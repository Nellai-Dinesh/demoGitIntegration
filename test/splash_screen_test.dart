import 'package:codemagic_sample/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Splash Screen Tests', () {
    testWidgets('should display app logo', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: SplashScreen()));
      
      expect(find.byKey(const Key('app_logo')), findsOneWidget);
    });

    testWidgets('should have centered layout', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: SplashScreen()));
      
      expect(find.byType(Center), findsOneWidget);
    });

    testWidgets('should navigate to main screen after delay', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: const SplashScreen(),
        routes: {
          '/main': (context) => const Scaffold(body: Text('Main Screen')),
        },
      ));
      
      // Wait for navigation delay
      await tester.pumpAndSettle(const Duration(seconds: 3));
      
      expect(find.text('Main Screen'), findsOneWidget);
    });

    testWidgets('should show loading indicator', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: SplashScreen()));
      
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}