import 'package:flixhub/model/movie_info_model.dart';

class TMDBApiResponseModel {
  List<MovieInfoModel> results = [];

  TMDBApiResponseModel.fromjson(Map data) {
    results = (data['results'] as List)
        .map((item) => MovieInfoModel.fromjson(item))
        // ignore: unnecessary_null_comparison
        .where((movieInfo) => movieInfo != null)
        .toList();
  }

  Map<String, dynamic> tojson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['results'] =
        results.map((MovieInfoModel movieInfo) => movieInfo.tojson()).toList();
    return data;
  }
}
