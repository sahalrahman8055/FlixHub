

import 'package:flixhub/model/movie_info_model.dart';
import 'package:flixhub/services/apiendpoint.dart';
import 'package:flixhub/services/base_client.dart';

class searchIDLServices {
  List<MovieInfoModel> trendingMovies = [];

  Future fetchSearchMovies() async {
    try {
      final movies = await apiCall(ApiEndPoints.trendingMovies);
      trendingMovies = movies.results;
    } catch (error) {
      // Handle the error here
      print('Error fetching trending movies: $error');
    }
    return trendingMovies;
  }
}
