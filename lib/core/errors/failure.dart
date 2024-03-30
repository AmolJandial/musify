import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {

  const Failure({
    required this.message,
    required this.statusCode,
  });

  final String message;
  final int statusCode;

  String get errorMessage => '$statusCode, error = $message';

  @override
  List<Object> get props => [message, statusCode];
}

class AuthCodeFailure extends Failure{
  const AuthCodeFailure({required super.message, required super.statusCode});

}
