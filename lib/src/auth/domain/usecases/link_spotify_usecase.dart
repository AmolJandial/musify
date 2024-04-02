import 'package:musify/core/usecases/usecases.dart';
import 'package:musify/core/util/typedef.dart';
import 'package:musify/src/auth/domain/repo/auth_repo.dart';

class GetSpotifyAuthUsecase extends UsecaseWithoutParams<void>{

  const GetSpotifyAuthUsecase(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<bool> call() async => _repo.getSpotifyAuth();

}
