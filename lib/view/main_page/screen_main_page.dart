
import 'package:flixhub/view/downloads/screen_downloads.dart';
import 'package:flixhub/view/fast_laugh/screen_fast_laugh.dart';
import 'package:flixhub/view/home/screen_home.dart';
import 'package:flixhub/view/main_page/widgets/bottom_nav.dart';
import 'package:flixhub/view/new_and_hot/screen_new_and_hot.dart';
import 'package:flixhub/view/search/screen_search.dart';
import 'package:flutter/material.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});

  final _pages = [
    ScreenHome(), 
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, value, _) {
            return _pages[value];
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
