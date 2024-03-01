import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/Controllers/home_controller.dart';
import 'package:instagram_clone/Presentation/feed_screen.dart';
import 'package:instagram_clone/Presentation/feed_post.dart';

void main() {
  testWidgets('FeedScreen builds correctly', (WidgetTester tester) async {
    // Create a fake instance of HomeController and provide it using Get.put
    final HomeController controller = HomeController();
    Get.put(controller);

    // Build our widget
    await tester.pumpWidget(const MaterialApp(home: FeedScreen()));

    // Verify that the title is rendered
    expect(find.text('Instagram'), findsOneWidget);

    // Verify that the FeedPost widgets are rendered based on the number of items in the feedList
    expect(find.byType(FeedPost), findsNWidgets(controller.feedList.length));
  });
}
