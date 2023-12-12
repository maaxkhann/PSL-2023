import 'package:flutter/material.dart';
import 'package:psl_2023/models/team_model.dart';
import 'package:psl_2023/screens/utility/data_api.dart';
import 'package:psl_2023/screens/widgets/background_widget.dart';
import 'package:psl_2023/screens/widgets/custom_appBar.dart';
import 'package:psl_2023/screens/widgets/team_widget.dart';
class TeamScreen extends StatelessWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        titleText: 'TEAMS',
      ),
      
      body: BackgroundWidget(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder<List<TeamModel>>(
          future: DataApi.getAllTeams(context),
            builder: (BuildContext context, AsyncSnapshot snapshot) {

            if(snapshot.hasData) {
              List<TeamModel> teams = snapshot.data;

              return ListView.builder(
                  itemCount: teams.length,
                  itemBuilder: (context, index) {

                    return TeamWidget(team: teams[index],);
                  });
            }else {
              return const Center(child: CircularProgressIndicator());
            }
        }),
      ),
    );
  }
}
