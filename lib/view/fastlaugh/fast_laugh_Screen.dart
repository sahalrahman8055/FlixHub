import 'package:flixhub/view/fastlaugh/widgets/video_list_item.dart';
import 'package:flutter/material.dart';

class FastLaughScreen extends StatelessWidget {
  const FastLaughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        scrollDirection: Axis.vertical,
        children: List.generate(10, (index) {
          return VideoListItem(
            index: index,
          );
        }),
      )),
    );
  }
}
