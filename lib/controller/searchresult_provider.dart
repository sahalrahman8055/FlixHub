import 'package:flixhub/model/movie_info_model.dart';
import 'package:flixhub/services/searchresult_services.dart';
import 'package:flutter/material.dart';

class SearchResultProvider extends ChangeNotifier {
  List<MovieInfoModel> searchResultMovies = [];

  Future fetchSearchResult(String apiQuery) async {
    searchResultMovies =
        await SearchResultServices().fetchSearchResultMovies(apiQuery);
    notifyListeners();
  }
}
