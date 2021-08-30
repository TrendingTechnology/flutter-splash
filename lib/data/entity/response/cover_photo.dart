import 'package:flutter_splash/data/entity/response/photo_url.dart';

/// id : "RQHzRELE2Ss"
/// created_at : "2014-04-03T19:47:30-04:00"
/// updated_at : "2021-08-18T21:00:06-04:00"
/// promoted_at : "2014-04-03T19:47:30-04:00"
/// width : 3888
/// height : 2592
/// color : "#f3f3f3"
/// blur_hash : "LuO|OiD$_4x]IUV@t7aextoJM|WB"
/// description : "Sweet honey in a jar"
/// alt_description : "brown wooden honey dipper"
/// urls : {"raw":"https://images.unsplash.com/33/IR8nDBZETv6aM6HdJ7RD_IMG_5784.jpg?ixlib=rb-1.2.1","full":"https://images.unsplash.com/33/IR8nDBZETv6aM6HdJ7RD_IMG_5784.jpg?ixlib=rb-1.2.1&q=85&fm=jpg&crop=entropy&cs=srgb","regular":"https://images.unsplash.com/33/IR8nDBZETv6aM6HdJ7RD_IMG_5784.jpg?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max","small":"https://images.unsplash.com/33/IR8nDBZETv6aM6HdJ7RD_IMG_5784.jpg?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max","thumb":"https://images.unsplash.com/33/IR8nDBZETv6aM6HdJ7RD_IMG_5784.jpg?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max"}

class CoverPhoto {
  String? _id;
  String? _createdAt;
  String? _updatedAt;
  String? _promotedAt;
  int? _width;
  int? _height;
  String? _color;
  String? _blurHash;
  String? _description;
  String? _altDescription;
  PhotoUrl? _urls;

  String? get id => _id;

  String? get createdAt => _createdAt;

  String? get updatedAt => _updatedAt;

  String? get promotedAt => _promotedAt;

  int? get width => _width;

  int? get height => _height;

  String? get color => _color;

  String? get blurHash => _blurHash;

  String? get description => _description;

  String? get altDescription => _altDescription;

  PhotoUrl? get urls => _urls;

  CoverPhoto(
      {String? id,
      String? createdAt,
      String? updatedAt,
      String? promotedAt,
      int? width,
      int? height,
      String? color,
      String? blurHash,
      String? description,
      String? altDescription,
      PhotoUrl? urls}) {
    _id = id;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _promotedAt = promotedAt;
    _width = width;
    _height = height;
    _color = color;
    _blurHash = blurHash;
    _description = description;
    _altDescription = altDescription;
    _urls = urls;
  }

  CoverPhoto.fromJson(dynamic json) {
    _id = json["id"];
    _createdAt = json["created_at"];
    _updatedAt = json["updated_at"];
    _promotedAt = json["promoted_at"];
    _width = json["width"];
    _height = json["height"];
    _color = json["color"];
    _blurHash = json["blur_hash"];
    _description = json["description"];
    _altDescription = json["alt_description"];
    _urls = json["urls"] != null ? PhotoUrl.fromJson(json["urls"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["created_at"] = _createdAt;
    map["updated_at"] = _updatedAt;
    map["promoted_at"] = _promotedAt;
    map["width"] = _width;
    map["height"] = _height;
    map["color"] = _color;
    map["blur_hash"] = _blurHash;
    map["description"] = _description;
    map["alt_description"] = _altDescription;
    if (_urls != null) {
      map["urls"] = _urls?.toJson();
    }
    return map;
  }

  @override
  String toString() {
    return 'TopicCoverPhoto{_id: $_id, _altDescription: $_altDescription}';
  }
}
