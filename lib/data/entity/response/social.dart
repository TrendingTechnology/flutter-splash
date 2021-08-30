/// instagram_username : null
/// portfolio_url : null
/// twitter_username : ""
/// paypal_email : null

class Social {
  String? _instagramUsername;
  String? _portfolioUrl;
  String? _twitterUsername;
  String? _paypalEmail;

  String? get instagramUsername => _instagramUsername;

  String? get portfolioUrl => _portfolioUrl;

  String? get twitterUsername => _twitterUsername;

  String? get paypalEmail => _paypalEmail;

  Social(
      {String? instagramUsername,
      String? portfolioUrl,
      String? twitterUsername,
      String? paypalEmail}) {
    _instagramUsername = instagramUsername;
    _portfolioUrl = portfolioUrl;
    _twitterUsername = twitterUsername;
    _paypalEmail = paypalEmail;
  }

  Social.fromJson(dynamic json) {
    _instagramUsername = json["instagram_username"];
    _portfolioUrl = json["portfolio_url"];
    _twitterUsername = json["twitter_username"];
    _paypalEmail = json["paypal_email"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["instagram_username"] = _instagramUsername;
    map["portfolio_url"] = _portfolioUrl;
    map["twitter_username"] = _twitterUsername;
    map["paypal_email"] = _paypalEmail;
    return map;
  }

  @override
  String toString() {
    return 'SocialResponse{_instagramUsername: $_instagramUsername}';
  }
}
