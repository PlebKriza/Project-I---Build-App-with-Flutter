import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fb_clone_v4/main.dart';  // Ensure this path is correct

void main() {
  testWidgets('Basic app startup test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp()); // Ensure MyApp is the correct entry widget for your app

    // Verify if the app starts with a specific widget or text, for example, 'Marketplace'.
    expect(find.text('Marketplace'), findsOneWidget);

    // Optional: Test if specific icons or buttons exist
    expect(find.byIcon(Icons.search), findsOneWidget);

    // Tap on the '+' icon or any other interactable widget
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump(); // Rebuild the widget after the state has changed

    // Verify the state after interaction, e.g., incremented number or widget visibility
    expect(find.text('1'), findsOneWidget); // Change this to reflect actual app behavior
  });
}