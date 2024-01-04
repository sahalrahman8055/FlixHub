import 'package:flixhub/model/movie_info_model.dart';
import 'package:flixhub/services/apiendpoint.dart';
import 'package:flixhub/services/base_client.dart';

class TVTopRateServices {
  List<MovieInfoModel> tvtoprate = [];

  Future fetchTVTopRateMovies() async {
    try {
      final movies = await apiCall(ApiEndPoints.tvtoprate);
      tvtoprate = movies.results;
    } catch (error) {
      // Handle the error here
      print('Error fetching trending movies: $error');
    }
    return tvtoprate;
  }
}
