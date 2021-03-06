// This is a basic Flutter widget test.
// To perform an interaction with a widget in your test, use the WidgetTester utility that Flutter
// provides. For example, you can send tap and scroll gestures. You can also use WidgetTester to
// find child widgets in the widget tree, read text, and verify that the values of widget properties
// are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:zhihu/main.dart';

//Widget测试
void main() {
  // 创建一个testWidgets测试方法，定义一个Widget测试用例并创建一个WidgetTester给我们使用
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    //传递一个tester.pumpWidget组件给测试对象
    await tester.pumpWidget(new ZhiHu());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    //验证组件更新的值是否正确
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
