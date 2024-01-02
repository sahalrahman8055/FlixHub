import 'package:flixhub/helper/colors/colors.dart';
import 'package:flixhub/constants/constance.dart';
import 'package:flixhub/view/home/widgets/background_card.dart';
import 'package:flixhub/view/home/widgets/number_title_card.dart';
import 'package:flixhub/view/widgets/main_title_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollnotifier,
        builder: (BuildContext context, index, _) {
          return SafeArea(
            child: NotificationListener<UserScrollNotification>(
              onNotification: (Notification) {
                final ScrollDirection direction = Notification.direction;
                if (direction == ScrollDirection.reverse) {
                  scrollnotifier.value = false;
                } else if (direction == ScrollDirection.forward) {
                  scrollnotifier.value = true;
                }
                return true;
              },
              child: Stack(
                children: [
                  ListView(
                    children: const [
                      BackgroundCard(),
                      MainTitleCard(title: "Releas in the past year"),
                      kHeight,
                      MainTitleCard(title: "Treanding Now"),
                      kHeight,
                      NumberTitleCard(),
                      kHeight,
                      MainTitleCard(title: "Tense Dramas"),
                      kHeight,
                      MainTitleCard(title: "South indian Cinema "),
                    ],
                  ),
                  scrollnotifier.value == true
                      ? AnimatedContainer(
                          duration: Duration(milliseconds: 1000),
                          width: double.infinity,
                          height: 90,
                          color: Colors.black.withOpacity(0.3),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 10),
                                    child: Image.network(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2EUYBjzzP3A4nKjUMsfqGqGiOTwugGA9bGQ&usqp=CAU",
                                      width: 45,
                                      height: 45,
                                    ),
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    color: kWhiteColor,
                                    size: 30,
                                  ),
                                  kWidth,
                                  Container(
                                    width: 30,
                                    height: 30,
                                    color: Colors.blue,
                                  ),
                                  kWidth,
                                ],
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "TV Shows",
                                    style: kHomeTitleText,
                                  ),
                                  Text("Movies", style: kHomeTitleText),
                                  Text("Categories", style: kHomeTitleText),
                                ],
                              )
                            ],
                          ),
                        )
                      : kHeight,
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
