import 'package:equatable/equatable.dart';

class AuthCodeException extends Equatable implements Exception {

  const AuthCodeException({
    required this.message,
    required this.code,
  });

  final String message;
  final int code;

  @override
  List<Object> get props => [message, code];
}
