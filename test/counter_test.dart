// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

import 'package:material_ui/material_ui.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/i_see_text.dart';
import './step/i_tap_icon.dart';

void main() {
  group('''カウンターの表示と加算''', () {
    testWidgets('''起動時にカウンターの初期値を表示する''', (tester) async {
      await theAppIsRunning(tester);
      await iSeeText(tester, 'Flutter Demo Home Page');
      await iSeeText(tester, 'You have pushed the button this many times:');
      await iSeeText(tester, '0');
    });
    testWidgets('''加算ボタンを押すとカウンターが増える''', (tester) async {
      await theAppIsRunning(tester);
      await iTapIcon(tester, Icons.add);
      await iSeeText(tester, '1');
    });
    testWidgets('''加算ボタンを続けて押すと押した回数だけ増える''', (tester) async {
      await theAppIsRunning(tester);
      await iTapIcon(tester, Icons.add);
      await iTapIcon(tester, Icons.add);
      await iSeeText(tester, '2');
    });
  });
}
