
import 'package:flixhub/controller/bottomnavbar_provider.dart';
import 'package:flixhub/controller/home_screen_backgroundcard_provider.dart';
import 'package:flixhub/controller/home_scrollprovider.dart';
import 'package:flixhub/controller/internetconnectivity_provider.dart';
import 'package:flixhub/controller/newandhot_provider.dart';
import 'package:flixhub/controller/search_query_provider.dart';
import 'package:flixhub/controller/searchidl_provider.dart';
import 'package:flixhub/controller/searchresult_provider.dart';
import 'package:flixhub/controller/trendingmovie_intialize_provider.dart';
import 'package:flixhub/controller/tvtoprate_provider.dart';
import 'package:flixhub/controller/videoplayer_provider.dart';
import 'package:flixhub/helpers/colors/colors.dart';
import 'package:flixhub/view/mainpage/screen_main_page.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SearchQueryProvider(),
        ),
        ChangeNotifierProvider(create: (context) => VideoPlayerProvider()),
        ChangeNotifierProvider(
            create: (context) => HomeBackgroundCardImageProvider()),
        ChangeNotifierProvider(create: (context) => HomeScrollProvider()),
        ChangeNotifierProvider(create: (context) => SelectedIndexProvider()),
        ChangeNotifierProvider(
            create: (context) => TrendingMovieInitializeProvider()),
        ChangeNotifierProvider(create: (context) => SearchIDLProvider()),
        ChangeNotifierProvider(create: (context) => NewAndHotProvider()),
        ChangeNotifierProvider(create: (context) => SearchResultProvider()),
        ChangeNotifierProvider(
            create: (context) => InternetConnectivityProvider()),
        ChangeNotifierProvider(create: (context) => TvTopRateProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
            fontFamily: GoogleFonts.montserrat().fontFamily,
            scaffoldBackgroundColor: backgroundColor,
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
                .copyWith(background: Colors.black),
            textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.white),
              bodyMedium: TextStyle(color: Colors.white),
            )),
        home: ScreenMainPage(),
      ),
    );
  }
}
