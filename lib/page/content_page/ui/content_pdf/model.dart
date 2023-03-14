import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class ContentPdfModel {
  String? filePath;
  final _progressController = StreamController<MapEntry<double, String?>>();

  Stream<MapEntry<double, String?>> downloadPDF({required String url}) {
    if (filePath == null) {
      try {
        Dio().get(
          url,
          options: Options(responseType: ResponseType.bytes),
          onReceiveProgress: (received, total) {
            _progressController.sink.add(MapEntry(received / total, null));
          },
        ).then((response) async {
          final tempDir = await getTemporaryDirectory();
          final file = File("${tempDir.path}/my_file.pdf");
          await file.writeAsBytes(response.data);
          filePath = file.path;
          _progressController.sink.add(MapEntry(1.1, filePath));
        });
      } catch (e) {}
    } else {
      _progressController.sink.add(MapEntry(1.1, filePath));
    }
    return _progressController.stream;
  }

  Future<void> disposeFile() async {
    final directory = await getTemporaryDirectory();
    final file = File(filePath!);
    if (await file.exists()) {
      file.delete();
    }
  }

  void dispose() {
    _progressController.close();
  }
}
