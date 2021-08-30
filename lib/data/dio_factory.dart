import 'package:dio/dio.dart';
import 'package:flutter_splash/constant.dart';

class DioFactory {
  static final DioFactory _singleton = DioFactory._internal(
    Dio(
      BaseOptions(
          baseUrl: BaseURL,
          headers: {
            "Accept-Version": "v1",
            "Authorization": "Client-ID $AccessKey"
          },
          contentType: "application/json"),
    ),
  );
  late final Dio dio;

  void printHashCode() => print("DioFactory ${this.hashCode}");

  factory DioFactory() {
    return _singleton;
  }

  DioFactory._internal(this.dio);
}
