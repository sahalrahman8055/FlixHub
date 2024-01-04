
import 'package:flixhub/constants/constants.dart';
import 'package:flixhub/controller/home_scrollprovider.dart';
import 'package:flixhub/controller/internetconnectivity_provider.dart';
import 'package:flixhub/services/apiendpoint.dart';
import 'package:flixhub/view/home/widgets/background_card.dart';
import 'package:flixhub/view/home/widgets/number_title_card.dart';
import 'package:flixhub/view/widgets/main_title_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 

 @override
  void initState() {
    super.initState();
    Provider.of<InternetConnectivityProvider>(context,listen: false).getInternetConnectivity(context);
  }

 

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<HomeScrollProvider>(
          builder: (context,scrollProvider, child) {
            return  NotificationListener<UserScrollNotification>(
            onNotification: (Notification) {
              final ScrollDirection direction = Notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollProvider.setIsScrolling(false);
              } else if (direction == ScrollDirection.forward) {
                 scrollProvider.setIsScrolling(true);
              }
              return true;
            },
            
            child: Stack(
              children: [
                 
              
                ListView(
                  children: const[
                      BackgroundCard(),
                       KHeight,
                    NumberTitleCard(),
                    KHeight,
                    MainTitleCard(
                      title: "New Releases",
                      apiUrl: ApiEndPoints.moviepopular,
                    ),
                    KHeight,
                    MainTitleCard(
                      title: "Trending Now",
                      apiUrl: ApiEndPoints.trendingMovies,
                    ),
                    KHeight,
                    
                    
                    MainTitleCard(
                      title: "Popular Shows",
                      apiUrl: ApiEndPoints.tvpopular,
                    ),
                    KHeight,
                    MainTitleCard(
                      title: "Upcoming",
                      apiUrl: ApiEndPoints.upcoming,
                    )
                  ],
                ),
                   scrollProvider.isScrolling == true
                    ? AnimatedContainer(
                         
                        duration: const Duration(milliseconds: 100),
                        width: double.infinity,
                        height: 80,
                        
                        color: Colors.black.withOpacity(0.6),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Netflix_2015_N_logo.svg/640px-Netflix_2015_N_logo.svg.png",
                                  width: 40,
                                  height: 40,
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                KWidth,
                                SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Image.asset("assets/avatar.png"),
                                ),
                                KWidth
                              ],
                            ),
                            KHeight,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "TV Shows",
                                  style: kHomeTitleText,
                                ),
                                Text("Movies", style: kHomeTitleText),
                                Text("Categories", style: kHomeTitleText)
                              ],
                            ),
                          ],
                        ),
                      )
                    : KHeight,
                
              ],
            ),
          );
          },
         
        ));
  }
}
