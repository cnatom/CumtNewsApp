/// author : "李居铭"
/// contents : [{"content":"https://xwzx.cumt.edu.cn/_upload/article/images/fb/56/d06c12bf4827906e3564e4b9bcb3/689dad55-fd65-4d9f-a07f-61aaa949abe1.jpg","type":"image"},{"content":"活动现场","type":"text"},{"content":"https://xwzx.cumt.edu.cn/_upload/article/images/fb/56/d06c12bf4827906e3564e4b9bcb3/65e7d9ba-7d89-4c21-b1b5-e48dd2a345ad.jpg","type":"image"},{"content":"校长宋学锋讲话","type":"text"},{"content":"https://xwzx.cumt.edu.cn/_upload/article/images/fb/56/d06c12bf4827906e3564e4b9bcb3/ea16207b-0b15-47b7-9523-cdbd5a36ed05.jpg","type":"image"},{"content":"师生学习植树知识","type":"text"},{"content":"https://xwzx.cumt.edu.cn/_upload/article/images/fb/56/d06c12bf4827906e3564e4b9bcb3/57d5cd0d-4f99-4716-980c-1f511264e2dc.jpg","type":"image"},{"content":"活动现场","type":"text"},{"content":"https://xwzx.cumt.edu.cn/_upload/article/images/fb/56/d06c12bf4827906e3564e4b9bcb3/bfcf658c-2db1-4f70-8e5e-627e55c5108a.jpg","type":"image"},{"content":"活动现场","type":"text"},{"content":"https://xwzx.cumt.edu.cn/_upload/article/images/fb/56/d06c12bf4827906e3564e4b9bcb3/0e57b74b-73b5-4719-8b9c-770b30aba5d9.jpg","type":"image"},{"content":"活动现场","type":"text"},{"content":"https://xwzx.cumt.edu.cn/_upload/article/images/fb/56/d06c12bf4827906e3564e4b9bcb3/a544a368-e284-4236-aa17-7c58f5baf789.jpg","type":"image"},{"content":"活动现场","type":"text"},{"content":"https://xwzx.cumt.edu.cn/_upload/article/images/fb/56/d06c12bf4827906e3564e4b9bcb3/62af3beb-3870-43c3-921b-94f0c46334c5.jpg","type":"image"},{"content":"活动现场","type":"text"},{"content":"https://xwzx.cumt.edu.cn/_upload/article/images/fb/56/d06c12bf4827906e3564e4b9bcb3/4be3f81d-31aa-419d-abf6-0228422261f9.jpg","type":"image"},{"content":"活动现场","type":"text"},{"content":"为深入贯彻落实习近平生态文明思想，让全校师生在绿色校园中体悟自然之美、劳动之美，3月10日下午，我校在南湖校区开展以“春意盎然万物新，植树护绿我先行”为主题的师生义务植树活动。在校校领导、党政机关干部代表、校级学生组织成员、校青马工程学员、第25届研究生支教团志愿者等共200余名师生一起参加了活动。","type":"text"},{"content":"活动开始前，校长宋学锋作动员讲话。他表示，学校在第45个植树节到来之际开展植树活动，是以实际行动践行“绿水青山就是金山银山”理念，也是建设美丽中国、建设绿色校园的具体举措。同时，此次植树活动也是学校开展劳动教育过程中一堂生动的实践课。他希望广大师生在参与植树造林的劳动过程中养成劳动习惯、体验劳动快乐，在亲近自然、热爱校园中引领低碳风尚，为实现“双碳”目标贡献矿大人的力量。","type":"text"},{"content":"随后，实业公司技术人员为大家讲解了近年来学校植树的种类、植树技巧、树木养护方式等植树要点，参与植树的领导和师生认真学习了相关知识。植树活动正式开始后，在实业公司技术人员的指导下，大家分工协作，按照步骤铲土、扶苗、浇水，各道工序有条不紊，一棵棵树苗渐渐昂扬挺立。校领导们在植树过程中与同学们交流劳动心得，同时勉励同学们要在生活中注重劳动意识培养，提高在劳动过程获取知识的能力。","type":"text"},{"content":"“看到新种下的树苗迎风挺立，生机勃勃，心里很是激动满足。”校研究生会主席团成员、力学与土木工程学院2021级研究生戴可欣说，“通过此次特别的劳动教育实践经历，自己亲手铲土、扶苗、浇水让一棵树苗重新获得生机，扎扎实实地为校园绿化增量作出贡献，我切实体会到了劳动精神，也更加感受到了劳动教育在高等教育体系中的重要作用。”校青马班学员、环境与测绘学院2020级本科生郑翔元说：“在专业课的学习中，我了解到学校在矿山生态修复等方面有着令人骄傲的成绩，相信同学们今天不仅仅在校园中种下一棵棵树苗，更在心中埋下了‘绿水青山就是金山银山’的种子。同时作为学校的一员，很荣幸今天能够为美化校园出一份力，亲手栽培树苗让我在劳动和汗水中收获了满满的快乐和成就感。”","type":"text"},{"content":"经过大家的辛勤劳作，80株池杉在绿意盎然的南湖校区“安家落户”，一棵棵新栽的树苗为美丽校园增添更多生机。","type":"text"}]
/// date : "2023-03-11"
/// title : "我校开展师生义务植树活动"
/// visit_count : 1436

class NewsContentEntity {
  NewsContentEntity({
    String? author,
    List<Contents>? contents,
    String? date,
    String? title,
    int? visitCount,}){
    _author = author;
    _contents = contents;
    _date = date;
    _title = title;
    _visitCount = visitCount;
  }

  NewsContentEntity.fromJson(dynamic json) {
    _author = json['author'];
    if (json['contents'] != null) {
      _contents = [];
      json['contents'].forEach((v) {
        _contents?.add(Contents.fromJson(v));
      });
    }
    _date = json['date'];
    _title = json['title'];
    _visitCount = json['visit_count'];
  }
  String? _author;
  List<Contents>? _contents;
  String? _date;
  String? _title;
  int? _visitCount;
  NewsContentEntity copyWith({  String? author,
    List<Contents>? contents,
    String? date,
    String? title,
    int? visitCount,
  }) => NewsContentEntity(  author: author ?? _author,
    contents: contents ?? _contents,
    date: date ?? _date,
    title: title ?? _title,
    visitCount: visitCount ?? _visitCount,
  );
  String? get author => _author;
  List<Contents>? get contents => _contents;
  String? get date => _date;
  String? get title => _title;
  int? get visitCount => _visitCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['author'] = _author;
    if (_contents != null) {
      map['contents'] = _contents?.map((v) => v.toJson()).toList();
    }
    map['date'] = _date;
    map['title'] = _title;
    map['visit_count'] = _visitCount;
    return map;
  }

}

/// content : "https://xwzx.cumt.edu.cn/_upload/article/images/fb/56/d06c12bf4827906e3564e4b9bcb3/689dad55-fd65-4d9f-a07f-61aaa949abe1.jpg"
/// type : "image"

class Contents {
  Contents({
    String? content,
    String? type,}){
    _content = content;
    _type = type;
  }

  Contents.fromJson(dynamic json) {
    _content = json['content'];
    _type = json['type'];
  }
  String? _content;
  String? _type;
  Contents copyWith({  String? content,
    String? type,
  }) => Contents(  content: content ?? _content,
    type: type ?? _type,
  );
  String? get content => _content;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['content'] = _content;
    map['type'] = _type;
    return map;
  }

}