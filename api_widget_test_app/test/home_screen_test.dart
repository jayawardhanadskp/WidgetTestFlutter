import 'package:api_widget_test_app/home_screen.dart';
import 'package:api_widget_test_app/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('display list of users with title as name and subtitle as email',
      (tester) async {
    final usres = [
      User(id: 1, name: 'kasun', email: 'kasun@gmail.com'),
      User(id: 2, name: 'pradeep', email: 'pradeep@gmail.com'),
    ];
    Future<List<User>> mockFetchUser() async {
      return Future.delayed(const Duration(seconds: 1), () => usres);
    }

    await tester.pumpWidget(MaterialApp(
      home: HomeScreen(futureUsers: mockFetchUser()),
    ));

    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.pumpAndSettle();
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(ListTile), findsNWidgets(usres.length));

    for (final user in usres) {
      expect(find.text(user.name), findsOneWidget);
      expect(find.text(user.email), findsOneWidget);
    }
  });
}
