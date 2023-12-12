import 'package:flutter/material.dart';
import 'package:psl_2023/models/venue_model.dart';
import 'package:psl_2023/screens/utility/data_api.dart';
import 'package:psl_2023/screens/widgets/background_widget.dart';
import 'package:psl_2023/screens/widgets/custom_appBar.dart';
import 'package:psl_2023/screens/widgets/venue_widget.dart';

class VenueScreen extends StatelessWidget {
  const VenueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          titleText: 'VENUES',
        ),
        body: BackgroundWidget(
            padding: EdgeInsets.all(10),
            child: FutureBuilder<List<VenueModel>>(
              future: DataApi.getAllVenues(context),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if(snapshot.hasData) {
                  List<VenueModel> venues = snapshot.data;
                  return ListView.builder(
                    itemCount: venues.length,
                      itemBuilder: (context, index) {
                      return VenueWidget(venue: venues[index]);
                  });
                }else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            )
        )
    );
  }
}
