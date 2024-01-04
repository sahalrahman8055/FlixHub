import 'dart:convert';
import 'package:flixhub/model/movie_info_model.dart';
import 'package:flixhub/model/tmdb_api_response.dart';
import 'package:flixhub/services/apiendpoint.dart';
import 'package:http/http.dart' as http;

class FetchMovieServices {
  Future<List<String>> getTrendingMoviesImages() async {
    try {
      List<String> imageList = [];
      final response = await http.get(Uri.parse(ApiEndPoints.trendingMovies));
      if (response.statusCode == 200) {
        Map<String, dynamic> data =
            jsonDecode(response.body) as Map<String, dynamic>;
        TMDBApiResponseModel tmdbApiResponse =
            TMDBApiResponseModel.fromjson(data);

        for (MovieInfoModel movieInfo in tmdbApiResponse.results) {
          if (movieInfo.posterPath != null) {
            imageList.add(
                'https://image.tmdb.org/t/p/w500${movieInfo.posterPath}?api_key=94ae45958b3ce0c4dae900d33e94b557');
          }
        }
        return imageList;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
