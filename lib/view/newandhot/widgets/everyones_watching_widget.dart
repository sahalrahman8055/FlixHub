import 'package:flixhub/controller/internetconnectivity_provider.dart';
import 'package:flixhub/controller/newandhot_provider.dart';
import 'package:flixhub/view/newandhot/widgets/evryones_watching_infocard.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';


class EveryonesWatchingWidget extends StatefulWidget {
  const EveryonesWatchingWidget({
    super.key,
  });

  @override
  State<EveryonesWatchingWidget> createState() => _EveryonesWatchingWidgetState();
}

class _EveryonesWatchingWidgetState extends State<EveryonesWatchingWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<NewAndHotProvider>(context,listen: false).fetchEveryoneWatchingMovies();
    Provider.of<InternetConnectivityProvider>(context,listen: false).getInternetConnectivity(context);
  }
  @override
  Widget build(BuildContext context) { 
    return  Consumer<NewAndHotProvider>(
      builder: (context,provider, child) {
        if (provider.isLoading) {
          return const Center(child: CircularProgressIndicator(),);
        }else if(provider.moviepopular.isEmpty){
          return const Text("No data available");
        }
        return ListView.builder(
            shrinkWrap: true,
            itemCount:provider.moviepopular.length,
            itemBuilder:(context, index) => 
            EveryonesWatchingInfoCard(movieInfo:provider.moviepopular[index],),);
      },
    );
  }
}