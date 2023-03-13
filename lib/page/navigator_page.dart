import 'package:cumt_news/page/list_page/list_page.dart';
import 'package:cumt_news/page/model.dart';
import 'package:flutter/material.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage>
    with SingleTickerProviderStateMixin {
  late final NewsTypeModel _model = NewsTypeModel();
  late final TabController _controller = TabController(vsync: this, length: _model.data!.data!.length);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      initialData: null,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('矿大新闻'),
              bottom: TabBar(

                controller: _controller,
                tabs: _model.data!.data!
                    .map((e) => Tab(
                          text: e.name,
                        ))
                    .toList(),
              ),
            ),
            body: TabBarView(
              controller: _controller,
              children: _model.data!.data!
                  .map((e) => ListPage(type: e.type!))
                  .toList(),
            ),
          );
        } else {
          return const Scaffold(
            body: Center(
              child: Text('加载中...'),
            ),
          );
        }
      },
      future: _model.getData(),
    );
  }
}
