import 'package:flutter_splash/data/entity/response/photo_url.dart';

/// id : "Dndo_z8Rt4I"
/// created_at : "2019-06-25T04:59:16-04:00"
/// updated_at : "2021-08-24T07:11:02-04:00"
/// blur_hash : "LVDvo}xaX8Nb*0NHays.AJWCoJso"
/// urls : {"raw":"https://images.unsplash.com/photo-1561453144-22ab797f236d?ixlib=rb-1.2.1","full":"https://images.unsplash.com/photo-1561453144-22ab797f236d?ixlib=rb-1.2.1&q=85&fm=jpg&crop=entropy&cs=srgb","regular":"https://images.unsplash.com/photo-1561453144-22ab797f236d?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max","small":"https://images.unsplash.com/photo-1561453144-22ab797f236d?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max","thumb":"https://images.unsplash.com/photo-1561453144-22ab797f236d?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max"}

class PreviewPhoto {
  String? _id;
  String? _createdAt;
  String? _updatedAt;
  String? _blurHash;
  PhotoUrl? _urls;

  String? get id => _id;

  String? get createdAt => _createdAt;

  String? get updatedAt => _updatedAt;

  String? get blurHash => _blurHash;

  PhotoUrl? get urls => _urls;

  PreviewPhoto(
      {String? id,
      String? createdAt,
      String? updatedAt,
      String? blurHash,
      PhotoUrl? urls}) {
    _id = id;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _blurHash = blurHash;
    _urls = urls;
  }

  PreviewPhoto.fromJson(dynamic json) {
    _id = json["id"];
    _createdAt = json["created_at"];
    _updatedAt = json["updated_at"];
    _blurHash = json["blur_hash"];
    _urls = json["urls"] != null ? PhotoUrl.fromJson(json["urls"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["created_at"] = _createdAt;
    map["updated_at"] = _updatedAt;
    map["blur_hash"] = _blurHash;
    if (_urls != null) {
      map["urls"] = _urls?.toJson();
    }
    return map;
  }
}
