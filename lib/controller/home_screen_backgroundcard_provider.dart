import 'package:flixhub/services/home_backgroundcard_services.dart';
import 'package:flutter/material.dart';

class HomeBackgroundCardImageProvider with ChangeNotifier {
  String? imageUrl;

  void initializeBackgroundCard() async {
    imageUrl = await HomeBackgroundCardServices().setImage();
    notifyListeners();
  }
}
