import 'package:flixhub/constants/constants.dart';
import 'package:flixhub/controller/tvtoprate_provider.dart';
import 'package:flixhub/model/movie_info_model.dart';
import 'package:flixhub/view/home/widgets/number_card.dart';
import 'package:flixhub/view/widgets/main_title.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class NumberTitleCard extends StatefulWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  State<NumberTitleCard> createState() => _NumberTitleCardState();
}

class _NumberTitleCardState extends State<NumberTitleCard> {
  @override
  void initState() {
    super.initState();
    Provider.of<TvTopRateProvider>(context, listen: false)
        .fetchTvTopRateMovies();
  }

  @override
  Widget build(BuildContext context) {
    List imageList = [];
    return Consumer<TvTopRateProvider>(
      builder: (context, provider, child) {
        if (provider.isLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (provider.tvTopRate.isEmpty) {
          return const Text("NO data available");
        }

        imageList = provider.tvTopRate.map((MovieInfoModel movieInfo) {
          if (movieInfo.posterPath == null) {
            return null;
          }
          String imageUrl =
              'https://image.tmdb.org/t/p/w500${movieInfo.posterPath}?api_key=b2dee3b855c4ea705ff5dda3c0201768';
          return imageUrl;
        }).toList();

        if (imageList.isEmpty) {
          return const Center(child: ListTile(title: Text('No Movies Found')));
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MainTitle(title: "  Top 10 TV Shows in india Today"),
            kHeight,
            LimitedBox(
              maxHeight: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                    10,
                    (index) => NumberCard(
                          index: index,
                          imageUrl: imageList[index],
                        )),
              ),
            )
          ],
        );
      },
    );
  }
}
