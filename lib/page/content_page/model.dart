import 'package:cumt_news/page/content_page/entity.dart';
import 'package:cumt_news/page/entity.dart';
import 'package:dio/dio.dart';

class NewsContentModel {
  NewsContentEntity? data;

  // 初始化数据
  Future<NewsContentEntity?> getData({required String link}) async {
    if(data==null){
      try {
        var param = {
          "link":link,
        };
        Response response = await _dio.get('http://127.0.0.1:5000/news/content',queryParameters: param);
        data = NewsContentEntity.fromJson(response.data);
        return data;
      } catch (e) {
        return null;
      }
    }
    return data;
  }

  final Dio _dio = Dio(
    BaseOptions(
        connectTimeout: const Duration(seconds: 3),
        receiveTimeout: const Duration(seconds: 3),
        sendTimeout: const Duration(seconds: 3)),
  );

}
