import 'package:cumt_news/page/content_page/entity.dart';
import 'package:cumt_news/page/content_page/model.dart';
import 'package:cumt_news/page/content_page/ui/content_image.dart';
import 'package:cumt_news/page/content_page/ui/content_pdf/content_pdf.dart';
import 'package:cumt_news/page/content_page/ui/content_text.dart';
import 'package:flutter/material.dart';

toContentPage(BuildContext context, String link) {
  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
    return ContentPage(
      link: link,
    );
  }));
}

class ContentPage extends StatefulWidget {
  final String link;

  const ContentPage({Key? key, required this.link}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  final NewsContentModel _model = NewsContentModel();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsContentEntity?>(
      builder:
          (BuildContext context, AsyncSnapshot<NewsContentEntity?> snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              title: Text(snapshot.data!.title!),
            ),
            body: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  Widget item = Container();
                  var content = snapshot.data!.contents![index];
                  switch (content.type) {
                    case "text":
                      item =  ContentText(text: content.content!);
                      break;
                    case "pdf":
                      item = ContentPdf(url: content.content!);
                      break;
                    case "image":
                      item =  ContentImage(url: content.content!);
                      break;
                  }
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
                    child: item,
                  );
                },
                itemCount: snapshot.data!.contents!.length),
          );
        } else {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(
              child: Text('加载中...'),
            ),
          );
        }
      },
      future: _model.getData(
          link: widget.link)
    );
  }
}
