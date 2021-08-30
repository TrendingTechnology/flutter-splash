import 'package:dio/dio.dart';
import 'package:flutter_splash/data/dio_factory.dart';
import 'package:flutter_splash/data/entity/response/collection_response.dart';
import 'package:flutter_splash/data/entity/response/photo_response.dart';

class CollectionRequest {
  final Dio _dio = DioFactory().dio;

  /// # List collections
  ///
  /// ## Get a single page from the list of all collections.
  ///
  /// [page]	Page number to retrieve. (Optional; default: 1).
  ///
  /// [perPage]	Number of items per page. (Optional; default: 10).
  ///
  Future<List<CollectionResponse>> getCollections(
      {int page: 1, int perPage: 10}) async {
    Response<List<dynamic>> response = await _dio.get("/collections");
    List<CollectionResponse> collections = List.generate(response.data!.length,
        (index) => CollectionResponse.fromJson(response.data![index]));
    print(collections);
    return collections;
  }

  /// # Get a collection
  ///
  /// ## Retrieve a single collection. To view a user’s private collections, the read_collections scope is required.
  ///
  /// [id]	The photo’s ID. Required.
  ///
  Future<CollectionResponse> getCollection(String id) async {
    Response<dynamic> response = await _dio.get("/collections/$id");
    CollectionResponse collectionResponse =
        CollectionResponse.fromJson(response.data);
    print(collectionResponse);
    return collectionResponse;
  }

  /// # Get a collection’s photos
  ///
  /// ## Retrieve a collection’s photos.
  ///
  /// [page]	Page number to retrieve. (Optional; default: 1).
  ///
  /// [perPage]	Number of items per page. (Optional; default: 10).
  ///
  /// [id]	The photo’s ID. Required.
  ///
  /// [orientation]	Filter by photo orientation. Optional. (Valid values: landscape, portrait, squarish)
  Future<List<PhotoResponse>> getCollectionPhotos(String id,
      {int page: 1, int perPage: 10, String orientation: ""}) async {
    Response<List<dynamic>> response =
        await _dio.get("/collections/$id/photos");
    List<PhotoResponse> photos = List.generate(response.data!.length,
        (index) => PhotoResponse.fromJson(response.data![index]));
    print(photos);
    return photos;
  }

  /// # List a collection’s related collections
  ///
  /// ## Retrieve a list of collections related to this one.
  ///
  /// [id]	The photo’s ID. Required.
  ///
  Future<CollectionResponse> getCollectionRelated(String id) async {
    Response<List<dynamic>> response =
        await _dio.get("/collections/$id/related");
    CollectionResponse collectionResponse =
        CollectionResponse.fromJson(response.data);
    print(collectionResponse);
    return collectionResponse;
  }
}
