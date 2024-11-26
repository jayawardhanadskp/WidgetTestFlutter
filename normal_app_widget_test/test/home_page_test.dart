import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:normal_app_widget_test/home_page.dart';

// Given
// When
// Then

void main() {
  testWidgets(
      'given couter is 0, when increment button is clicked, then counter should be 1',
      (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: MyHomePage(title: 'COunterapp'),
    ));

    final ctr = find.text('0');
    expect(ctr, findsOneWidget);

    final ctr2 = find.text('1');
    expect(ctr2, findsNothing);

    final incrematBtn = find.byKey(const Key('increment_counter'));
    await tester.tap(incrematBtn);

    await tester.pump();

    final ctr3 = find.text('1');
    expect(ctr3, findsOneWidget);

    final ctr4 = find.text('0');
    expect(ctr4, findsNothing);
  });
}
