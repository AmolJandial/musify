import 'package:get_it/get_it.dart';
import 'package:musify/src/auth/data/datasource/spotify_datasource.dart';
import 'package:musify/src/auth/data/remote/spotify_client.dart';
import 'package:musify/src/auth/data/repo/auth_repo_impl.dart';
import 'package:musify/src/auth/domain/repo/auth_repo.dart';
import 'package:musify/src/auth/domain/usecases/get_spotify_auth.dart';
import 'package:musify/src/auth/presentation/cubit/auth_cubit.dart';
import 'package:musify/src/matches/presentation/cubit/matches_cubit.dart';
import 'package:musify/src/onboarding/presentation/cubit/on_boarding_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async{
  await _onBoardingInit();
  await _matchesInit();
  await _authInit();
}

Future<void> _onBoardingInit() async{
  sl.registerFactory(OnBoardingCubit.new);
}

Future<void> _matchesInit() async{
  final prefs = await SharedPreferences.getInstance();
  sl..registerFactory(MatchesCubit.new)
  ..registerLazySingleton(() => prefs);

}

Future<void> _authInit() async{
  sl..registerFactory(() => AuthCubit(sl()))
      ..registerLazySingleton(() => GetSpotifyAuthUsecase(sl()))
      ..registerLazySingleton<AuthRepo>(() => AuthRepoImpl(sl()))
      ..registerLazySingleton<SpotifyDatasource>(() => SpotifyDatasourceImpl(sl()))
      ..registerLazySingleton(SpotifyClient.new);
}
