import 'package:musify/core/util/typedef.dart';

abstract class AuthRepo{

  const AuthRepo();

  ResultFuture<void> getSpotifyAuth();

}
