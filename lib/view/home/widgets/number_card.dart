import 'package:bordered_text/bordered_text.dart';
import 'package:flixhub/helper/colors/colors.dart';
import 'package:flixhub/constants/constance.dart';
import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              width: 130,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: kredius10,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/qjhahNLSZ705B5JP92YMEYPocPz.jpg"),
                ),
              ),
            ),
          ],
        ),
        Positioned(
            left: 12,
            bottom: 1,
            child: BorderedText(
              strokeColor: Colors.white,
              strokeWidth: 10,
              child: Text(
                "${index + 1} ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.none,
                    decorationColor: kBlackColor,
                    fontSize: 100),
              ),
            ))
      ],
    );
  }
}
