import 'package:cumt_news/page/entity.dart';
import 'package:dio/dio.dart';

class NewsTypeModel {
  NewsTypeEntity? data;

  // 初始化数据
  Future<NewsTypeEntity?> getData() async {
    if(data==null){
      try {
        Response response = await _dio.get('http://127.0.0.1:5000/news/type');
        data = NewsTypeEntity.fromJson(response.data);
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
