/// self : "https://api.unsplash.com/photos/jVYnBn3M9R0"
/// html : "https://unsplash.com/photos/jVYnBn3M9R0"
/// download : "https://unsplash.com/photos/jVYnBn3M9R0/download"
/// download_location : "https://api.unsplash.com/photos/jVYnBn3M9R0/download?ixid=MnwyNDkzMjl8MHwxfHRvcGljfHx4alBSNGhsa0JHQXx8fHx8Mnx8MTYyOTM5MTgxOA"

class PhotoLink {
  String? _self;
  String? _html;
  String? _download;
  String? _downloadLocation;

  String? get self => _self;

  String? get html => _html;

  String? get download => _download;

  String? get downloadLocation => _downloadLocation;

  PhotoLink(
      {String? self,
      String? html,
      String? download,
      String? downloadLocation}) {
    _self = self;
    _html = html;
    _download = download;
    _downloadLocation = downloadLocation;
  }

  PhotoLink.fromJson(dynamic json) {
    _self = json["self"];
    _html = json["html"];
    _download = json["download"];
    _downloadLocation = json["download_location"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["self"] = _self;
    map["html"] = _html;
    map["download"] = _download;
    map["download_location"] = _downloadLocation;
    return map;
  }

  @override
  String toString() {
    return 'PhotoLink{_self: $_self}';
  }
}
