import 'package:dartz/dartz.dart';
import 'package:musify/core/errors/failure.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
