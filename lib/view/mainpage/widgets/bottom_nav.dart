import 'package:flixhub/controller/bottomnavbar_provider.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class BottomNavigationWidgets extends StatelessWidget {
  const BottomNavigationWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SelectedIndexProvider>(
      builder: (context, value, child) {
        return BottomNavigationBar(
            backgroundColor: Colors.black,
            currentIndex: value.selectedIndex,
            onTap: (index) {
              value.setIndex(index);
            },
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.collections), label: "New &Hot"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_emotions), label: "Fast Laughs"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download), label: "Downloads"),
            ]);
      },
    );
  }
}
