

import 'package:flixhub/model/movie_info_model.dart';
import 'package:flixhub/services/apiendpoint.dart';
import 'package:flixhub/services/base_client.dart';

class HomeBackgroundCardServices{
  String? imageUrl;


   setImage()async{
    dynamic result=await apiCall(ApiEndPoints.moviepopular);
  
        if(result.results.isNotEmpty){
      MovieInfoModel movieInfo =result.results[3];
      imageUrl =
            "https://image.tmdb.org/t/p/w500${movieInfo.posterPath}?api_key=94ae45958b3ce0c4dae900d33e94b557";

           return imageUrl; 
    }

  
  
  }
}