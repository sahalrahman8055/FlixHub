import 'package:flixhub/constants/constants.dart';
import 'package:flixhub/helpers/colors/colors.dart';
import 'package:flixhub/model/movie_info_model.dart';
import 'package:flixhub/view/home/widgets/button_widget.dart';
import 'package:flixhub/view/widgets/video_widget.dart';
import 'package:flutter/material.dart';


class EveryonesWatchingInfoCard extends StatelessWidget {
  const EveryonesWatchingInfoCard({super.key,required this.movieInfo});
 final MovieInfoModel movieInfo;
  @override
  Widget build(BuildContext context) {
     String imageUrl =
        'https://image.tmdb.org/t/p/w500${movieInfo.posterPath}?api_key=b2dee3b855c4ea705ff5dda3c0201768';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        KHeight,
         Text(
                  movieInfo.originalTitle ?? "No Title Found ",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                KHeight,
              Text(
                    movieInfo.overview,
                       style: const TextStyle(
                       color: kGreyColor
                  ),
                  ),
                  KHeight50,
                  VideoWidget(videoImage: imageUrl),
                  KHeight,
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                        CustomButtonWidget(
                          icon: Icons.share,
                          title: "Share",
                          iconSize: 25,
                          textSize: 16,
                        ),
                        KWidth,

                          CustomButtonWidget(
                          icon: Icons.add,
                          title: "My List",
                          iconSize: 25,
                          textSize: 16,
                        ),
                         KWidth,
                          CustomButtonWidget(
                          icon: Icons.play_arrow,
                          title: "Play",
                          iconSize: 25,
                          textSize: 15,
                        ),
                        KWidth
                    ],
                  )
      ],
    );
  }
}