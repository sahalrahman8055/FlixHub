import 'package:flixhub/constants/constance.dart';
import 'package:flixhub/view/widgets/main_card.dart';
import 'package:flixhub/view/widgets/main_title.dart';
import 'package:flutter/material.dart';

class MainTitleCard extends StatelessWidget {
  final String title;
  const MainTitleCard({
    super.key, required this.title,
    
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MainTitle(title: title),
        kHeight,
        LimitedBox(
          maxHeight: 200,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(10, (index) => const MainCard())),
        )
      ],
    );
  }
}
