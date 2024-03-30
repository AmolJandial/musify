import 'package:dartz/dartz.dart';
import 'package:musify/core/errors/exceptions.dart';
import 'package:musify/core/errors/failure.dart';
import 'package:musify/core/util/typedef.dart';
import 'package:musify/src/auth/data/datasource/spotify_datasource.dart';
import 'package:musify/src/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  const AuthRepoImpl(this._spotifyDatasource);

  final SpotifyDatasource _spotifyDatasource;

  @override
  ResultFuture<void> getSpotifyAuth() async {
    try{
      await _spotifyDatasource.getSpotifyAuth();
      return const Right(null);
    }on Exception{
      return const Left(AuthCodeFailure(message: '', statusCode: 111));
    }

  }
}
