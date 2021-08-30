import 'package:flutter_splash/data/entity/response/cover_photo.dart';

class TopicResponse {
  String? _id;
  String? _slug;
  String? _title;
  String? _description;
  String? _publishedAt;
  String? _updatedAt;
  String? _startsAt;
  String? _endsAt;
  bool? _featured;
  int? _totalPhotos;
  TopicLinks? _topicLinks;
  CoverPhoto? _topicCoverPhoto;

  String? get id => _id;

  String? get slug => _slug;

  String? get title => _title;

  String? get description => _description;

  String? get publishedAt => _publishedAt;

  String? get updatedAt => _updatedAt;

  String? get startsAt => _startsAt;

  String? get endsAt => _endsAt;

  bool? get featured => _featured;

  int? get totalPhotos => _totalPhotos;

  TopicLinks? get topicLinks => _topicLinks;

  CoverPhoto? get topicCoverPhoto => _topicCoverPhoto;

  TopicResponse(
      {String? id,
      String? slug,
      String? title,
      String? description,
      String? publishedAt,
      String? updatedAt,
      String? startsAt,
      String? endsAt,
      bool? featured,
      int? totalPhotos,
      TopicLinks? topicLinks,
      CoverPhoto? topicCoverPhoto}) {
    _id = id;
    _slug = slug;
    _title = title;
    _description = description;
    _publishedAt = publishedAt;
    _updatedAt = updatedAt;
    _startsAt = startsAt;
    _endsAt = endsAt;
    _featured = featured;
    _totalPhotos = totalPhotos;
    _topicLinks = topicLinks;
    _topicCoverPhoto = topicCoverPhoto;
  }

  TopicResponse.fromJson(dynamic json) {
    _id = json["id"];
    _slug = json["slug"];
    _title = json["title"];
    _description = json["description"];
    _publishedAt = json["published_at"];
    _updatedAt = json["updated_at"];
    _startsAt = json["starts_at"];
    _endsAt = json["ends_at"];
    _featured = json["featured"];
    _totalPhotos = json["total_photos"];
    _topicLinks = TopicLinks.fromJson(json["links"]);
    _topicCoverPhoto = CoverPhoto.fromJson(json["cover_photo"]);
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["slug"] = _slug;
    map["title"] = _title;
    map["description"] = _description;
    map["published_at"] = _publishedAt;
    map["updated_at"] = _updatedAt;
    map["starts_at"] = _startsAt;
    map["ends_at"] = _endsAt;
    map["featured"] = _featured;
    map["total_photos"] = _totalPhotos;
    map["topic_links"] = _topicLinks;
    return map;
  }

  @override
  String toString() {
    return 'TopicResponse{_id: $_id, _slug: $_slug, _title: $_title , links :$_topicLinks , _cover : $_topicCoverPhoto} \n';
  }
}

class TopicLinks {
  String? _self;
  String? _html;
  String? _photos;

  String? get self => _self;

  String? get html => _html;

  String? get photos => _photos;

  TopicLinks({String? self, String? html, String? photos}) {
    _self = self;
    _html = html;
    _photos = photos;
  }

  TopicLinks.fromJson(dynamic json) {
    _self = json["self"];
    _html = json["html"];
    _photos = json["photos"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["self"] = _self;
    map["html"] = _html;
    map["photos"] = _photos;
    return map;
  }

  @override
  String toString() {
    return 'TopicLinks{_self: $_self}';
  }
}
