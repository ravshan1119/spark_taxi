import 'package:spark_taxi/src/data/datasources/remote/api_service.dart';

import '../../../domain/models/universal_data.dart';

class ApiRepository {
  ApiRepository({required this.apiService});

  final ApiService apiService;

  Future<UniversalData> getData() => apiService.getData();
}
