import 'package:flixhub/constants/constants.dart';
import 'package:flixhub/helper/colors.dart';
import 'package:flixhub/view/newandhot/widgets/coming_soon_widget.dart';
import 'package:flixhub/view/newandhot/widgets/everyones_watching_widget.dart';
import 'package:flutter/material.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: const Size.fromHeight(90),
              child: AppBar(
                title: const Text(
                  "New& Hot",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                actions: [
                  const Icon(
                    Icons.cast,
                    color: Colors.white,
                    size: 30,
                  ),
                  kWidth,
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: Image.asset("assets/avatar.png"),
                  ),
                  kWidth
                ],
                bottom: TabBar(
                    unselectedLabelColor: KWhiteColor,
                    labelColor: kBlackColor,
                    isScrollable: true,
                    labelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    indicator: BoxDecoration(
                      color: KWhiteColor,
                      borderRadius: kRadius30,
                    ),
                    tabs: const [
                      Tab(
                        text: "🍿 Coming Soon",
                      ),
                      Tab(
                        text: "👀 Everyone's Watching",
                      )
                    ]),
              )),
          body: TabBarView(
            children: [_buildComingSoon(context), _BuildEveryonesWatching()],
          )),
    );
  }
}

Widget _BuildEveryonesWatching() {
  return const EveryonesWatchingWidget();
}

Widget _buildComingSoon(BuildContext context) {
  return const ComingSoonWidget();
}
