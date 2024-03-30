import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:musify/src/auth/domain/usecases/get_spotify_auth.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._getSpotifyAuthUsecase) : super(AuthInitial());

  final GetSpotifyAuthUsecase _getSpotifyAuthUsecase;

  Future<void> startSpotifyAuth() async{
    await _getSpotifyAuthUsecase();
  }
}
