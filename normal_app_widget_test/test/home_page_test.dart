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
    await tester.pumpWidget(
      const MaterialApp(
        home: MyHomePage(
          title: 'Counter App',
        ),
      ),
    );

    final ctr = find.text('0');
    expect(ctr, findsOneWidget);

    final ctr2 = find.text('2');
    expect(ctr2, findsNothing);
  });
}
