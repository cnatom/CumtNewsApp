// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:cumt_news/page/content_page/model.dart';
import 'package:cumt_news/page/list_page/list_page.dart';
import 'package:cumt_news/page/list_page/model.dart';
import 'package:cumt_news/page/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cumt_news/main.dart';

void main() {
  test("新闻类型", ()async{
    NewsContentModel model = NewsContentModel();
    var data = await model.getData(link: "https://xwzx.cumt.edu.cn/c9/44/c513a641348/page.htm");
    print(data?.toJson());
  });
}
