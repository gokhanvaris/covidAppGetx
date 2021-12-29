import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class BaseInterceptor extends Interceptor {
  InterceptorsWrapper baseInterceptor() {
    return InterceptorsWrapper(
      onRequest: (options, handler) {
        return handler.next(options);
      },
      onError: (e, handler) {
        if (e.requestOptions.data != null) {
          debugPrint("Data ${e.requestOptions.data}");
        }
        return handler.next(e);
      },
      onResponse: (e, handler) {
        if (e.requestOptions.data != null) {
          debugPrint(e.statusCode.toString());
          return handler.next(e);
        }
      },
    );
  }
}
