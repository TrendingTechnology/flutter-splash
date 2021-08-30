/// total_photos : 3106868
/// photo_downloads : 3529179808
/// photos : 3106868
/// downloads : 3529179808
/// views : 663263215179
/// photographers : 261667
/// pixels : 51944959779243
/// downloads_per_second : 43
/// views_per_second : 6954
/// developers : 220421
/// applications : 14185
/// requests : 134457099414

class TotalStat {
  int? _totalPhotos;
  int? _photoDownloads;
  int? _photos;
  int? _downloads;
  int? _views;
  int? _photographers;
  int? _pixels;
  int? _downloadsPerSecond;
  int? _viewsPerSecond;
  int? _developers;
  int? _applications;
  int? _requests;

  int? get totalPhotos => _totalPhotos;

  int? get photoDownloads => _photoDownloads;

  int? get photos => _photos;

  int? get downloads => _downloads;

  int? get views => _views;

  int? get photographers => _photographers;

  int? get pixels => _pixels;

  int? get downloadsPerSecond => _downloadsPerSecond;

  int? get viewsPerSecond => _viewsPerSecond;

  int? get developers => _developers;

  int? get applications => _applications;

  int? get requests => _requests;

  TotalStat(
      {int? totalPhotos,
      int? photoDownloads,
      int? photos,
      int? downloads,
      int? views,
      int? photographers,
      int? pixels,
      int? downloadsPerSecond,
      int? viewsPerSecond,
      int? developers,
      int? applications,
      int? requests}) {
    _totalPhotos = totalPhotos;
    _photoDownloads = photoDownloads;
    _photos = photos;
    _downloads = downloads;
    _views = views;
    _photographers = photographers;
    _pixels = pixels;
    _downloadsPerSecond = downloadsPerSecond;
    _viewsPerSecond = viewsPerSecond;
    _developers = developers;
    _applications = applications;
    _requests = requests;
  }

  TotalStat.fromJson(dynamic json) {
    _totalPhotos = json["total_photos"];
    _photoDownloads = json["photo_downloads"];
    _photos = json["photos"];
    _downloads = json["downloads"];
    _views = json["views"];
    _photographers = json["photographers"];
    _pixels = json["pixels"];
    _downloadsPerSecond = json["downloads_per_second"];
    _viewsPerSecond = json["views_per_second"];
    _developers = json["developers"];
    _applications = json["applications"];
    _requests = json["requests"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["total_photos"] = _totalPhotos;
    map["photo_downloads"] = _photoDownloads;
    map["photos"] = _photos;
    map["downloads"] = _downloads;
    map["views"] = _views;
    map["photographers"] = _photographers;
    map["pixels"] = _pixels;
    map["downloads_per_second"] = _downloadsPerSecond;
    map["views_per_second"] = _viewsPerSecond;
    map["developers"] = _developers;
    map["applications"] = _applications;
    map["requests"] = _requests;
    return map;
  }
}

/// downloads : 111940949
/// views : 18026886710
/// new_photos : 99816
/// new_photographers : 2721
/// new_pixels : 1827566664421
/// new_developers : 6115
/// new_applications : 430
/// new_requests : 1856487562

class MonthStat {
  int? _downloads;
  int? _views;
  int? _newPhotos;
  int? _newPhotographers;
  int? _newPixels;
  int? _newDevelopers;
  int? _newApplications;
  int? _newRequests;

  int? get downloads => _downloads;

  int? get views => _views;

  int? get newPhotos => _newPhotos;

  int? get newPhotographers => _newPhotographers;

  int? get newPixels => _newPixels;

  int? get newDevelopers => _newDevelopers;

  int? get newApplications => _newApplications;

  int? get newRequests => _newRequests;

  MonthStat(
      {int? downloads,
      int? views,
      int? newPhotos,
      int? newPhotographers,
      int? newPixels,
      int? newDevelopers,
      int? newApplications,
      int? newRequests}) {
    _downloads = downloads;
    _views = views;
    _newPhotos = newPhotos;
    _newPhotographers = newPhotographers;
    _newPixels = newPixels;
    _newDevelopers = newDevelopers;
    _newApplications = newApplications;
    _newRequests = newRequests;
  }

  MonthStat.fromJson(dynamic json) {
    _downloads = json["downloads"];
    _views = json["views"];
    _newPhotos = json["new_photos"];
    _newPhotographers = json["new_photographers"];
    _newPixels = json["new_pixels"];
    _newDevelopers = json["new_developers"];
    _newApplications = json["new_applications"];
    _newRequests = json["new_requests"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["downloads"] = _downloads;
    map["views"] = _views;
    map["new_photos"] = _newPhotos;
    map["new_photographers"] = _newPhotographers;
    map["new_pixels"] = _newPixels;
    map["new_developers"] = _newDevelopers;
    map["new_applications"] = _newApplications;
    map["new_requests"] = _newRequests;
    return map;
  }
}
