import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:instagram_clone/Feeds/controllers/home_controller.dart';
import 'package:instagram_clone/Feeds/feed_screen.dart';
import 'package:instagram_clone/Feeds/Widgets/feed_post.dart';

void main() {
  testWidgets('FeedScreen builds For loading', (WidgetTester tester) async {
    final HomeController controller = HomeController();
    Get.put(controller);

    controller.state = StatusWithValue(FeedsState.loading, []);

    // Build our widget
    await tester.pumpWidget(const MaterialApp(home: FeedScreen()));

    // Verify that the title is rendered
    expect(find.text('Instagram'), findsOneWidget);

    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // Verify that the FeedPost widgets are rendered based on the number of items in the feedList
    expect(find.byType(FeedPost), findsNWidgets(controller.state.feeds.length));
  });
}
