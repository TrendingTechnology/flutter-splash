import 'package:flutter_splash/data/entity/response/profile_image.dart';
import 'package:flutter_splash/data/entity/response/social.dart';

/// id : "mA08QQzQf8Y"
/// updated_at : "2021-08-19T12:37:48-04:00"
/// username : "charlesdeluvio"
/// name : "Charles Deluvio"
/// first_name : "Charles"
/// last_name : "Deluvio"
/// twitter_username : ""
/// portfolio_url : null

class User {
  String? _id;
  String? _updatedAt;
  String? _username;
  String? _name;
  String? _firstName;
  String? _lastName;
  String? _twitterUsername;
  String? _portfolioUrl;
  int? _totalLike;
  int? _totalPhoto;
  int? _totalCollection;
  ProfileImage? _profileImage;
  Social? _social;

  String? get id => _id;

  String? get updatedAt => _updatedAt;

  String? get username => _username;

  String? get name => _name;

  String? get firstName => _firstName;

  String? get lastName => _lastName;

  String? get twitterUsername => _twitterUsername;

  int? get totalLike => _totalLike;

  int? get totalPhoto => _totalPhoto;

  int? get totalCollection => _totalCollection;

  String? get portfolioUrl => _portfolioUrl;

  ProfileImage? get profileImage => _profileImage;

  Social? get social => _social;

  User({
    String? id,
    String? updatedAt,
    String? username,
    String? name,
    String? firstName,
    String? lastName,
    String? twitterUsername,
    String? portfolioUrl,
    ProfileImage? profileImage,
    Social? social,
    int? totalPhoto,
    int? totalLike,
    int? totalCollection,
  }) {
    _id = id;
    _updatedAt = updatedAt;
    _username = username;
    _name = name;
    _firstName = firstName;
    _lastName = lastName;
    _twitterUsername = twitterUsername;
    _portfolioUrl = portfolioUrl;
    _profileImage = profileImage;
    _social = social;
    _totalPhoto = totalPhoto;
    _totalLike = totalLike;
    _totalCollection = totalCollection;
  }

  User.fromJson(dynamic json) {
    _id = json["id"];
    _updatedAt = json["updated_at"];
    _username = json["username"];
    _name = json["name"];
    _firstName = json["first_name"];
    _lastName = json["last_name"];
    _twitterUsername = json["twitter_username"];
    _portfolioUrl = json["portfolio_url"];
    _totalPhoto = json["total_photos"];
    _totalLike = json["total_likes"];
    _totalCollection = json["total_collections"];
    _profileImage = ProfileImage.fromJson(json["profile_image"]);
    _social = Social.fromJson(json["social"]);
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["updated_at"] = _updatedAt;
    map["username"] = _username;
    map["name"] = _name;
    map["first_name"] = _firstName;
    map["last_name"] = _lastName;
    map["twitter_username"] = _twitterUsername;
    map["portfolio_url"] = _portfolioUrl;
    map["profile_image"] = _profileImage;
    map["social"] = _social;
    map["total_collections"] = _totalCollection;
    map["total_likes"] = _totalLike;
    map["total_photos"] = _totalPhoto;
    return map;
  }

  @override
  String toString() {
    return 'UserResponse{_id: $_id, _profileImage: $_profileImage, _social: $_social}';
  }
}
