import 'package:animation_app_widget_test/animation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('animation screen test', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: AnimationScreen()));

    final containerFinder = find.byType(Container);
    expect(containerFinder, findsOneWidget);
    final container =
        tester.widget<Container>(containerFinder); // type container
    // INITIAL TEST CASES
    expect(container.constraints!.maxWidth, 50);
    expect(container.constraints!.maxHeight, 50);
    expect((container.decoration as BoxDecoration).borderRadius,
        BorderRadius.zero);
    expect((container.decoration as BoxDecoration).color, Colors.blue);
  });
}
