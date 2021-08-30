import 'package:dio/dio.dart';
import 'package:flutter_splash/data/entity/response/photo_response.dart';
import 'package:flutter_splash/data/entity/response/topic_response.dart';

import '../dio_factory.dart';

class TopicRequest {
  final Dio _dio = DioFactory().dio;

  /// # List topics
  ///
  /// ## Get a single page from the list of all topics.
  ///
  /// endpoint => GET /topics
  ///
  /// Parameters
  ///
  /// [ids]	Limit to only matching topic ids or slugs. (Optional; Comma separated string).
  ///
  /// [page]	Page number to retrieve. (Optional; default: 1).
  ///
  /// [perPage]	Number of items per page. (Optional; default: 10).
  ///
  /// [orderBy]	How to sort the topics. (Optional; Valid values: featured, latest, oldest, position; default: position).
  ///
  Future<List<TopicResponse>> getListOfTopics(
      {String ids: ",",
      int page: 1,
      int perPage: 10,
      String orderBy: "position"}) async {
    Response<List<dynamic>> response = await _dio.get("/topics");
    List<TopicResponse> topics = List.generate(response.data!.length,
        (index) => TopicResponse.fromJson(response.data![index]));
    print(topics);
    return topics;
  }

  /// # Get a topic
  ///
  /// ## Retrieve a single topic.
  ///
  /// endpoint => GET /topics/:id_or_slug
  ///
  /// Parameters
  ///
  /// [id_or_slug]	The topics’s ID or slug. Required.
  Future<TopicResponse> getTopic(String id) async {
    Response response = await _dio.get("/topics/$id");
    TopicResponse topic = TopicResponse.fromJson(response.data);
    print(topic);
    return topic;
  }

  /// # Get a topic’s photos
  ///
  /// ## Retrieve a topic’s photos.
  ///
  /// endpoint => GET /topics/:id_or_slug
  ///
  /// Parameters
  ///
  /// [id]	The topics’s ID or slug. Required.
  ///
  /// [page]	Page number to retrieve. (Optional; default: 1).
  ///
  /// [perPage]	Number of items per page. (Optional; default: 10).
  ///
  /// [orientation]	Filter by photo orientation. (Optional; Valid values: landscape, portrait, squarish).
  ///
  /// [orderBy]	How to sort the photos. (Optional; Valid values: latest, oldest, popular; default: latest).
  Future<List<PhotoResponse>> getTopicPhotos(String id,
      {int page: 1,
      int perPage: 10,
      String orderBy: "position",
      String orientation: ""}) async {
    Response<List<dynamic>> response = await _dio.get("/topics/$id/photos");
    List<PhotoResponse> photos = List.generate(response.data!.length,
        (index) => PhotoResponse.fromJson(response.data![index]));
    print(photos.first);
    return photos;
  }
}
