import 'package:flixhub/model/movie_info_model.dart';
import 'package:flixhub/services/tvtoprete_services.dart';
import 'package:flutter/cupertino.dart';


class TvTopRateProvider extends ChangeNotifier{

 List<MovieInfoModel> tvTopRate=[];
  bool isLoading=true;

Future fetchTvTopRateMovies()async{
tvTopRate=await TVTopRateServices().fetchTVTopRateMovies();
isLoading=false;
notifyListeners();

} 

}