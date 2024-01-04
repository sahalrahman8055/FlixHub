import 'package:flixhub/constants/constants.dart';
import 'package:flixhub/controller/internetconnectivity_provider.dart';
import 'package:flixhub/controller/searchresult_provider.dart';
import 'package:flixhub/model/movie_info_model.dart';
import 'package:flixhub/services/api_key.dart';
import 'package:flixhub/view/search/widgets/title.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class SearchResultWidget extends StatefulWidget {
  final String apiQuery;
  const SearchResultWidget({super.key, required this.apiQuery});

  @override
  State<SearchResultWidget> createState() => _SearchResultWidgetState();
}

class _SearchResultWidgetState extends State<SearchResultWidget> {
  @override
  void initState() {
    super.initState();
    Provider.of<InternetConnectivityProvider>(context, listen: false)
        .getInternetConnectivity(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Movies & TV"),
        kHeight,
        Expanded(child: Consumer<SearchResultProvider>(
          builder: (context, provider, child) {
            Provider.of<SearchResultProvider>(context, listen: false)
                .fetchSearchResult(widget.apiQuery);
            return GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 1 / 1.4,
              children:
                  List.generate(provider.searchResultMovies.length, (index) {
                MovieInfoModel movieInfo = provider.searchResultMovies[index];
                if (movieInfo.posterPath != null) {
                  String imageUrl =
                      'https://image.tmdb.org/t/p/w500${movieInfo.posterPath}?api_key=$apikey';
                  return MainCard(imageUrl: imageUrl);
                }
                return const SizedBox();
              }),
            );
          },
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  final String imageUrl;
  MainCard({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(imageUrl), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(7)),
    );
  }
}
