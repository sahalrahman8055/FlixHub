import 'package:flixhub/model/movie_info_model.dart';
import 'package:flixhub/services/base_client.dart';

import 'apiendpoint.dart';

class NewAndHotServices {
  List<MovieInfoModel> upcomingMovies = [];
  List<MovieInfoModel> moviepopular = [];

  Future fetchUpcomingMovies() async {
    try {
      final movies = await apiCall(ApiEndPoints.upcoming);
      upcomingMovies = movies.results;
    } catch (error) {
      // Handle the error here
      print('Error fetching trending movies: $error');
    }
    return upcomingMovies;
  }

  Future fetchMoviePopular() async {
    try {
      final movies = await apiCall(ApiEndPoints.moviepopular);
      moviepopular = movies.results;
    } catch (error) {
      // Handle the error here
      print('Error fetching trending movies: $error');
    }
    return moviepopular;
  }
}
