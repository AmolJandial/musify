import 'package:musify/src/auth/data/remote/spotify_client.dart';

abstract class SpotifyDatasource{
  const SpotifyDatasource(this._spotifyClient);

  final SpotifyClient _spotifyClient;

  Future<void> getSpotifyAuth();
}

class SpotifyDatasourceImpl extends SpotifyDatasource{
  SpotifyDatasourceImpl(super.spotifyClient);

  @override
  Future<void> getSpotifyAuth() async{

      await _spotifyClient.getSpotifyAuth();

  }


}
