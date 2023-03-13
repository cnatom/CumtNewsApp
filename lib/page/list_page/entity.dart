/// current_page : 1
/// data : [{"date":"2023-03-12","link":"https://xwzx.cumt.edu.cn/c9/6e/c513a641390/page.htm","title":"我校力学学科获批“首批省级基础学科拔尖学生培养计划2.0基地建设点”"},{"date":"2023-03-11","link":"https://xwzx.cumt.edu.cn/c9/44/c513a641348/page.htm","title":"我校开展师生义务植树活动"},{"date":"2023-03-11","link":"https://xwzx.cumt.edu.cn/c9/45/c513a641349/page.htm","title":"我校举办“凝心筑梦新时代，踔厉奋发向未来”文艺晚会暨2023年大学生文化艺术节开幕式"},{"date":"2023-03-11","link":"https://xwzx.cumt.edu.cn/c9/55/c513a641365/page.htm","title":"中国石油大学（华东）副校长张玲玲一行来校交流"},{"date":"2023-03-10","link":"https://xwzx.cumt.edu.cn/c9/2a/c513a641322/page.htm","title":"江苏省统计局教育培训基地在我校揭牌"},{"date":"2023-03-10","link":"https://xwzx.cumt.edu.cn/c9/1e/c513a641310/page.htm","title":"学校召开2023年实验室工作推进会暨先进集体及个人表彰会"},{"date":"2023-03-10","link":"https://xwzx.cumt.edu.cn/c8/f2/c513a641266/page.htm","title":"我校产学研合作工作获多项荣誉"},{"date":"2023-03-10","link":"https://xwzx.cumt.edu.cn/c8/fe/c513a641278/page.htm","title":"我校以多种形式庆祝“三八”国际妇女节"},{"date":"2023-03-09","link":"https://xwzx.cumt.edu.cn/c8/af/c513a641199/page.htm","title":"我校获省统战理论政策研究创新成果一等奖及市多项表彰"},{"date":"2023-03-09","link":"https://xwzx.cumt.edu.cn/c8/a1/c513a641185/page.htm","title":"我校在江苏省第二十届运动会获多项荣誉"},{"date":"2023-03-07","link":"https://xwzx.cumt.edu.cn/c8/52/c513a641106/page.htm","title":"我校召开2022年安全工作总结暨2023年安全工作部署会"},{"date":"2023-03-06","link":"https://xwzx.cumt.edu.cn/c7/fe/c513a641022/page.htm","title":"我校举行“青春践行二十大 志愿奋进新征程”爱国志愿我先行升旗仪式"},{"date":"2023-03-06","link":"https://xwzx.cumt.edu.cn/c7/df/c513a640991/page.htm","title":"我校杰出校友陈清泉院士荣膺“感动中国2022年度人物”"},{"date":"2023-03-06","link":"https://xwzx.cumt.edu.cn/c7/e8/c513a641000/page.psp","title":"我校上海校友会举行第四届理事会换届大会"}]
/// max_page : 319
/// type : "视点新闻"

class NewsListEntity {
  NewsListEntity({
    int? currentPage,
    List<Data>? data,
    int? maxPage,
    String? type,}){
    _currentPage = currentPage;
    _data = data;
    _maxPage = maxPage;
    _type = type;
  }

  NewsListEntity.fromJson(dynamic json) {
    _currentPage = json['current_page'];
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _maxPage = json['max_page'];
    _type = json['type'];
  }
  int? _currentPage;
  List<Data>? _data;
  int? _maxPage;
  String? _type;
  NewsListEntity copyWith({  int? currentPage,
    List<Data>? data,
    int? maxPage,
    String? type,
  }) => NewsListEntity(  currentPage: currentPage ?? _currentPage,
    data: data ?? _data,
    maxPage: maxPage ?? _maxPage,
    type: type ?? _type,
  );
  int? get currentPage => _currentPage;
  List<Data>? get data => _data;
  int? get maxPage => _maxPage;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['current_page'] = _currentPage;
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['max_page'] = _maxPage;
    map['type'] = _type;
    return map;
  }

}

/// date : "2023-03-12"
/// link : "https://xwzx.cumt.edu.cn/c9/6e/c513a641390/page.htm"
/// title : "我校力学学科获批“首批省级基础学科拔尖学生培养计划2.0基地建设点”"

class Data {
  Data({
    String? date,
    String? link,
    String? title,}){
    _date = date;
    _link = link;
    _title = title;
  }

  Data.fromJson(dynamic json) {
    _date = json['date'];
    _link = json['link'];
    _title = json['title'];
  }
  String? _date;
  String? _link;
  String? _title;
  Data copyWith({  String? date,
    String? link,
    String? title,
  }) => Data(  date: date ?? _date,
    link: link ?? _link,
    title: title ?? _title,
  );
  String? get date => _date;
  String? get link => _link;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['link'] = _link;
    map['title'] = _title;
    return map;
  }

}