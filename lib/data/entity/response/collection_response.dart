import 'package:flutter_splash/data/entity/response/cover_photo.dart';
import 'package:flutter_splash/data/entity/response/preview_photos.dart';
import 'package:flutter_splash/data/entity/response/tag.dart';
import 'package:flutter_splash/data/entity/response/user.dart';

/// id : "KizanWcExgU"
/// title : "Wings"
/// description : null
/// published_at : "2021-08-23T12:58:11Z"
/// last_collected_at : "2021-08-24T02:23:39-04:00"
/// updated_at : "2021-08-24T02:23:39-04:00"
/// curated : false
/// featured : true
/// total_photos : 31
/// private : false
/// share_key : "bbcfeaee6683db8d56fb2c4ec3416a22"

class CollectionResponse {
  String? _id;
  String? _title;
  String? _description;
  String? _publishedAt;
  String? _lastCollectedAt;
  String? _updatedAt;
  bool? _curated;
  bool? _featured;
  int? _totalPhotos;
  bool? _private;
  String? _shareKey;
  List<Tag>? _tags;
  List<PreviewPhoto>? _previewPhotos;
  CoverPhoto? _coverPhoto;
  User? _user;
  CollectionLinks? _collectionLinks;

  CollectionLinks? get collectionLinks => _collectionLinks;

  String? get id => _id;

  String? get title => _title;

  String? get description => _description;

  String? get publishedAt => _publishedAt;

  String? get lastCollectedAt => _lastCollectedAt;

  String? get updatedAt => _updatedAt;

  bool? get curated => _curated;

  bool? get featured => _featured;

  int? get totalPhotos => _totalPhotos;

  bool? get private => _private;

  String? get shareKey => _shareKey;

  List<Tag>? get tags => _tags;

  List<PreviewPhoto>? get previewPhotos => _previewPhotos;

  CoverPhoto? get coverPhoto => _coverPhoto;

  User? get user => _user;

  CollectionResponse(
      {String? id,
      String? title,
      String? description,
      String? publishedAt,
      String? lastCollectedAt,
      String? updatedAt,
      bool? curated,
      bool? featured,
      int? totalPhotos,
      bool? private,
      String? shareKey,
      List<Tag>? tags,
      CollectionLinks? collectionLinks}) {
    _id = id;
    _title = title;
    _description = description;
    _publishedAt = publishedAt;
    _lastCollectedAt = lastCollectedAt;
    _updatedAt = updatedAt;
    _curated = curated;
    _featured = featured;
    _totalPhotos = totalPhotos;
    _private = private;
    _shareKey = shareKey;
    _tags = tags;
    _collectionLinks = collectionLinks;
  }

  CollectionResponse.fromJson(dynamic json) {
    _id = json["id"];
    _title = json["title"];
    _description = json["description"];
    _publishedAt = json["published_at"];
    _lastCollectedAt = json["last_collected_at"];
    _updatedAt = json["updated_at"];
    _curated = json["curated"];
    _featured = json["featured"];
    _totalPhotos = json["total_photos"];
    _private = json["private"];
    _shareKey = json["share_key"];
    _collectionLinks = json["links"];
    _coverPhoto = CoverPhoto.fromJson(json["cover_photo"]);
    _tags = List.generate(
        json["tags"].length, (index) => Tag.fromJson(json["tags"][index]));
    _previewPhotos = List.generate(json["tags"].length,
        (index) => PreviewPhoto.fromJson(json["preview_photos"][index]));
    _user = User.fromJson(json["user"]);
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["title"] = _title;
    map["description"] = _description;
    map["published_at"] = _publishedAt;
    map["last_collected_at"] = _lastCollectedAt;
    map["updated_at"] = _updatedAt;
    map["curated"] = _curated;
    map["featured"] = _featured;
    map["total_photos"] = _totalPhotos;
    map["private"] = _private;
    map["share_key"] = _shareKey;
    map["tags"] = _tags;
    map["cover_photo"] = _coverPhoto;
    map["preview_photos"] = _previewPhotos;
    map["links"] = _collectionLinks;
    return map;
  }
}

class CollectionLinks {
  String? _self;
  String? _html;
  String? _photos;
  String? _related;

  String? get self => _self;

  String? get html => _html;

  String? get photos => _photos;

  String? get related => _related;

  CollectionLinks(
      {String? self, String? html, String? photos, String? related}) {
    _self = self;
    _html = html;
    _photos = photos;
    _related = photos;
  }

  CollectionLinks.fromJson(dynamic json) {
    _self = json["self"];
    _html = json["html"];
    _photos = json["photos"];
    _related = json["related"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["self"] = _self;
    map["html"] = _html;
    map["photos"] = _photos;
    map["related"] = _related;
    return map;
  }

  @override
  String toString() {
    return 'TopicLinks{_self: $_self}';
  }
}
