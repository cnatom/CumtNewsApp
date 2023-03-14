
import 'package:cumt_news/page/content_page/ui/content_pdf/model.dart';
import 'package:flutter/material.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';

class ContentPdf extends StatefulWidget {
  final String url;

  const ContentPdf({Key? key, required this.url}) : super(key: key);

  @override
  State<ContentPdf> createState() => _ContentPdfState();
}

class _ContentPdfState extends State<ContentPdf> {
  final ContentPdfModel _model = ContentPdfModel();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MapEntry<double, String?>>(
      stream: _model.downloadPDF(url: widget.url),
      builder:
          (BuildContext context, AsyncSnapshot<MapEntry<double, String?>> snapshot) {
        if (snapshot.hasData && snapshot.data!.key > 1.0) {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: PdfView(path: snapshot.data!.value!),
          );
        } else if (snapshot.hasError) {
          return const Text("加载失败");
        } else {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LinearProgressIndicator(value: snapshot.data?.key),
              Text("${((snapshot.data?.key??0)*100).round()}%"),
            ],
          );
        }
      },
    );
  }
}
