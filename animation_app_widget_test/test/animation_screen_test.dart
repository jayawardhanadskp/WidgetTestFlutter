import 'package:animation_app_widget_test/animation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('animation screen test', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: AnimationScreen()));

    expect(find.byType(Container), findsOneWidget);
  });
}
