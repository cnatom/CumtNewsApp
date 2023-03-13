/// data : [{"link":"https://www.cumt.edu.cn/19673","name":"视点新闻","type":"SDXW"},{"link":"https://www.cumt.edu.cn/19674","name":"学术聚焦","type":"XSJJ"},{"link":"https://www.cumt.edu.cn/19676","name":"学术报告","type":"XSBG"},{"link":"https://www.cumt.edu.cn/19677","name":"人文课堂","type":"RWJT"},{"link":"https://www.cumt.edu.cn/19678","name":"信息公告","type":"XWGG"},{"link":"https://www.cumt.edu.cn/19679","name":"校园快讯","type":"XYKX"}]

class NewsTypeEntity {
  NewsTypeEntity({
    List<Data>? data,}){
    _data = data;
  }

  NewsTypeEntity.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  List<Data>? _data;
  NewsTypeEntity copyWith({  List<Data>? data,
  }) => NewsTypeEntity(  data: data ?? _data,
  );
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// link : "https://www.cumt.edu.cn/19673"
/// name : "视点新闻"
/// type : "SDXW"

class Data {
  Data({
    String? link,
    String? name,
    String? type,}){
    _link = link;
    _name = name;
    _type = type;
  }

  Data.fromJson(dynamic json) {
    _link = json['link'];
    _name = json['name'];
    _type = json['type'];
  }
  String? _link;
  String? _name;
  String? _type;
  Data copyWith({  String? link,
    String? name,
    String? type,
  }) => Data(  link: link ?? _link,
    name: name ?? _name,
    type: type ?? _type,
  );
  String? get link => _link;
  String? get name => _name;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['link'] = _link;
    map['name'] = _name;
    map['type'] = _type;
    return map;
  }

}