// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:namer_app/generator.dart';

void main() {
  testWidgets('Generate random word', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester
        .pumpWidget(ProviderScope(child: MaterialApp(home: GeneratorPage())));

    // Verify that our counter starts at 0.
    var pairWidget =
        find.descendant(of: find.byType(Card), matching: find.byType(Text));
    var pair = (pairWidget.evaluate().single.widget as Text).data;
    await tester.tap(find.text('Next'));
    await tester.pumpAndSettle();

    var data2 = (pairWidget.evaluate().single.widget as Text).data;
    expect(data2, isNot(pair));
  });
}
