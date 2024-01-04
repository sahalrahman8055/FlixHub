import 'package:flixhub/controller/home_screen_backgroundcard_provider.dart';
import 'package:flixhub/view/home/widgets/button_widget.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class BackgroundCard extends StatefulWidget {
  const BackgroundCard({
    super.key,
  });

  @override
  State<BackgroundCard> createState() => _BackgroundCardState();
}

class _BackgroundCardState extends State<BackgroundCard> {
  @override
  void initState() {
    super.initState();
    Provider.of<HomeBackgroundCardImageProvider>(context, listen: false)
        .initializeBackgroundCard();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    var imageProvider = Provider.of<HomeBackgroundCardImageProvider>(context);
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.7,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageProvider.imageUrl ?? "image not found"),
            ),
          ),
        ),
        const Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButtonWidget(
                icon: Icons.add,
                title: "My List",
              ),
              PlayButton(),
              CustomButtonWidget(icon: Icons.info, title: "info")
            ],
          ),
        )
      ],
    );
  }
}
