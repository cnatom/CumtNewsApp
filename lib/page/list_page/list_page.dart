
import 'package:cumt_news/page/content_page/content_page.dart';
import 'package:cumt_news/page/list_page/model.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  final String type;
  const ListPage({Key? key, required this.type}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  final NewsListModel _model = NewsListModel();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(builder: (BuildContext context, AsyncSnapshot snapshot) {
      if(snapshot.hasData){
        return ListView.builder(itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(snapshot.data.data[index].title),
            subtitle: Text(snapshot.data.data[index].date),
            onTap: (){
              toContentPage(context, snapshot.data.data[index].link);
            },
          );
        },itemCount: snapshot.data.data.length,);
      }else{
        return const Center(
          child: Text('加载中...'),
        );
      }
    },future: _model.getData(type: widget.type,page: 1),);
  }
}
