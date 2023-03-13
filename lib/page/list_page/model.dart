
import 'package:cumt_news/page/list_page/entity.dart';
import 'package:dio/dio.dart';

class NewsListModel{
  NewsListEntity? data;

  // 获取数据，懒加载
  Future<NewsListEntity?> getData({required String type,int page = 1}) async {
    if(data==null){
      try {
        var param = {
          "type":type,
          "page":page
        };
        Response response = await _dio.get('http://127.0.0.1:5000/news/list',queryParameters: param);
        data = NewsListEntity.fromJson(response.data);
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