import 'dart:developer' as developer;
import 'dart:math';

import 'package:injectable/injectable.dart';

import '../../config/flavor_config.dart';
import '../models/episode.dart';
import '../models/query.dart';
import '../models/tvshow_details.dart';
import '../models/tvshow_result.dart';
import '../models/tvshow_seasons_details.dart';
import 'api_service.dart';

@lazySingleton
class RandomService {
  RandomService({
    required ApiService apiService,
  }) : _apiService = apiService;
  final ApiService _apiService;

  Future<TvshowResult> randomEpisode(
      TvshowDetails tvshowDetails, String language) async {
    final Query query = Query(
      apiKey: FlavorConfig.instance.values.apiKey,
      language: language,
    );
    final int randomSeason =
        _getRandomNumber(tvshowDetails.numberOfSeasons, true);
    final TvshowSeasonsDetails _seasonsDetails =
        await _apiService.getDetailsTvSeasons(
      query,
      tvshowDetails.id,
      randomSeason,
    );
    final Episode episode = _seasonsDetails.episodes.elementAt(
      _getRandomNumber(_seasonsDetails.episodes.length, false),
    );
    final TvshowResult tvshowResult = TvshowResult(
      tvshowDetails: tvshowDetails,
      randomSeason: episode.seasonNumber,
      randomEpisode: episode.episodeNumber,
      episodeName: episode.name,
      episodeDescription: episode.overview,
    );
    return tvshowResult;
  }

  /// If [total] start with 1, add + 1 to result.
  /// Else is length of list, get normal random
  int _getRandomNumber(int total, bool isSeason) {
    final Random random = Random();
    final int randomNumber = random.nextInt(total);
    developer.log(
      'Random ${isSeason ? 'season' : 'episode'} nº: ${randomNumber + 1}',
    );
    return isSeason ? randomNumber + 1 : randomNumber;
  }
}
