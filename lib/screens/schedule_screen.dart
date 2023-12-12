import 'package:flutter/material.dart';
import 'package:psl_2023/models/schedule_model.dart';
import 'package:psl_2023/screens/utility/data_api.dart';
import 'package:psl_2023/screens/widgets/background_widget.dart';
import 'package:psl_2023/screens/widgets/custom_appBar.dart';
import 'package:psl_2023/screens/widgets/schedule_widget.dart';
class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        titleText: 'SCHEDULE',
      ),
      body: BackgroundWidget(
        padding: const EdgeInsets.all(10),
      child: FutureBuilder<List<ScheduleModel>>(
        future: DataApi.getAllMatches(context),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(snapshot.hasData) {
            List<ScheduleModel> matches = snapshot.data;
            return ListView.builder(
              itemCount: matches.length,
                itemBuilder: (context, index) {
                return ScheduleWidget(match: matches[index]);
            });

          }else {
            return const Center(child: CircularProgressIndicator());
          }
      }),
      ),
    );
  }
}
