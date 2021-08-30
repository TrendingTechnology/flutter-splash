/// raw : "https://images.unsplash.com/photo-1531171596281-8b5d26917d8b?ixid=MnwyNDkzMjl8MHwxfHRvcGljfHx4alBSNGhsa0JHQXx8fHx8Mnx8MTYyOTM5MTgxOA&ixlib=rb-1.2.1"
/// full : "https://images.unsplash.com/photo-1531171596281-8b5d26917d8b?crop=entropy&cs=srgb&fm=jpg&ixid=MnwyNDkzMjl8MHwxfHRvcGljfHx4alBSNGhsa0JHQXx8fHx8Mnx8MTYyOTM5MTgxOA&ixlib=rb-1.2.1&q=85"
/// regular : "https://images.unsplash.com/photo-1531171596281-8b5d26917d8b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNDkzMjl8MHwxfHRvcGljfHx4alBSNGhsa0JHQXx8fHx8Mnx8MTYyOTM5MTgxOA&ixlib=rb-1.2.1&q=80&w=1080"
/// small : "https://images.unsplash.com/photo-1531171596281-8b5d26917d8b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNDkzMjl8MHwxfHRvcGljfHx4alBSNGhsa0JHQXx8fHx8Mnx8MTYyOTM5MTgxOA&ixlib=rb-1.2.1&q=80&w=400"
/// thumb : "https://images.unsplash.com/photo-1531171596281-8b5d26917d8b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwyNDkzMjl8MHwxfHRvcGljfHx4alBSNGhsa0JHQXx8fHx8Mnx8MTYyOTM5MTgxOA&ixlib=rb-1.2.1&q=80&w=200"

class PhotoUrl {
  String? _raw;
  String? _full;
  String? _regular;
  String? _small;
  String? _thumb;

  String? get raw => _raw;

  String? get full => _full;

  String? get regular => _regular;

  String? get small => _small;

  String? get thumb => _thumb;

  PhotoUrl(
      {String? raw,
      String? full,
      String? regular,
      String? small,
      String? thumb}) {
    _raw = raw;
    _full = full;
    _regular = regular;
    _small = small;
    _thumb = thumb;
  }

  PhotoUrl.fromJson(dynamic json) {
    _raw = json["raw"];
    _full = json["full"];
    _regular = json["regular"];
    _small = json["small"];
    _thumb = json["thumb"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["raw"] = _raw;
    map["full"] = _full;
    map["regular"] = _regular;
    map["small"] = _small;
    map["thumb"] = _thumb;
    return map;
  }

  @override
  String toString() {
    return 'PhotoUrl{_small: $_small}';
  }
}
