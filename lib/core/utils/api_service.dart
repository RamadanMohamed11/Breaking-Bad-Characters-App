import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = "https://thronesapi.com/api/v2/";
  final Dio _dio;

  ApiService(this._dio);

  Future<List<Map<String, dynamic>>> get({required String endPoint}) async {
    final response = await _dio.get(_baseUrl + endPoint);
    return response.data;
  }
}
