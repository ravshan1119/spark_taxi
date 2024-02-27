import 'package:dio/dio.dart';
import 'package:spark_taxi/src/domain/models/get_data_model.dart';

import '../../../domain/models/universal_data.dart';

class ApiService {
  final _dio = Dio(
    BaseOptions(
      baseUrl: "https://fakestoreapi.com/",
      headers: {},
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
      sendTimeout: const Duration(seconds: 3),
    ),
  );

  Future<UniversalData> getData() async {
    Response response;
    try {
      response = await _dio.get("/products");
      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        return UniversalData(
          data: (response.data as List?)
                  ?.map((e) => GetDataModel.fromJson(e))
                  .toList() ??
              [],
        );
      }
      return UniversalData(error: "other error!");
    } catch (e) {
      return UniversalData(error: e.toString());
    }
  }
}
