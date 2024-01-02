import 'package:flixhub/helper/colors/colors.dart';
import 'package:flixhub/constants/constance.dart';
import 'package:flixhub/view/home/widgets/custom_button_widget.dart';
import 'package:flixhub/view/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        kHeight,
        Text(
          "Friends",
          style: TextStyle(fontSize: 20),
        ),
        kHeight,
        Text(
          "Tall Girl 2",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        kHeight,
        Text(
          "This hit sitcom the merry misadventures of six \n25-something pals asthey navigate the pitfalls of \nwork,life and love in 1990s Manhattan",
          style: TextStyle(color: kGreyColor),
        ),
        kHeight50,
        VideoWidget(imageurl:  newAndHotTempImage),
        kHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtonWidget(
              icon: Icons.share,
              title: "Share",
              iconSize: 25,
              textSize: 16,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.add,
              title: "Add",
              iconSize: 25,
              textSize: 16,
            ),
            kWidth,
            CustomButtonWidget(
              icon: Icons.play_arrow,
              title: "Play",
              iconSize: 25,
              textSize: 16,
            ),
            kWidth,
          ],
        )
      ],
    );
  }
}
