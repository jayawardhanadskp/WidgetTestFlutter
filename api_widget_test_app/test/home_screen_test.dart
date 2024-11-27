import 'package:api_widget_test_app/home_screen.dart';
import 'package:api_widget_test_app/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('display list of users with title as name and subtitle as email',
      (tester) async {
    final usres = [
      User(id: 1, name: 'kasun', email: 'kasun@gmail.com'),
      User(id: 1, name: 'pradeep', email: 'pradeep@gmail.com'),
    ];
    Future<List<User>> mockFetchUser() async {
      return usres;
    }

    await tester.pumpWidget( MaterialApp(
      home: HomeScreen(futureUsers: mockFetchUser()),
    ));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
