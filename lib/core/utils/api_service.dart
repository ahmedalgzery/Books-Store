import 'package:dio/dio.dart';

// The ApiService class for making HTTP GET requests
class ApiService {
  // Base URL for the Google Books API
  final _baseUrl = 'https://www.googleapis.com/books/v1/';

  // Dio instance used for making HTTP requests
  final Dio _dio;

  // Constructor to initialize the ApiService with a Dio instance
  ApiService(this._dio);

  // Asynchronous function to make a GET request to the API
  Future<Map<String, dynamic>> get({required String endPoint}) async {
    // Send a GET request to the specified endPoint by combining it with the base URL
    var response = await _dio.get('$_baseUrl$endPoint');

    // Return the response data as a map (dynamic) containing key-value pairs
    return response.data;
  }
}
