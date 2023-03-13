import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
class ContentPDF extends StatefulWidget {
  final String url;
  const ContentPDF({Key? key, required this.url}) : super(key: key);

  @override
  State<ContentPDF> createState() => _ContentPDFState();
}

class _ContentPDFState extends State<ContentPDF> {

  String? pdfFlePath;

  Future<String?> downloadAndSavePdf() async {
    final directory = await getApplicationDocumentsDirectory();
    final file = File('${directory.path}/sample.pdf');
    if (await file.exists()) {
      return file.path;
    }
    final response = await Dio().get(widget.url);
    await file.writeAsBytes(response.data);
    return file.path;
  }

  void loadPdf() async {
    pdfFlePath = await downloadAndSavePdf();
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    disposeFile();
  }

  Future<void> disposeFile()async{
    final directory = await getApplicationDocumentsDirectory();
    final file = File(pdfFlePath!);
    if(await file.exists()){
      file.delete();
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String?>(future: downloadAndSavePdf(),builder: (BuildContext context, AsyncSnapshot<String?> snapshot){
      if(snapshot.hasData){
        return PdfView(path: pdfFlePath!);
      }else{
        return const Text("加载中");
      }
    });
  }
}
