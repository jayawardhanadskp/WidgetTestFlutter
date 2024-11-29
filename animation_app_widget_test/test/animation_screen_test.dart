import 'package:animation_app_widget_test/animation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('animation screen test', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: AnimationScreen()));

    var containerFinder = find.byType(Container);
    expect(containerFinder, findsOneWidget);
    var container = tester.widget<Container>(containerFinder); // type container
    // INITIAL TEST CASES
    expect(container.constraints!.maxWidth, 50);
    expect(container.constraints!.maxHeight, 50);
    expect((container.decoration as BoxDecoration).borderRadius,
        BorderRadius.zero);
    expect((container.decoration as BoxDecoration).color, Colors.blue);

    // ANIMATION TEST CASES
    await tester.pumpAndSettle(); // wait for animation to complete

    containerFinder = find.byType(Container);
    container = tester.widget<Container>(containerFinder);
    expect(container.constraints!.maxHeight, 200);
    expect(container.constraints!.maxWidth, 200);
    expect((container.decoration as BoxDecoration).borderRadius,
        BorderRadius.circular(50));
    expect((container.decoration as BoxDecoration).color, Colors.green);
  });
}
