import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod_architecture/core/enums/environment_enum.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class NetworkManager {
  NetworkManager(this.ref) {
    _dio = Dio(
      BaseOptions(
        baseUrl: dotenv.env[EnvironmentEnum.baseUrl.defination] ?? '',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': '${dotenv.env[EnvironmentEnum.accessToken.defination]}',
          'accept': 'application/json',
        },
      ),
    );
  }

  final Ref ref;
  late Dio _dio;

  Future<Response<dynamic>> get(
    String apiUrl, {
    ResponseType responseType = ResponseType.json,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _dio.get(
      '$apiUrl/day?language=en-US',
      queryParameters: queryParameters,
      options: Options(
        responseType: responseType,
      ),
    );
  }

  Future<Response<dynamic>> post(
    String apiUrl, {
    Map? body,
    ResponseType responseType = ResponseType.json,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _dio.post(
      apiUrl,
      queryParameters: queryParameters,
      options: Options(
        responseType: responseType,
      ),
      data: body != null ? json.encode(body) : null,
    );
  }

  Future<Response> formDataPost(
    String apiUrl, {
    FormData? body,
    ResponseType responseType = ResponseType.json,
    Map<String, dynamic>? queryParameters,
    void Function(int, int)? onSendProgress,
  }) async {
    return _dio.post(
      apiUrl,
      queryParameters: queryParameters,
      options: Options(
        responseType: responseType,
      ),
      data: body,
      onSendProgress: (int sent, int total) {
        if (onSendProgress != null) {
          onSendProgress(sent, total);
        }
      },
    );
  }

  Future<Response> formDataPatch(
    String apiUrl, {
    FormData? body,
    ResponseType responseType = ResponseType.json,
    Map<String, dynamic>? queryParameters,
    Function(int, int)? onSendProgress,
  }) async {
    return _dio.patch(
      apiUrl,
      queryParameters: queryParameters,
      options: Options(
        responseType: responseType,
      ),
      data: body,
      onSendProgress: (int sent, int total) {
        if (onSendProgress != null) {
          onSendProgress(sent, total);
        }
      },
    );
  }

  Future<Response> patch(
    String apiUrl, {
    Map? body,
    ResponseType responseType = ResponseType.json,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _dio.patch(
      apiUrl,
      queryParameters: queryParameters,
      options: Options(
        responseType: responseType,
      ),
      data: json.encode(body),
    );
  }

  Future<Response> delete(
    String apiUrl, {
    Map? body,
    ResponseType responseType = ResponseType.json,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _dio.delete(
      apiUrl,
      queryParameters: queryParameters,
      options: Options(
        responseType: responseType,
      ),
      data: body != null ? json.encode(body) : null,
    );
  }

  Future<String?> getFileSize(String url) async {
    final response = await get(url);
    return response.headers['content-length']?.first;
  }

/*  Future<bool> _requestWritePermission() async {
    await Permission.storage.request();
    return await Permission.storage.request().isGranted;
  }*/
}

final networkManagerProvider = Provider<NetworkManager>(NetworkManager.new);
