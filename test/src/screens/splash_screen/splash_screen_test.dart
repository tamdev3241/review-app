import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:review_app/src/screens/splash_screen/splash_screen.dart';

void main() {
  testWidgets('Should rendered app logo', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: SplashScreen(),
      ),
    );

    expect(find.byType(Image), findsOneWidget);
  });
}
