import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

import 'package:flutter/material.dart';
import 'package:pick_champ/core/const/app_env.dart';
import 'package:pick_champ/core/const/enums/api_request_method_enum.dart';
import 'package:pick_champ/core/const/enums/end_point_enum.dart';

class NetworkManager {
  NetworkManager._() {
    _dio = Dio(
      BaseOptions(
        baseUrl: AppEnv.baseUrlDev,
        connectTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
        validateStatus: (status) {
          return status != null && status < 500;
        },
      ),
    );
  }

  static late final Dio _dio;

  static final instance = NetworkManager._();

  Future<Map<String, dynamic>?> baseRequest(
    EndPointEnums endPoint, {
    Map<String, dynamic>? data,
  }) async {
    try {
      final response = await _dio.request<Map<String, dynamic>>(
        '${AppEnv.baseUrlDev}${endPoint.value}',
        data: data,
        options: Options(method: APIRequestMethod.post as String),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        return response.data;
      } else {
        // debugPrint(LocaleKeys.error.tr() + response.data.toString());
        return null;
      }
    } on DioException catch (e) {
      debugPrint('Dio error: ${e.message}');
      if (e.response != null) {
        debugPrint('Dio error response data: ${e.response?.data}');
      }
      return null;
    }
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
      options: Options(responseType: responseType),
      data: body,
      onSendProgress: (int sent, int total) {
        if (onSendProgress != null) {
          onSendProgress(sent, total);
        }
      },
    );
  }
}
