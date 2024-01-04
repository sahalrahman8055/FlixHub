import 'package:bordered_text/bordered_text.dart';
import 'package:flixhub/constants/constants.dart';
import 'package:flixhub/helper/colors.dart';
import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index, required this.imageUrl});
  final int index;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: kRadius10,
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(imageUrl))),
            ),
          ],
        ),
        Positioned(
            left: 13,
            bottom: -20,
            child: BorderedText(
                strokeColor: KWhiteColor,
                strokeWidth: 9.0,
                child: Text(
                  "${index + 1}",
                  style: const TextStyle(
                    fontSize: 140,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                  ),
                ))),
      ],
    );
  }
}
