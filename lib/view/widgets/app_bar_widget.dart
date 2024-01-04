import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
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
    );
  }
}
