import 'package:flixhub/services/download_services.dart';
import 'package:flutter/material.dart';


class TrendingMovieInitializeProvider extends ChangeNotifier{
  List imageList=[];
  bool isLoading=true;

   void initializeImages() async {
 imageList=await DownloadsServices().getTrendingMovies();
         isLoading=false;
         notifyListeners();
    }
  }
