import 'package:flixhub/helper/colors/colors.dart';
import 'package:flixhub/constants/constance.dart';
import 'package:flixhub/view/home/widgets/custom_button_widget.dart';
import 'package:flixhub/view/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        const SizedBox(
          width: 50,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "FEB",
                style: TextStyle(
                  fontSize: 18,
                  color: kGreyColor,
                ),
              ),
              Text(
                "11",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(imageurl: newAndHotTempImage2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tall Girl 2",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      CustomButtonWidget(
                        icon: Icons.music_off,
                        title: "Remind Me",
                        iconSize: 20,
                        textSize: 16,
                      ),
                      kWidth,
                      CustomButtonWidget(
                        icon: Icons.info_outline,
                        title: "Info",
                        iconSize: 20,
                        textSize: 12,
                      ),
                      kWidth,
                    ],
                  ),
                ],
              ),
              kHeight,
              Text("Coming on Friday"),
              kHeight,
              Text(
                "Tall Girl 2",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              kHeight,
              Text(
                "Landing the lead in the school musical is a \ndream come true for Jodi, until the pressure \nsend her confidence-- and her relationship --\ninto a tailspin",
                style: TextStyle(color: kGreyColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
