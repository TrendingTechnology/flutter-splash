import 'package:flutter_splash/data/entity/response/photo_link.dart';
import 'package:flutter_splash/data/entity/response/photo_url.dart';
import 'package:flutter_splash/data/entity/response/user.dart';

/// id : "jVYnBn3M9R0"
/// created_at : "2018-07-09T17:26:59-04:00"
/// updated_at : "2021-08-19T01:06:18-04:00"
/// promoted_at : "2018-07-10T09:36:24-04:00"
/// width : 5472
/// height : 3648
/// color : "#d9a6a6"
/// blur_hash : "LEOo0Vfk_N$*-qj[MxWV?boLDiR*"
/// description : "Unporn: Butt"
/// alt_description : "honeycrisp apple"

class PhotoResponse {
  String? _id;
  String? _createdAt;
  String? _updatedAt;
  String? _promotedAt;
  int? _width;
  int? _height;
  int? _likes;

  String? _color;
  String? _blurHash;
  String? _description;
  String? _altDescription;
  PhotoUrl? _photoUrl;
  PhotoLink? _photoLink;
  User? _user;

  String? get id => _id;

  String? get createdAt => _createdAt;

  String? get updatedAt => _updatedAt;

  String? get promotedAt => _promotedAt;

  int? get width => _width;

  int? get height => _height;

  int? get likes => _likes;

  String? get color => _color;

  String? get blurHash => _blurHash;

  String? get description => _description;

  String? get altDescription => _altDescription;

  PhotoUrl? get photoUrl => _photoUrl;

  PhotoLink? get photoLink => _photoLink;

  User? get user => _user;

  PhotoResponse(
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
      PhotoUrl? photoUrl,
      PhotoLink? photoLink,
      User? user}) {
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
    _photoUrl = photoUrl;
    _photoLink = photoLink;
    _user = user;
  }

  PhotoResponse.fromJson(dynamic json) {
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
    _photoUrl = PhotoUrl.fromJson(json["urls"]);
    _photoLink = PhotoLink.fromJson(json["links"]);
    _user = User.fromJson(json["user"]);
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
    map["urls"] = _photoUrl;
    map["links"] = _photoLink;
    map["user"] = _user;
    return map;
  }

  @override
  String toString() {
    return 'PhotoResponse{_id: $_id, _photoUrl: $_photoUrl, _photoLink: $_photoLink, _user: $_user}';
  }
}
