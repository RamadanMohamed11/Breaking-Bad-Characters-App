import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl = "https://rickandmortyapi.com/api/";
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    final response = await _dio.get(_baseUrl + endPoint);
    return response.data;
  }
}
