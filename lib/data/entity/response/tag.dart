/// type : "search"
/// title : "plane"

class Tag {
  String? _type;
  String? _title;

  String? get type => _type;

  String? get title => _title;

  Tags({
    String? type,
    String? title}) {
    _type = type;
    _title = title;
  }

  Tag.fromJson(dynamic json) {
    _type = json["type"];
    _title = json["title"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["type"] = _type;
    map["title"] = _title;
    return map;
  }

}