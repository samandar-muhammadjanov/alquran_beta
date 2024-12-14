

import 'package:alquran_beta/core/exceptions/failures.dart';

class CustomException extends Failure implements Exception {
  final String message;
  final String code;

  const CustomException({required this.message, required this.code})
      : super(
          errorMessage: message,
          errorKey: code,
        );

  @override
  String toString() => '$message.\nCODE: $code';
}
