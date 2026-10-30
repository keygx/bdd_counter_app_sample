import 'package:flutter_test/flutter_test.dart';
import 'package:bdd_counter_app_sample/main.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  await tester.pumpWidget(const MyApp());
}
