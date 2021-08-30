/// small : "https://images.unsplash.com/profile-1515694660956-9133b2f53e3b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32"
/// medium : "https://images.unsplash.com/profile-1515694660956-9133b2f53e3b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64"
/// large : "https://images.unsplash.com/profile-1515694660956-9133b2f53e3b?ixlib=rb-1.2.1&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128"

class ProfileImage {
  String? _small;
  String? _medium;
  String? _large;

  String? get small => _small;

  String? get medium => _medium;

  String? get large => _large;

  ProfileImage({String? small, String? medium, String? large}) {
    _small = small;
    _medium = medium;
    _large = large;
  }

  ProfileImage.fromJson(dynamic json) {
    _small = json["small"];
    _medium = json["medium"];
    _large = json["large"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["small"] = _small;
    map["medium"] = _medium;
    map["large"] = _large;
    return map;
  }

  @override
  String toString() {
    return 'ProfileImage{_small: $_small}';
  }
}
