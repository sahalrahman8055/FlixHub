import 'package:flixhub/helper/colors/colors.dart';
import 'package:flixhub/constants/constance.dart';
import 'package:flixhub/view/home/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(kMainImage),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtonWidget(icon: Icons.add, title: "My List"),
                _PlayButton(),
                const CustomButtonWidget(
                    icon: Icons.info_outline, title: "Info"),
              ],
            ),
          ),
        )
      ],
    );
  }
    TextButton _PlayButton() {
    return TextButton.icon(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kWhiteColor)),
        onPressed: () {},
        icon: Icon(
          Icons.play_arrow,
          size: 25,
          color: kBlackColor,
        ),
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            "Play",
            style: TextStyle(color: kBlackColor, fontSize: 20),
          ),
        ));
  }
}
