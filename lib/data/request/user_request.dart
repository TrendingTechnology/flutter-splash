import 'package:dio/dio.dart';
import 'package:flutter_splash/data/dio_factory.dart';
import 'package:flutter_splash/data/entity/response/photo_response.dart';

class SearchRequest {
  final Dio _dio = DioFactory().dio;

  /// # Get a user’s public profile
  ///
  /// ## Retrieve public details on a given user.
  ///
  /// endpoint => GET /users/:username
  ///
  /// Parameters
  ///
  /// [username]	The user’s username. Required.
  Future<dynamic> getUser(String username) async {
    Response response = await _dio.get("/users/$username");
    // TODO build response type

    return null;
  }

  /// # Get a user’s portfolio link
  ///
  /// ## Retrieve a single user’s portfolio link.
  ///
  /// endpoint => GET /users/:username/portfolio
  ///
  /// Parameters
  ///
  /// [username]	The user’s username. Required.
  Future<dynamic> getUserPortfolio(String username) async {
    Response response = await _dio.get("/users/$username/portfolio");
    // TODO build response type

    return null;
  }

  /// # Get a user’s portfolio link
  ///
  /// ## Retrieve a single user’s portfolio link.
  ///
  /// endpoint => GET /users/:username/photos
  ///
  /// Parameters
  ///
  /// [username]	The user’s username. Required.
  /// [page]	Page number to retrieve. (Optional; default: 1).
  ///
  /// [per_page]	Number of items per page. (Optional; default: 10).
  ///
  /// [order_by]	How to sort the photos. Optional. (Valid values: latest, oldest, popular, views, downloads; default: latest).
  ///
  /// [stats]	Show the stats for each user’s photo. (Optional; default: false).
  ///
  /// [resolution]	The frequency of the stats. (Optional; default: “days”).
  ///
  /// [quantity]	The amount of for each stat. (Optional; default: 30).
  ///
  /// [orientation]	Filter by photo orientation. Optional. (Valid values: landscape, portrait, squarish).
  Future<List<PhotoResponse>> getUserPhotos(String username) async {
    Response<List<dynamic>> response =
        await _dio.get("/users/$username/photos");
    List<PhotoResponse> photos = List.generate(response.data!.length,
        (index) => PhotoResponse.fromJson(response.data![index]));
    print(photos);
    return photos;
  }

  /// # Get a user’s portfolio link
  ///
  /// ## Retrieve a single user’s portfolio link.
  ///
  /// endpoint => GET /users/:username/photos
  ///
  /// Parameters
  ///
  /// [username]	The user’s username. Required.
  ///
  /// [page]	Page number to retrieve. (Optional; default: 1).
  ///
  /// [per_page]	Number of items per page. (Optional; default: 10).
  ///
  /// [order_by]	How to sort the photos. Optional. (Valid values: latest, oldest, popular, views, downloads; default: latest).
  ///
  /// [orientation]	Filter by photo orientation. Optional. (Valid values: landscape, portrait, squarish).

  Future<List<PhotoResponse>> getUserLikes(String username) async {
    Response<List<dynamic>> response = await _dio.get("/users/$username/likes");
    List<PhotoResponse> photos = List.generate(response.data!.length,
        (index) => PhotoResponse.fromJson(response.data![index]));
    print(photos);
    return photos;
  }
}
