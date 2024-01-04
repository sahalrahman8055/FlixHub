import 'package:flixhub/controller/internetconnectivity_provider.dart';
import 'package:flixhub/controller/newandhot_provider.dart';
import 'package:flixhub/view/newandhot/widgets/coming_soon_info_card.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class ComingSoonWidget extends StatefulWidget {
  const ComingSoonWidget({
    super.key,
  });

  @override
  State<ComingSoonWidget> createState() => _ComingSoonWidgetState();
}

class _ComingSoonWidgetState extends State<ComingSoonWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<NewAndHotProvider>(context,listen: false).fetchComingSoonMovies();
    Provider.of<InternetConnectivityProvider>(context,listen: false).getInternetConnectivity(context);
  }
  @override
  Widget build(BuildContext context) {
     
    return Consumer<NewAndHotProvider>(
      builder: (context, comingSoonProvider, child) {
        if (comingSoonProvider.isLoading) {
          return const Center(child: CircularProgressIndicator(),);
          
        }else if(comingSoonProvider.upcomingMovies.isEmpty){
          return const Text("No data available");
        }
        return ListView.builder(
            itemCount:comingSoonProvider.upcomingMovies.length,
            itemBuilder:(
              
              context, index) => ComingSoonInfoCard(movieInfo: comingSoonProvider.upcomingMovies[index],),);
      },
      // child: FutureBuilder(
      //   future:apiCall(ApiEndPoints.upcoming),
      //    builder: (context, snapshot) {
      //      if(!snapshot.hasData){
      //       const Center(
      //         child: Column(
      //           children: [
      //              CircularProgressIndicator(color: Colors.blue,),
      //                       Text('Please wait'),
    
      //           ],
      //         ),
      //       );
      //      }
    
      //      if(snapshot.data==null){
      //       return const Text('No data found');
    
      //      }
    
      //      return 
      //    },),
    );
  }
}

