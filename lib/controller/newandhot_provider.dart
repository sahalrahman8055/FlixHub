import 'package:flixhub/model/movie_info_model.dart';
import 'package:flixhub/services/newandhot_services.dart';
import 'package:flutter/material.dart';

class NewAndHotProvider extends ChangeNotifier {
  List<MovieInfoModel> upcomingMovies = [];
  List<MovieInfoModel> moviepopular = [];
  bool isLoading = true;

  Future fetchComingSoonMovies() async {
    upcomingMovies = await NewAndHotServices().fetchUpcomingMovies();
    isLoading = false;
    notifyListeners();
  }

  Future fetchEveryoneWatchingMovies() async {
    moviepopular = await NewAndHotServices().fetchMoviePopular();
    isLoading = false;
    notifyListeners();
  }
}
