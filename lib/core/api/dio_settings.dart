import 'dart:developer';

import 'package:alquran_beta/core/constants/app_constants.dart';
import 'package:dio/dio.dart';

class DioSettings {
  late BaseOptions _dioBaseOptions;

  void setBaseOptions({String? lang}) {
    _dioBaseOptions = BaseOptions(
      baseUrl: AppConstants.baseUrl,
      connectTimeout: const Duration(milliseconds: 35000),
      receiveTimeout: const Duration(milliseconds: 33000),
      followRedirects: false,
      validateStatus: (status) => status != null && status <= 500,
    );
  }

  Dio get dio {
    final dio = Dio(_dioBaseOptions);
    dio.interceptors.add(LogInterceptor(
      responseBody: true,
      requestBody: true,
      request: true,
      requestHeader: true,
      logPrint: (object) => log(object.toString()),
    ));
    return dio;
  }
}
