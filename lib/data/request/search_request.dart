import 'package:dio/dio.dart';
import 'package:flutter_splash/data/dio_factory.dart';
import 'package:flutter_splash/data/entity/response/collection_response.dart';
import 'package:flutter_splash/data/entity/response/photo_response.dart';
import 'package:flutter_splash/data/entity/response/user.dart';

class SearchRequest {
  final Dio _dio = DioFactory().dio;

  /// # Search photos
  ///
  /// ## Get a single page of photo results for a query.
  ///
  /// [query]	Search terms. Required.
  ///
  /// [page]	Page number to retrieve. (Optional; default: 1).
  ///
  /// [perPage]	Number of items per page. (Optional; default: 10).
  ///
  /// [orderBy]	How to sort the photos. Optional. (Valid values: latest, oldest, popular; default: latest).
  ///
  /// [collections]	Collection ID(‘s) to narrow search. Optional. If multiple, comma-separated.
  ///
  /// [content_filter]	Limit results by content safety. (Optional; default: low). Valid values are low and high.
  ///
  /// [color]	Filter results by color. Optional. Valid values are: black_and_white, black, white, yellow, orange, red, purple, magenta, green, teal, and blue.
  ///
  /// [orientation]	Filter by photo orientation. Optional. (Valid values: landscape, portrait, squarish)
  Future<List<PhotoResponse>> searchPhoto(String query,
      {int page: 1, int perPage: 10, String orderBy: "latest"}) async {
    Response<List<dynamic>> response = await _dio.get("/search/photos");
    List<PhotoResponse> photos = List.generate(response.data!.length,
        (index) => PhotoResponse.fromJson(response.data![index]));
    print(photos);
    return photos;
  }

  /// # Search collections
  ///
  /// ## Get a single page of collection results for a query.
  ///
  /// [query]	Search terms.  Required.
  ///
  /// [page]	Page number to retrieve. (Optional; default: 1).
  ///
  /// [perPage]	Number of items per page. (Optional; default: 10).

  Future<List<CollectionResponse>> searchCollection(String query,
      {int page: 1, int perPage: 10, String orderBy: "latest"}) async {
    Response<List<dynamic>> response = await _dio.get("/search/collections");
    List<CollectionResponse> collections = List.generate(response.data!.length,
        (index) => CollectionResponse.fromJson(response.data![index]));
    print(collections);
    return collections;
  }

  /// # Search users
  ///
  /// ## Get a single page of user results for a query.
  ///
  /// [query]	Search terms. Required.
  ///
  /// [page]	Page number to retrieve. (Optional; default: 1).
  ///
  /// [perPage]	Number of items per page. (Optional; default: 10).

  Future<List<User>?> searchUsers(String query,
      {int page: 1, int perPage: 10, String orderBy: "latest"}) async {
    Response<List<dynamic>> response = await _dio.get("/search/users");
    List<User> users = List.generate(
        response.data!.length, (index) => User.fromJson(response.data![index]));
    print(users);
    return users;
  }
}
