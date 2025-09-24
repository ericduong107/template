import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  Future<Map<String, dynamic>> login(String username, String password) async {
    // Dummy API call
    await Future.delayed(Duration(seconds: 1));
    return {'username': username, 'email': '$username@email.com'};
  }
}
