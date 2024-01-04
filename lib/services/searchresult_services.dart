import 'package:flixhub/model/movie_info_model.dart';
import 'package:flixhub/services/apiendpoint.dart';
import 'package:flixhub/services/base_client.dart';

class SearchResultServices {
  List<MovieInfoModel> searchResultMovies = [];

  Future fetchSearchResultMovies(String apiQuery) async {
    try {
      final movies = await apiCall(ApiEndPoints.searchmovie + apiQuery);
      searchResultMovies = movies.results;
    } catch (error) {
      print("Error fetching trendng movies:$error");
    }
    return searchResultMovies;
  }
}
