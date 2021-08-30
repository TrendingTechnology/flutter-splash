import 'package:dio/dio.dart';
import 'package:flutter_splash/data/dio_factory.dart';
import 'package:flutter_splash/data/entity/response/stat_response.dart';

class PhotoRequest {
  final Dio _dio = DioFactory().dio;

  /// # Totals
  ///
  /// ## Get a list of counts for all of Unsplash.
  Future<TotalStat> getTotalStat(String id) async {
    Response<dynamic> response = await _dio.get("/stats/total");
    TotalStat totalStat = TotalStat.fromJson(response.data);
    print(totalStat);
    return totalStat;
  }

  /// # Month
  ///
  /// ## Get the overall Unsplash stats for the past 30 days.
  Future<MonthStat> getMonthStat(String id) async {
    Response<dynamic> response = await _dio.get("/stats/month");
    MonthStat monthStat = MonthStat.fromJson(response.data);
    print(monthStat);
    return monthStat;
  }
}
