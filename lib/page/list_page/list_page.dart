import 'package:cumt_news/page/content_page/content_page.dart';
import 'package:cumt_news/page/list_page/model.dart';
import 'package:flutter/material.dart';

import 'entity.dart';

class ListPage extends StatefulWidget {
  final String type;

  const ListPage({Key? key, required this.type}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final NewsListModel _model = NewsListModel();
  late Future<NewsListEntity?> _futureBuildFunc;
  ScrollController scrollController = ScrollController();
  int page = 1;

  // 上拉加载
  pullUpLoading() {
    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        setState(() {
          _model.getData(type: widget.type, page: ++page);
        });
      }
    });
  }
  @override
  void initState() {
    super.initState();
    pullUpLoading();
    _futureBuildFunc = _model.getData(type: widget.type, page: page);
  }



  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            controller: scrollController,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(snapshot.data.data[index].title),
                subtitle: Text(snapshot.data.data[index].date),
                onTap: () {
                  toContentPage(context, snapshot.data.data[index].link);
                },
              );
            },
            itemCount: snapshot.data.data.length,
          );
        } else {
          return const Center(
            child: Text('加载中...'),
          );
        }
      },
      future: _futureBuildFunc,
    );
  }
}
