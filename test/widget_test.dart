// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('notification bell shows a blue icon and count badge', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    final bell = tester.widget<Icon>(find.byIcon(Icons.notifications));
    expect(bell.color, Colors.blue);
    expect(find.text('3'), findsOneWidget);
  });
}
