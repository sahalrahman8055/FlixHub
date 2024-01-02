import 'package:flixhub/constants/constance.dart';
import 'package:flixhub/view/search/widgets/title.dart';
import 'package:flixhub/view/widgets/main_card.dart';
import 'package:flutter/material.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/rWg4Jk7NwVEz2BtU1aKKDoDJPeB.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextTitle(title: "Movie & Tv",),
        kHeight,
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 1 / 1.5,
          children: List.generate(20, (index) {
            return const MainCard();
          }),
        ))
      ],
    );
  }
}


