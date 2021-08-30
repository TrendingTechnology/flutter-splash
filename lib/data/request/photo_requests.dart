import 'package:dio/dio.dart';
import 'package:flutter_splash/data/dio_factory.dart';
import 'package:flutter_splash/data/entity/response/photo_response.dart';

class PhotoRequest {
  final Dio _dio = DioFactory().dio;

  /// # List photos
  ///
  /// ## Get a single page from the list of all photos.
  ///
  /// [page]	Page number to retrieve. (Optional; default: 1).
  ///
  /// [perPage]	Number of items per page. (Optional; default: 10).
  ///
  /// [orderBy]	How to sort the photos. Optional. (Valid values: latest, oldest, popular; default: latest).
  Future<List<PhotoResponse>> getPhotos(
      {int page: 1, int perPage: 10, String orderBy: "latest"}) async {
    Response<List<dynamic>> response = await _dio.get("/photos");
    List<PhotoResponse> photos = List.generate(response.data!.length,
        (index) => PhotoResponse.fromJson(response.data![index]));
    print(photos);
    return photos;
  }

  /// # Get a photo
  ///
  /// ## Retrieve a single photo.
  ///
  /// [id]	The photo’s ID. Required.
  ///
  Future<dynamic>? getPhoto(String id) async {
    Response<dynamic> response = await _dio.get("/photos/$id");
    PhotoResponse photoResponse = PhotoResponse.fromJson(response.data);
    print(photoResponse);
    return response.data;
  }

  /// # Get a photo’s statistics
  ///
  /// ## Retrieve total number of downloads, views and likes of a single photo, as well as the historical breakdown of these stats in a specific timeframe (default is 30 days).
  ///
  /// [id]	The public id of the photo. Required.
  ///
  /// [resolution]	The frequency of the stats. (Optional; default: “days”).
  ///
  /// [quantity]	The amount of for each stat. (Optional; default: 30).
  ///
  Future<dynamic>? getPhotoStatistics(
    String id, {
    String? resolution: "days",
    int? quantity: 30,
  }) async {
    // TODO make type of statics
    Response<dynamic> response = await _dio.get("/photos/$id/statistics");
    PhotoResponse photoResponse = PhotoResponse.fromJson(response.data);
    print(photoResponse);
    return response.data;
  }

  /// # Like a photo
  ///
  /// ## Like a photo on behalf of the logged-in user. This requires the write_likes scope.
  ///
  /// [id]	The public id of the photo. Required.
  Future<dynamic>? likePhoto(String id) async {
    Response<dynamic> response = await _dio.post("/photos/$id/like");
    PhotoResponse photoResponse = PhotoResponse.fromJson(response.data);
    print(photoResponse);
    return response.data;
  }

  /// # Like a photo
  ///
  /// ## Like a photo on behalf of the logged-in user. This requires the write_likes scope.
  ///
  /// [id]	The public id of the photo. Required.
  Future<dynamic>? unlikePhoto(String id) async {
    Response<dynamic> response = await _dio.delete("/photos/$id/like");
    PhotoResponse photoResponse = PhotoResponse.fromJson(response.data);
    print(photoResponse);
    return response.data;
  }
}
