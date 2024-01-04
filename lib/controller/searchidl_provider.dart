import 'package:flixhub/model/movie_info_model.dart';
import 'package:flixhub/services/searchidl_services.dart';
import 'package:flutter/material.dart';


class SearchIDLProvider extends ChangeNotifier{
  List<MovieInfoModel> trendingMovies=[];
  bool isLoading=true;

Future fetchSearchIDLMovies()async{
trendingMovies=await searchIDLServices().fetchSearchMovies();
isLoading=false;
notifyListeners();

} 

}